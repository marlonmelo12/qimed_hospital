"""
Painel do hospital simulado: sobe, derruba e reseta os sistemas e controla o fluxo de dados do simular_movimento.py.

    python painel/painel.py            # http://127.0.0.1:8099
    python painel/painel.py --porta 8100

So biblioteca padrao: roda no Python da maquina, que chama o docker. O simulador roda na imagem do pipeline
(QIMED_PIPELINE_IMAGE), porque o MV em Oracle 11g so conecta pelo Instant Client que esta nela. Painel e simulador
conversam por painel/estado/config.json (o painel escreve, o simulador rele a cada rodada) e estado.json (o
inverso). Escuta so em 127.0.0.1: os botoes apagam dados (resetar = down -v).
"""
import argparse
import json
import os
import subprocess
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import parse_qs, urlparse

REPO = Path(__file__).resolve().parents[1]
ESTADO_DIR = REPO / "painel" / "estado"
CONFIG = ESTADO_DIR / "config.json"
ESTADO = ESTADO_DIR / "estado.json"
IMAGEM = os.getenv("QIMED_PIPELINE_IMAGE", "qimed_pipeline-qimed-pipeline:latest")
REDE = "qimed-network"
SIMULADOR = "qimed-simulador"

# pasta, nome, banco, container, porta no host, banco do simulador (None = ainda sem movimento)
SISTEMAS = [
    ("tasy", "TASY (HIS e faturamento)", "MariaDB", "qimed-tasy-db", 3307, None),
    ("pep_fhir", "PEP FHIR", "HAPI FHIR", "qimed-pep-fhir", 8091, None),
    ("gnuhealth", "GNU Health", "Postgres", "qimed-gnuhealth-central-db", 5437, None),
    ("labvida", "LabVida (laboratório)", "Postgres", "qimed-labvida-db", 5436, "labvida"),
    ("openelis", "OpenELIS 3.3", "Postgres", "qimed-openelis-db", 5438, None),
    ("labvida_sqlserver", "LabVida SQL Server", "SQL Server 2022", "qimed-labvida-sqlserver-db", 1434, None),
    ("erp_rh", "ERP de RH e ponto", "MariaDB", "qimed-erp-rh-db", 3308, "erp_rh"),
    ("frappe_hrms", "Frappe HRMS", "MariaDB", "qimed-frappe-db", 3311, None),
    ("prontosul", "ProntoSul (pronto-atendimento)", "Oracle 23", "qimed-prontosul-db", 1522, "prontosul"),
    ("mv_faturamento", "MV faturamento (São Lucas)", "Oracle 11g", "qimed-mv-db", 1523, "mv"),
    ("openemr", "OpenEMR 8.5", "MariaDB", "qimed-openemr-db", 3310, None),
]
PASTAS = {s[0]: s for s in SISTEMAS}
BANCOS_SIM = {s[5]: s[0] for s in SISTEMAS if s[5]}
CONFIG_PADRAO = {"intervalo": 20, "atraso_pct": 15, "bancos": {b: False for b in BANCOS_SIM}, "reler": {}}

acoes = {}  # pasta -> {"acao", "inicio", "erro"}: o que o painel esta fazendo agora em cada sistema
memoria = {"por_container": {}, "total": None, "quando": None}
trava = threading.Lock()


def docker(*args, timeout=60):
    try:
        p = subprocess.run(["docker", *args], capture_output=True, text=True, encoding="utf-8", errors="replace",
                           timeout=timeout, cwd=REPO)
        return p.returncode, (p.stdout + p.stderr).strip()
    except FileNotFoundError:
        return 127, "docker não encontrado no PATH"
    except subprocess.TimeoutExpired:
        return 124, f"docker {' '.join(args[:2])} passou de {timeout} s"


def containers() -> dict:
    """nome -> (state, status) de todos os containers qimed-*, parados inclusive."""
    cod, out = docker("ps", "-a", "--filter", "name=qimed-", "--format", "{{.Names}}\t{{.State}}\t{{.Status}}",
                      timeout=15)
    if cod:
        return {}
    return {n: (st, stt) for n, st, stt in (ln.split("\t") for ln in out.splitlines() if ln.count("\t") == 2)}


