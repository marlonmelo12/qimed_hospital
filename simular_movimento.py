"""
Movimento continuo nos mocks da Central de Conexoes, para a demo se comportar como um hospital em producao: a cada
--intervalo segundos cada banco recebe escrita nova, e a releitura incremental do QIMED tem o que buscar.

- LabVida (Postgres): paciente novo, pedidos novos, pedidos coletados que viram liberados com resultado e, em 20% das
  rodadas, um pedido coletado cancelado e apagado (exclusao na origem).
- ERP de RH (MariaDB): plantoes 'Escalado' que ja comecaram ganham o desfecho (Trabalhado, Falta ou Atestado).
- ProntoSul (Oracle): entrada no pronto-atendimento e alta dos que estao abertos.
- MV (Oracle 11g): atendimento de urgencia com conta ambulatorial aberta e itens.
Uma fracao das escritas chega atrasada (horario de 3 min atras), como transacao que confirma depois da leitura.
Banco fora do ar e pulado na rodada e tentado de novo na seguinte. Usa os usuarios donos (escrita), nunca o do QIMED.

  docker compose --profile jobs run --rm --no-deps --entrypoint python qimed-pipeline \
      mocks/simular_movimento.py [--intervalo 20] [--rodadas 0] [--bancos labvida,erp_rh,prontosul]
      [--reler labvida=202,erp_rh=203]

Com --reler, depois de cada escrita o simulador pede a releitura da conexao ao pipeline, em vez de esperar
QIMED_ONBOARDING_RELEITURA_MIN: so na demo, para o evento chegar logo ao painel.

Com --controle <config.json> (o painel em painel/), intervalo, bancos ligados, fracao atrasada e --reler saem desse
arquivo, relido a cada rodada, e os contadores vao para estado.json na mesma pasta. Os argumentos viram o padrao.
"""
import argparse
import json
import os
import random
import signal
import sys
import time
import urllib.error
import urllib.request
from datetime import datetime, timedelta

from sqlalchemy import create_engine, text

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "labvida"))
from gerar_labvida import EXAMES, _cpf, _mascara  # noqa: E402

import src.orchestration.core_connections  # noqa: E402,F401  (registra o oracledb como cx_Oracle)

URLS = {
    "labvida": os.getenv("LABVIDA_URL", "postgresql+psycopg2://labvida:labvida_mock@labvida-db:5432/labvida"),
    "erp_rh": os.getenv("ERP_RH_URL", "mysql+pymysql://erp:erp_mock@erp-rh-db:3306/erp_rh"),
    "prontosul": os.getenv("PRONTOSUL_URL",
                           "oracle+cx_oracle://prontosul:prontosul_dono@prontosul-db:1521/?service_name=FREEPDB1"),
    "mv": os.getenv("MV_URL", "oracle+cx_oracle://dbamv:dbamv_dono@mv-db:1521/?service_name=XE"),
}
r = random.Random()
ATRASO = 0.15  # fracao das escritas com horario de 3 min atras; o painel muda por atraso_pct
CENARIOS = set()  # cenarios de demo ativos nesta rodada (config "cenarios": {nome: fim ISO}), so com --controle
PICO = 5  # no cenario "pico", cada banco com entrada nova escreve 5 vezes por rodada
# cenario "coluna_nova": o que o hospital faria ao atualizar o sistema; {c} = nome da coluna. So em tabela onde o
# simulador nao faz INSERT posicional (atendimento_pa, atendime, pedido_exame): la a coluna a mais o quebraria
COLUNA_NOVA = {
    "labvida": "ALTER TABLE paciente_cadastro ADD COLUMN {c} VARCHAR(80)",
    "erp_rh": "ALTER TABLE escala_ponto ADD COLUMN {c} VARCHAR(80)",
    "prontosul": "ALTER TABLE paciente ADD ({c} VARCHAR2(80))",
    "mv": "ALTER TABLE convenio ADD ({c} VARCHAR2(80))",
}


