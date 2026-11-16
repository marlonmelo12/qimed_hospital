"""Teste de aceite da Central de Conexoes com 4 sistemas que o QIMED nunca viu, de ponta a ponta no pipeline.

GNU Health (produto real, Postgres), LabVida (Postgres), ERP de RH (MariaDB) e ProntoSul (Oracle); com `mv`, o
Hospital Sao Lucas (faturamento estilo MV, Oracle; fora do padrao: dois Oracle juntos pedem ~4,5 GB). O core e
simulado so nos 3 endpoints que o pipeline usa (login, lista de conexoes e credenciais), por HTTP de verdade.
O TASY entra antes pelo config/ como o HIS do hospital, base do vinculo de pacientes.

Roda no container do pipeline (orquestrado por mocks/teste_central.sh). Sai com codigo 1 se algo falhar.
  python mocks/teste_central.py                  # os 4
  python mocks/teste_central.py gnuhealth erp    # so alguns
"""
import json
import os
import subprocess
import sys
import threading
from http.server import BaseHTTPRequestHandler, HTTPServer

os.environ.update(QIMED_LAKEHOUSE_DIR="/tmp/teste_central/lake",
                  QIMED_HOSPITAL_DW_FILE="/tmp/teste_central/dw/qimed_hospital_dw.duckdb",
                  QIMED_ONBOARDING_RELEITURA_MIN="0", QIMED_ALERT_WEBHOOK_URL="",
                  QIMED_CORE_API_URL="http://127.0.0.1:8765/api/v1",
                  QIMED_CORE_SERVICE_EMAIL="servico@qimed.local", QIMED_CORE_SERVICE_PASSWORD="servico")
os.environ.setdefault("SALT_SECRET", "salt_teste_central")
sys.path.insert(0, "/opt/qimed")

from sqlalchemy import create_engine, text  # noqa: E402

from src.ingestion import onboarding as ob  # noqa: E402
from src.pipeline import run_fonte_hospital as rf  # noqa: E402

# o que o front cadastraria na Central (id, nome, credencial); o esperado vem do --resumo de cada gerador
SISTEMAS = {
    "gnuhealth": dict(id=201, nome="GNU Health HIS 5.0", host="gnuhealth-db", port=5432, database_name="gnuhealth",
                      username="qimed_leitura", password="leitura_mock", database_type="POSTGRESQL"),
    "labvida": dict(id=202, nome="LabVida (laboratorio)", host="labvida-db", port=5432, database_name="labvida",
                    username="labvida", password="labvida_mock", database_type="POSTGRESQL"),
    "erp": dict(id=203, nome="ERP RH e ponto", host="erp-rh-db", port=3306, database_name="erp_rh",
                username="erp", password="erp_mock", database_type="MYSQL"),
    "prontosul": dict(id=204, nome="ProntoSul (Oracle)", host="prontosul-db", port=1521, database_name="FREEPDB1",
                      username="qimed_leitura", password="leitura_mock", database_type="ORACLE"),
    "mv": dict(id=205, nome="Hospital Sao Lucas (MV)", host="mv-db", port=1521, database_name="FREEPDB1",
               username="qimed_leitura", password="leitura_mock", database_type="ORACLE"),
    "openemr": dict(id=206, nome="Clinica Vale Sul (OpenEMR 8.5)", host="openemr-db", port=3306,
                    database_name="openemr", username="qimed_leitura", password="leitura_mock", database_type="MYSQL"),
}
# OpenEMR: o esperado sai da fabrica (mocks/openemr/fabrica/gerar_roteiro.py), das entradas do roteiro
with open("/opt/qimed/mocks/openemr/esperado.json", encoding="utf-8") as f:
    ESPERADO_OPENEMR = json.load(f)
# seeds deterministicos: LabVida (gerar_labvida.esperado), ProntoSul (gerar_prontosul.py --resumo) e GNU Health
# (mocks/gnuhealth/atribuir_cpf.py: 300 pessoas do TASY; party_party tem todas as pessoas, nao so pacientes)
VINCULO = {"labvida": (334, 500), "prontosul": (189, 260), "gnuhealth": (300, 2048), "mv": (148, 240),
           "openemr": (ESPERADO_OPENEMR["vinculados_tasy"], ESPERADO_OPENEMR["pacientes"])}