def situacao(state: str, status: str) -> str:
    if state != "running":
        return "parado" if state else "ausente"
    if "(healthy)" in status:
        return "saudavel"
    if "health: starting" in status:
        return "subindo"
    if "unhealthy" in status:
        return "doente"
    return "rodando"  # sem healthcheck (PEP FHIR)


def _rodar_acao(pasta: str, acao: str):
    compose = ["compose", "-f", f"{pasta}/docker-compose.yml"]
    passos = {"subir": [[*compose, "up", "-d"]],
              "derrubar": [[*compose, "down"]],
              "resetar": [[*compose, "down", "-v"], [*compose, "up", "-d"]]}[acao]
    erro = None
    if acao != "derrubar" and docker("network", "inspect", REDE, timeout=15)[0]:
        docker("network", "create", REDE, timeout=15)
    for p in passos:
        cod, out = docker(*p, timeout=600)  # primeira subida baixa a imagem
        if cod:
            erro = out[-1500:]
            break
    with trava:
        acoes[pasta] = {"acao": None, "inicio": None, "erro": erro}


def acao_sistema(pasta: str, acao: str):
    if pasta not in PASTAS or acao not in ("subir", "derrubar", "resetar"):
        return 400, {"erro": "sistema ou ação desconhecida"}
    with trava:
        if (acoes.get(pasta) or {}).get("acao"):
            return 409, {"erro": f"{pasta} já está em {acoes[pasta]['acao']}"}
        acoes[pasta] = {"acao": acao, "inicio": time.time(), "erro": None}
    threading.Thread(target=_rodar_acao, args=(pasta, acao), daemon=True).start()
    return 202, {"ok": True}