def _quando() -> datetime:
    """Agora, ou 3 min atras em ATRASO das escritas (chegada atrasada)."""
    agora = datetime.now().replace(microsecond=0)
    return agora - timedelta(minutes=3) if r.random() < ATRASO else agora


def labvida(c) -> str:
    novo = c.execute(text("SELECT COALESCE(MAX(id_paciente), 0) + 1 FROM paciente_cadastro")).scalar()
    t = _quando()
    c.execute(text("INSERT INTO paciente_cadastro (id_paciente, nome_completo, cpf, dt_nasc, sexo, email, celular, "
                   "convenio, criado_em, atualizado_em) VALUES (:i, :n, :c, :d, :s, :e, :cel, 'Particular', :t, :t)"),
              {"i": novo, "n": f"Paciente Simulado {novo}", "c": _mascara(_cpf(r)), "d": datetime(1980, 1, 1),
               "s": r.choice(["Masculino", "Feminino"]), "e": f"sim{novo}@exemplo.com.br", "cel": "(51) 90000-0000",
               "t": t})
    # cada rodada libera 2 coletados; no cenario "exclusoes" entram 5 pedidos a mais para haver o que apagar
    n_pedidos = 7 if "exclusoes" in CENARIOS else 2
    ids = [x[0] for x in c.execute(text("SELECT id_paciente FROM paciente_cadastro ORDER BY random() LIMIT :n"),
                                   {"n": n_pedidos})]
    for pac in ids:
        pid = c.execute(text("SELECT COALESCE(MAX(id_pedido), 0) + 1 FROM pedido_exame")).scalar()
        c.execute(text("INSERT INTO pedido_exame VALUES (:p, :pac, :t, '12345', 'Particular', 'Coletado', :t)"),
                  {"p": pid, "pac": pac, "t": _quando()})
    coletados = [x[0] for x in c.execute(text(
        "SELECT id_pedido FROM pedido_exame WHERE situacao = 'Coletado' ORDER BY random() LIMIT 2"))]
    for pid in coletados:
        t = _quando()
        c.execute(text("UPDATE pedido_exame SET situacao = 'Liberado', atualizado_em = :t WHERE id_pedido = :p"),
                  {"t": t, "p": pid})
        cod, desc, un, media, dp = r.choice(EXAMES)
        rid = c.execute(text("SELECT COALESCE(MAX(id_resultado), 0) + 1 FROM resultado_exame")).scalar()
        c.execute(text("INSERT INTO resultado_exame VALUES (:r, :p, :c, :d, :v, :u, :t, :t)"),
                  {"r": rid, "p": pid, "c": cod, "d": desc, "v": round(max(0.1, r.gauss(media, dp)), 2), "u": un,
                   "t": t})
    cancelados = 0
    # pedido cancelado e apagado da origem: a reconciliacao diaria do QIMED tem de ver. No cenario "exclusoes", 5 por
    # rodada em vez de 1 em 20% delas
    lote = 5 if "exclusoes" in CENARIOS else (1 if r.random() < 0.2 else 0)
    if lote:
        cancelados = c.execute(text(
            "DELETE FROM pedido_exame WHERE id_pedido IN (SELECT id_pedido FROM pedido_exame WHERE situacao = 'Coletado' "
            "ORDER BY random() LIMIT :n)"), {"n": lote}).rowcount
    return f"1 paciente, {len(ids)} pedidos, {len(coletados)} liberados, {cancelados} cancelados"


def erp_rh(c) -> str:
    abertos = c.execute(text(
        "SELECT id_marcacao, dt_entrada_prevista, dt_saida_prevista FROM escala_ponto "
        "WHERE situacao = 'Escalado' AND dt_entrada_prevista <= NOW() ORDER BY dt_entrada_prevista LIMIT 8")).fetchall()
    # cenario "faltas": 40% de ausencia em vez de 7%, para o absenteismo subir no painel do QIMED
    pesos = [0.60, 0.25, 0.15] if "faltas" in CENARIOS else [0.93, 0.03, 0.04]
    for mid, ent, sai in abertos:
        sit = r.choices(["Trabalhado", "Falta", "Atestado"], pesos)[0]
        presente = sit == "Trabalhado"
        c.execute(text("UPDATE escala_ponto SET situacao = :s, dt_entrada_registrada = :e, dt_saida_registrada = :x, "
                       "dt_alteracao = :t WHERE id_marcacao = :m"),
                  {"s": sit, "e": ent + timedelta(minutes=r.randint(-10, 15)) if presente else None,
                   "x": sai + timedelta(minutes=r.randint(-5, 30)) if presente else None, "t": _quando(), "m": mid})
    return f"{len(abertos)} plantoes com desfecho"