FINANCEIRO = {"conta", "item_conta", "retorno_glosa"}
ESCOLHIDOS = sys.argv[1:] or [s for s in SISTEMAS if s not in ("mv", "openemr")]
POR_ID = {SISTEMAS[s]["id"]: SISTEMAS[s] for s in ESCOLHIDOS}
FALHAS = []


class CoreFalso(BaseHTTPRequestHandler):
    """Contrato do qimed-core conferido em core_connections.py: /auth/login, /connections/, /connections/{id}/credentials."""

    def _json(self, codigo, corpo):
        dados = json.dumps(corpo).encode()
        self.send_response(codigo)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(dados)))
        self.end_headers()
        self.wfile.write(dados)

    def do_POST(self):
        corpo = json.loads(self.rfile.read(int(self.headers["Content-Length"])))
        ok = corpo == {"email": os.environ["QIMED_CORE_SERVICE_EMAIL"],
                       "password": os.environ["QIMED_CORE_SERVICE_PASSWORD"]}
        self._json(200, {"access_token": "token-teste"}) if ok else self._json(401, {"detail": "login"})

    def do_GET(self):
        if self.headers.get("Authorization") != "Bearer token-teste":
            return self._json(401, {"detail": "sem token"})
        partes = self.path.rstrip("/").split("/")  # /api/v1/connections[/<id>/credentials]
        if partes[-1] == "connections":
            return self._json(200, [{"id_connection": c["id"], "name": c["nome"], "host": c["host"],
                                     "database_type": c["database_type"], "status": "ACTIVE"} for c in POR_ID.values()])
        if partes[-1] == "credentials" and int(partes[-2]) in POR_ID:
            c = POR_ID[int(partes[-2])]
            return self._json(200, {k: c[k] for k in ("host", "port", "database_name", "username", "password",
                                                      "database_type")})
        self._json(404, {"detail": "nao encontrada"})

    def log_message(self, *a):
        pass


def passo(t):
    print(f"\n=== {t}", flush=True)


def checar(cond, msg):
    print(("  ok    " if cond else "  FALHA ") + msg, flush=True)
    if not cond:
        FALHAS.append(msg)


def checar_glosa(e, s="mv"):
    """Gold de glosa da conexao contra o esperado da semente (a 0,01: semente em float, Gold em decimal).
    MV: convenio pelo codigo; OpenEMR: pelo nome (o id do convenio quem da e o proprio OpenEMR)."""
    import duckdb
    if s == "mv":
        sys.path.insert(0, "/opt/qimed/mocks/mv_faturamento")
        from gerar_mv import esperado
        esp = esperado()
    else:
        esp = ESPERADO_OPENEMR
    intel = e.get("inteligencia") or {}
    obtido = {c["convenio"] if s == "mv" else c["nome"]: c for c in intel.get("convenios", [])}
    for cv, v in esp["glosa_por_convenio"].items():
        o = obtido.get(str(cv), {})
        checar(abs(o.get("valor_glosado", -1) - v["glosado"]) <= 0.01 and abs(
               o.get("valor_cobrado", -1) - v["cobrado"]) <= 0.01,
               f"{s} convenio {cv}: glosado {o.get('valor_glosado')} de {o.get('valor_cobrado')} "
               f"(esperado {v['glosado']} de {v['cobrado']}, {v['taxa_pct']}%)")
    with duckdb.connect(os.environ["QIMED_HOSPITAL_DW_FILE"], read_only=True) as c:
        fonte = ob.fonte_de(SISTEMAS[s]["id"])
        tiss = dict(c.execute("SELECT motivo_tiss, ROUND(SUM(valor_glosado), 2) FROM dm_hosp_glosa_motivo_mes "
                              "WHERE fonte = $f GROUP BY ALL", {"f": fonte}).fetchall())
        contas = c.execute("SELECT COUNT(*), COUNT(DISTINCT conta_id) FROM fct_hosp_conta WHERE fonte = $f",
                           {"f": fonte}).fetchone()
    checar(all(abs(float(tiss.get(k, -1)) - v) <= 0.01 for k, v in esp["glosa_por_motivo_tiss"].items()),
           f"{s} glosa por motivo TISS ({tiss})")
    if s == "mv":
        checar(contas == (434, 434), f"mv: 434 contas distintas no DW, internacao e ambulatorio com ids repetidos ({contas})")
    return sum(c["itens"] for c in intel.get("convenios", []))