def ler_json(caminho: Path, padrao):
    try:
        return json.loads(caminho.read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return padrao


def gravar_config(cfg: dict) -> dict:
    atual = ler_json(CONFIG, CONFIG_PADRAO)
    novo = {
        "intervalo": max(2, float(cfg.get("intervalo", atual["intervalo"]))),
        "atraso_pct": min(100, max(0, float(cfg.get("atraso_pct", atual["atraso_pct"])))),
        "bancos": {b: bool((cfg.get("bancos") or atual["bancos"]).get(b, False)) for b in BANCOS_SIM},
        "reler": {b: int(i) for b, i in (cfg.get("reler", atual.get("reler")) or {}).items()
                  if b in BANCOS_SIM and str(i).strip().isdigit()},
    }
    ESTADO_DIR.mkdir(parents=True, exist_ok=True)
    tmp = CONFIG.with_suffix(".tmp")
    tmp.write_text(json.dumps(novo, ensure_ascii=False, indent=1), encoding="utf-8")
    os.replace(tmp, CONFIG)
    return novo


def acao_simulador(acao: str):
    if acao == "iniciar":
        if not CONFIG.exists():
            gravar_config(CONFIG_PADRAO)
        ESTADO.unlink(missing_ok=True)  # contadores da rodada anterior nao valem
        docker("rm", "-f", SIMULADOR, timeout=30)
        # TZ como no compose do pipeline: sem ele o datetime.now() do container e UTC e a escrita fica 3 h no futuro
        cod, out = docker("run", "-d", "--rm", "--name", SIMULADOR, "--network", REDE,
                          "-e", f"TZ={os.getenv('TZ', 'America/Sao_Paulo')}",
                          "-v", f"{REPO.as_posix()}:/opt/qimed/mocks", "-w", "/opt/qimed",
                          "--entrypoint", "python", IMAGEM, "mocks/simular_movimento.py",
                          "--controle", "mocks/painel/estado/config.json", timeout=120)
        return (202, {"ok": True}) if not cod else (500, {"erro": out[-1500:]})
    if acao == "parar":
        cod, out = docker("stop", "-t", "5", SIMULADOR, timeout=30)
        return (200, {"ok": True}) if not cod else (500, {"erro": out[-800:]})
    return 400, {"erro": "ação desconhecida"}


def _vigiar_memoria():
    """docker stats leva ~2 s: roda a parte, a cada 10 s, e a tela le o ultimo valor."""
    cod, out = docker("info", "--format", "{{.MemTotal}}", timeout=15)
    if not cod and out.isdigit():
        memoria["total"] = int(out)
    while True:
        cod, out = docker("stats", "--no-stream", "--format", "{{.Name}}\t{{.MemUsage}}", timeout=30)
        if not cod:
            memoria["por_container"] = {n: m.split(" / ")[0] for n, m in
                                        (ln.split("\t") for ln in out.splitlines() if "\t" in ln)}
            memoria["quando"] = time.strftime("%H:%M:%S")
        time.sleep(10)


def estado_geral() -> dict:
    cts = containers()
    with trava:
        em_acao = {p: dict(a) for p, a in acoes.items()}
    sistemas = []
    for pasta, nome, banco, cont, porta, mov in SISTEMAS:
        st, stt = cts.get(cont, ("", ""))
        sistemas.append({"pasta": pasta, "nome": nome, "banco": banco, "container": cont, "porta": porta,
                         "movimento": mov, "situacao": situacao(st, stt), "status": stt,
                         "memoria": memoria["por_container"].get(cont),
                         "acao": (em_acao.get(pasta) or {}).get("acao"),
                         "erro": (em_acao.get(pasta) or {}).get("erro")})
    sim_st, sim_stt = cts.get(SIMULADOR, ("", ""))
    return {
        "sistemas": sistemas,
        "simulador": {"rodando": sim_st == "running", "status": sim_stt, "imagem": IMAGEM,
                      "config": ler_json(CONFIG, CONFIG_PADRAO), "estado": ler_json(ESTADO, None),
                      "bancos": BANCOS_SIM},
        "memoria": {"total": memoria["total"], "quando": memoria["quando"]},
        "docker_ok": bool(cts) or docker("info", "--format", "ok", timeout=10)[0] == 0,
    }


def log_de(alvo: str) -> str:
    cont = SIMULADOR if alvo == "simulador" else (PASTAS[alvo][3] if alvo in PASTAS else None)
    if not cont:
        return "alvo desconhecido"
    return docker("logs", "--tail", "120", cont, timeout=20)[1] or "(sem log)"


class Handler(BaseHTTPRequestHandler):
    def _responder(self, cod, corpo, tipo="application/json; charset=utf-8"):
        dados = corpo if isinstance(corpo, bytes) else json.dumps(corpo, ensure_ascii=False).encode("utf-8")
        self.send_response(cod)
        self.send_header("Content-Type", tipo)
        self.send_header("Content-Length", str(len(dados)))
        self.send_header("Cache-Control", "no-store")
        self.end_headers()
        self.wfile.write(dados)

    def do_GET(self):
        url = urlparse(self.path)
        if url.path == "/":
            return self._responder(200, (REPO / "painel" / "index.html").read_bytes(), "text/html; charset=utf-8")
        if url.path == "/api/estado":
            return self._responder(200, estado_geral())
        if url.path == "/api/log":
            alvo = (parse_qs(url.query).get("alvo") or [""])[0]
            return self._responder(200, {"log": log_de(alvo)})
        self._responder(404, {"erro": "rota desconhecida"})

    def do_POST(self):
        # sem CORS e so em 127.0.0.1; o Content-Type JSON barra POST de formulario vindo de outra pagina
        if "application/json" not in (self.headers.get("Content-Type") or ""):
            return self._responder(415, {"erro": "use application/json"})
        try:
            corpo = json.loads(self.rfile.read(int(self.headers.get("Content-Length") or 0)) or b"{}")
        except ValueError:
            return self._responder(400, {"erro": "JSON inválido"})
        rota = urlparse(self.path).path
        if rota == "/api/sistema":
            return self._responder(*acao_sistema(corpo.get("pasta"), corpo.get("acao")))
        if rota == "/api/simulador":
            return self._responder(*acao_simulador(corpo.get("acao")))
        if rota == "/api/config":
            try:
                return self._responder(200, gravar_config(corpo))
            except (TypeError, ValueError) as e:
                return self._responder(400, {"erro": str(e)})
        self._responder(404, {"erro": "rota desconhecida"})

    def log_message(self, *_):  # o polling de 3 s encheria o terminal
        pass


def main():
    ap = argparse.ArgumentParser(description="Painel do hospital simulado")
    ap.add_argument("--porta", type=int, default=8099)
    a = ap.parse_args()
    threading.Thread(target=_vigiar_memoria, daemon=True).start()
    srv = ThreadingHTTPServer(("127.0.0.1", a.porta), Handler)
    print(f"Painel em http://127.0.0.1:{a.porta}  (Ctrl+C para sair; os sistemas continuam de pé)")
    try:
        srv.serve_forever()
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