def prontosul(c) -> str:
    pac = c.execute(text("SELECT cd_paciente FROM paciente ORDER BY DBMS_RANDOM.VALUE FETCH FIRST 1 ROWS ONLY")).scalar()
    cd = c.execute(text("SELECT NVL(MAX(cd_atendimento), 0) + 1 FROM atendimento_pa")).scalar()
    t = _quando()
    c.execute(text("INSERT INTO atendimento_pa VALUES (:cd, :p, :t, NULL, :risco, 'R509', :t)"),
              {"cd": cd, "p": pac, "t": t, "risco": r.choice(["Amarelo", "Verde", "Laranja"])})
    abertos = [x[0] for x in c.execute(text(
        "SELECT cd_atendimento FROM atendimento_pa WHERE dt_alta IS NULL AND cd_atendimento <> :cd "
        "ORDER BY dt_entrada FETCH FIRST 2 ROWS ONLY"), {"cd": cd})]
    for a in abertos:
        t = _quando()
        c.execute(text("UPDATE atendimento_pa SET dt_alta = :t, dt_atualizacao = :t WHERE cd_atendimento = :a"),
                  {"t": t, "a": a})
    return f"1 entrada, {len(abertos)} altas"


def mv(c) -> str:
    """Atendimento de urgencia com a conta ambulatorial aberta e 1 a 3 itens (Oracle 11g: sem FETCH FIRST)."""
    pac, conv = c.execute(text("SELECT cd_paciente, cd_convenio FROM (SELECT p.cd_paciente, c.cd_convenio FROM "
                               "paciente p CROSS JOIN convenio c ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1")).one()
    at = c.execute(text("SELECT NVL(MAX(cd_atendimento), 0) + 1 FROM atendime")).scalar()
    conta = c.execute(text("SELECT NVL(MAX(cd_reg_amb), 0) + 1 FROM reg_amb")).scalar()
    t = _quando()
    procs = c.execute(text("SELECT cd_pro_fat, vl_tabela FROM pro_fat WHERE cd_gru_pro IN ('PROC', 'MED', 'MAT')")).all()
    itens = r.sample(procs, r.randint(1, 3))
    total = round(sum(float(v) for _, v in itens), 2)
    c.execute(text("INSERT INTO atendime VALUES (:a, :p, :c, 'U', :t, :t, NULL, :t)"),
              {"a": at, "p": pac, "c": conv, "t": t})
    c.execute(text("INSERT INTO reg_amb VALUES (:r, :a, :c, NULL, :t, :v, 'N', :t)"),
              {"r": conta, "a": at, "c": conv, "t": t, "v": total})
    for n, (cd, vl) in enumerate(itens, 1):
        c.execute(text("INSERT INTO itreg_amb VALUES (:r, :n, :cd, :t, 1, :v, :v, :t)"),
                  {"r": conta, "n": n, "cd": cd, "t": t, "v": float(vl)})
    return f"1 atendimento com conta de {len(itens)} itens"


ACOES = {"labvida": labvida, "erp_rh": erp_rh, "prontosul": prontosul, "mv": mv}
API = os.getenv("QIMED_PIPELINE_API_URL", "http://qimed-api:8000/api/v1")