def estados():
    return {s: ob.ler_estado(SISTEMAS[s]["id"]) or {} for s in ESCOLHIDOS}


threading.Thread(target=HTTPServer(("127.0.0.1", 8765), CoreFalso).serve_forever, daemon=True).start()

passo("TASY (MariaDB, config/) -> Bronze e Silver: o HIS do hospital, base do vinculo")
r = rf.executar("tasy", completo=True, url="mysql+pymysql://tasy:tasy_mock@tasy-db:3306/TASY", gold=False)
checar(r["bronze"]["paciente"]["linhas"] > 0 if "paciente" in r["bronze"] else bool(r["bronze"]),
       f"TASY carregado: {({e: v['linhas'] for e, v in r['bronze'].items()})}")

passo("rodada 1 (a DAG de 2 min): descoberta das conexoes novas")
print(ob.processar())
for s, e in estados().items():
    d = ob.detalhe(SISTEMAS[s]["id"]) or {}
    tab = d.get("tabelas", [])
    papeis = {t["tabela"]: t["papel"] for t in tab if t["papel"]}
    print(f"  {s}: {len(tab)} tabelas, {sum(t['situacao'] == 'carregar' for t in tab)} a carregar, "
          f"papeis {papeis}, PII {sorted(p['coluna'] for p in d.get('pii', []))}")
    checar(e.get("estado") == "aguardando_aprovacao", f"{s} aguardando aprovacao ({e.get('estado')}: {e.get('mensagem')})")
    fin = {t: p for t, p in papeis.items() if p in FINANCEIRO}
    if s == "mv":
        checar(fin == {"reg_fat": "conta", "reg_amb": "conta", "itreg_fat": "item_conta", "itreg_amb": "item_conta",
                       "glosas": "retorno_glosa"}, f"mv: conta, item e glosa reconhecidos ({fin})")
        ret = next(t for t in tab if t["tabela"] == "glosas")
        checar(bool(ret.get("inferencias")) and ret["mapeamento"]["denied"] == "qimed_glosado",
               f"mv: mapeamento do dinheiro e inferencia do pago no detalhe ({ret.get('mapeamento')})")
    elif s == "openemr":  # sem FK nenhuma: paciente pela chave unica, faturamento pelo perfil do produto
        checar(fin == {"form_encounter": "conta", "billing": "item_conta", "ar_activity": "retorno_glosa"}
               and papeis.get("patient_data") == "paciente", f"openemr: paciente, conta, item e glosa ({papeis})")
        ret = next((t for t in tab if t["tabela"] == "ar_activity"), {})
        checar(ret.get("perfil") == "OpenEMR" and len(ret.get("inferencias") or []) == 7,
               f"openemr: perfil e as 7 regras do produto no detalhe ({ret.get('perfil')})")
    else:  # GNU Health tem fatura comercial (account_invoice): nao e conta de convenio
        checar(not fin, f"{s}: nenhum papel financeiro ({fin})")

passo("aprovacao da PII (o clique do front) e rodada 2: carga completa")
for s in ESCOLHIDOS:
    if (ob.ler_estado(SISTEMAS[s]["id"]) or {}).get("estado") == "aguardando_aprovacao":
        ob.aprovar(SISTEMAS[s]["id"], "teste@qimed")