def reler(id_connection: int) -> str:
    """Pede a releitura da conexao ao pipeline (POST /pipeline/onboarding/{id}/reler), so na demo: um hospital real
    nao avisa o QIMED quando grava. Falha aqui nao para o simulador; a releitura agendada pega depois."""
    req = urllib.request.Request(f"{API}/pipeline/onboarding/{id_connection}/reler", method="POST", data=b"")
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            return json.loads(resp.read()).get("disparo", "?")
    except urllib.error.HTTPError as e:  # 409: conexao ainda nao carregada (sem aprovacao)
        return f"HTTP {e.code}"
    except Exception as e:  # noqa: BLE001 - API fora do ar
        return f"falhou ({type(e).__name__})"


def _conexoes(texto: str) -> dict:
    """'labvida=202,erp_rh=203' -> {'labvida': 202, 'erp_rh': 203}: o id da conexao de cada banco na Central."""
    return {b.strip(): int(i) for b, i in (p.split("=") for p in texto.split(",") if p.strip())}


def _ler_controle(caminho: str, padrao: dict) -> dict:
    """Config do painel por cima dos argumentos. Arquivo ausente ou pela metade: fica o padrao (nunca para)."""
    try:
        with open(caminho, encoding="utf-8") as fh:
            lido = json.load(fh)
    except (OSError, ValueError):
        return padrao
    cfg = dict(padrao)
    cfg["intervalo"] = max(2.0, float(lido.get("intervalo", padrao["intervalo"])))
    cfg["atraso_pct"] = min(100.0, max(0.0, float(lido.get("atraso_pct", padrao["atraso_pct"]))))
    if isinstance(lido.get("bancos"), dict):
        cfg["bancos"] = [b for b, ligado in lido["bancos"].items() if ligado and b in ACOES]
    if isinstance(lido.get("reler"), dict):
        cfg["reler"] = {b: int(i) for b, i in lido["reler"].items() if b in ACOES and str(i).strip().isdigit()}
    agora = datetime.now().isoformat(timespec="seconds")
    cfg["cenarios"] = sorted(n for n, fim in (lido.get("cenarios") or {}).items() if str(fim) > agora)
    cfg["pedidos"] = [p for p in (lido.get("pedidos") or []) if isinstance(p, dict) and p.get("id")]
    return cfg


def _executar_pedido(p: dict, engines: dict) -> str:
    """Acao de uma vez so pedida pelo painel. Hoje so a coluna nova, que a Central tem de pegar como drift."""
    b = p.get("banco")
    if p.get("tipo") != "coluna_nova" or b not in COLUNA_NOVA:
        return "pedido desconhecido"
    coluna = f"observacao_{datetime.now():%H%M%S}"
    if b not in engines:
        engines[b] = create_engine(URLS[b], pool_pre_ping=True)
    with engines[b].begin() as c:
        c.execute(text(COLUNA_NOVA[b].format(c=coluna)))
    return f"coluna {coluna} criada"


def _gravar_json(caminho: str, dados: dict) -> None:
    tmp = caminho + ".tmp"
    with open(tmp, "w", encoding="utf-8") as fh:
        json.dump(dados, fh, ensure_ascii=False, indent=1)
    os.replace(tmp, caminho)  # o painel nunca le o arquivo pela metade