print(ob.processar())
for s, e in estados().items():
    enr, intel = e.get("enriquecimento") or {}, e.get("inteligencia") or {}
    linhas = (e.get("carga") or {}).get("linhas") or {}
    print(f"  {s}: {sum(linhas.values())} linhas em {len(linhas)} tabelas | vinculo "
          f"{ {k: enr.get(k) for k in ('pacientes', 'vinculados', 'pct')} } | ausencia {intel.get('taxa_ausencia_pct')}")
    checar(e.get("estado") == "carregado", f"{s} carregado ({e.get('estado')}: {e.get('mensagem')})")
    checar(sum(linhas.values()) > 0, f"{s} com linhas na Bronze")
    if s in VINCULO:
        par = (enr.get("vinculados"), enr.get("pacientes"))
        checar(par == VINCULO[s], f"{s} casa {VINCULO[s][0]} de {VINCULO[s][1]} pacientes com o TASY pelo CPF ({par})")
    if s == "gnuhealth":  # CPF no PUID: party_party e a tabela de paciente
        checar(len(linhas) == 243 and (e.get("enriquecimento") or {}).get("tabela") == "party_party",
               f"gnuhealth: 243 tabelas, party_party como paciente")
    if s in ("mv", "openemr"):
        checar_glosa(e, s)
    if s == "erp":
        checar(intel.get("taxa_ausencia_pct") == 7.08, f"erp alimenta o absenteismo com 7,08% ({intel.get('taxa_ausencia_pct')})")

passo("movimento nos bancos (2 rodadas) e rodada 3: incremental")
moveis = [s for s in ("labvida", "erp", "prontosul") if s in ESCOLHIDOS]
if moveis:
    subprocess.run([sys.executable, "/opt/qimed/mocks/simular_movimento.py", "--intervalo", "1", "--rodadas", "2"],
                   check=True, cwd="/opt/qimed")
print(ob.processar())
for s, e in estados().items():
    carga = e.get("carga") or {}
    print(f"  {s}: modo {carga.get('modo')}, linhas {sum((carga.get('linhas') or {}).values())}")
    checar(e.get("estado") == "carregado" and carga.get("modo") == "incremental", f"{s} releu em modo incremental")

if "mv" in ESCOLHIDOS:
    passo("mv: retorno de uma remessa chega depois da carga (a conta e o item nao mudam)")
    itens_antes = checar_glosa(ob.ler_estado(SISTEMAS["mv"]["id"]))
    with create_engine("oracle+cx_oracle://dbamv:dbamv_dono@mv-db:1521/?service_name=FREEPDB1").begin() as con:
        rem = con.execute(text("SELECT MIN(cd_remessa) FROM remessa_fatura WHERE dt_entrega_da_fatura IS NOT NULL "
                               "AND dt_retorno IS NULL")).scalar()
        novos = con.execute(text(
            "SELECT (SELECT COUNT(*) FROM itreg_fat i JOIN reg_fat a ON a.cd_reg_fat = i.cd_reg_fat "
            "WHERE a.cd_remessa = :r) + (SELECT COUNT(*) FROM itreg_amb i JOIN reg_amb a ON a.cd_reg_amb = i.cd_reg_amb "
            "WHERE a.cd_remessa = :r) FROM dual"), {"r": rem}).scalar()
        con.execute(text("UPDATE remessa_fatura SET dt_retorno = SYSDATE - 1, dt_ultima_atualizacao = SYSDATE - 1 "
                         "WHERE cd_remessa = :r"), {"r": rem})
    print(ob.processar())
    e = ob.ler_estado(SISTEMAS["mv"]["id"])
    itens = sum(c["itens"] for c in (e.get("inteligencia") or {}).get("convenios", []))
    checar(bool(rem) and novos > 0 and itens == itens_antes + novos,
           f"mv: remessa {rem} retornada traz {novos} itens novos ao retorno ({itens_antes} -> {itens})")

if "labvida" in ESCOLHIDOS:
    passo("drift: coluna nova no LabVida depois da aprovacao bloqueia a carga")
    with create_engine("postgresql+psycopg2://labvida:labvida_mock@labvida-db:5432/labvida").begin() as con:
        con.execute(text("ALTER TABLE paciente_cadastro ADD COLUMN IF NOT EXISTS telefone_recado VARCHAR(20)"))
    print(ob.processar())
    e = ob.ler_estado(SISTEMAS["labvida"]["id"])
    checar(e["estado"] == "aguardando_aprovacao" and "telefone_recado" in (e.get("mensagem") or ""),
           f"labvida volta a pedir aprovacao ({e['estado']}: {e.get('mensagem')})")

passo(f"resultado: {len(FALHAS)} falha(s)")
for f in FALHAS:
    print("  -", f)
sys.exit(1 if FALHAS else 0)