def main():
    global ATRASO
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[1])
    ap.add_argument("--intervalo", type=float, default=20)
    ap.add_argument("--rodadas", type=int, default=0, help="0 = sem fim")
    ap.add_argument("--bancos", default="labvida,erp_rh,prontosul", help=f"entre {','.join(ACOES)}")
    ap.add_argument("--reler", type=_conexoes, default={},
                    help="banco=id_connection,...: depois de cada escrita pede a releitura da conexao (demo)")
    ap.add_argument("--controle", help="config.json do painel, relido a cada rodada; estado.json ao lado")
    a = ap.parse_args()
    # docker stop manda SIGTERM ao PID 1, que o Python ignora sem handler: sem isto o painel espera o SIGKILL
    signal.signal(signal.SIGTERM, lambda *_: sys.exit(0))
    padrao = {"intervalo": a.intervalo, "atraso_pct": ATRASO * 100, "bancos": a.bancos.split(","), "reler": a.reler,
              "cenarios": [], "pedidos": []}
    estado_path = os.path.join(os.path.dirname(a.controle), "estado.json") if a.controle else None
    estado = {"inicio": datetime.now().isoformat(timespec="seconds"), "rodada": 0, "bancos": {}, "eventos": [],
              "pedidos": {}}
    engines = {}
    n = 0
    while not a.rodadas or n < a.rodadas:
        n += 1
        cfg = _ler_controle(a.controle, padrao) if a.controle else padrao
        ATRASO = cfg["atraso_pct"] / 100
        CENARIOS.clear()
        CENARIOS.update(cfg["cenarios"])
        for p in cfg["pedidos"]:
            if p["id"] in estado["pedidos"]:
                continue
            agora = f"{datetime.now():%H:%M:%S}"
            try:
                linha, ok = _executar_pedido(p, engines), True
            except Exception as e:  # noqa: BLE001 - banco fora do ar: o painel mostra e o usuario pede de novo
                linha, ok = f"falhou ({type(e).__name__}: {str(e).splitlines()[0][:120]})", False
            estado["pedidos"][p["id"]] = {"quando": agora, "ok": ok, "texto": linha, **p}
            estado["eventos"] = ([{"quando": agora, "banco": p.get("banco", "?"), "ok": ok, "texto": linha}]
                                 + estado["eventos"])[:40]
            print(f"[{agora}] {p.get('banco')}: {linha}", flush=True)
        for b in cfg["bancos"]:
            if b not in engines:
                engines[b] = create_engine(URLS[b], pool_pre_ping=True)
            cont = estado["bancos"].setdefault(b, {"ok": 0, "falhas": 0, "ultimo": None, "quando": None})
            agora = f"{datetime.now():%H:%M:%S}"
            try:
                with engines[b].begin() as c:
                    # o ERP so da desfecho a plantao ja comecado, entao o pico nao vale para ele
                    vezes = PICO if "pico" in CENARIOS and b != "erp_rh" else 1
                    feitos = [ACOES[b](c) for _ in range(vezes)]
                    feito = feitos[0] if vezes == 1 else f"pico, {vezes}x: {feitos[-1]}"
                # depois do commit: pedir antes faria a releitura ler o banco sem a escrita
                pedido = f"; releitura {reler(cfg['reler'][b])}" if b in cfg["reler"] else ""
                linha, cont["ok"] = f"{feito}{pedido}", cont["ok"] + 1
                ok = True
            except Exception as e:  # banco fora do ar: tenta na proxima rodada
                linha, cont["falhas"] = f"falhou ({type(e).__name__}: {str(e).splitlines()[0][:120]})", cont["falhas"] + 1
                ok = False
            cont["ultimo"], cont["quando"] = linha, agora
            estado["eventos"] = ([{"quando": agora, "banco": b, "ok": ok, "texto": linha}] + estado["eventos"])[:40]
            print(f"[{agora}] {b}: {linha}", flush=True)
        if estado_path:
            estado.update(rodada=n, config=cfg, proxima=(datetime.now() + timedelta(seconds=cfg["intervalo"]))
                          .isoformat(timespec="seconds"))
            try:
                _gravar_json(estado_path, estado)
            except OSError as e:  # o estado e so para a tela; escrita no banco segue
                print(f"estado.json nao gravado: {e}", flush=True)
        if not a.rodadas or n < a.rodadas:
            _esperar(cfg["intervalo"], a.controle)


def _mtime(caminho):
    try:
        return os.path.getmtime(caminho)
    except OSError:
        return None


def _esperar(segundos: float, controle) -> None:
    """Dorme o intervalo, mas acorda antes se o painel gravar config nova (mudar 300 s para 5 s vale na hora)."""
    if not controle:
        time.sleep(segundos)
        return
    antes, fim = _mtime(controle), time.monotonic() + segundos
    while time.monotonic() < fim:
        time.sleep(min(1.0, fim - time.monotonic()))
        if _mtime(controle) != antes:
            return


if __name__ == "__main__":
    main()
