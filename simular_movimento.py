"""
Movimento continuo nos mocks da Central de Conexoes, para a demo se comportar como um hospital em producao: a cada
--intervalo segundos cada banco recebe escrita nova, e a releitura incremental do QIMED tem o que buscar.

- LabVida (Postgres): paciente novo, pedidos novos, pedidos coletados que viram liberados com resultado e, em 20% das
  rodadas, um pedido coletado cancelado e apagado (exclusao na origem).
- ERP de RH (MariaDB): plantoes 'Escalado' que ja comecaram ganham o desfecho (Trabalhado, Falta ou Atestado).
- ProntoSul (Oracle): entrada no pronto-atendimento e alta dos que estao abertos.
Uma fracao das escritas chega atrasada (horario de 3 min atras), como transacao que confirma depois da leitura.
Banco fora do ar e pulado na rodada e tentado de novo na seguinte. Usa os usuarios donos (escrita), nunca o do QIMED.

  docker compose --profile jobs run --rm --no-deps --entrypoint python qimed-pipeline \
      mocks/simular_movimento.py [--intervalo 20] [--rodadas 0] [--bancos labvida,erp_rh,prontosul]
      [--reler labvida=202,erp_rh=203]

Com --reler, depois de cada escrita o simulador pede a releitura da conexao ao pipeline, em vez de esperar
QIMED_ONBOARDING_RELEITURA_MIN: so na demo, para o evento chegar logo ao painel.
"""
import argparse
import json
import os
import random
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
}
r = random.Random()


def _quando() -> datetime:
    """Agora, ou 3 min atras em 15% das escritas (chegada atrasada)."""
    agora = datetime.now().replace(microsecond=0)
    return agora - timedelta(minutes=3) if r.random() < 0.15 else agora


def labvida(c) -> str:
    novo = c.execute(text("SELECT COALESCE(MAX(id_paciente), 0) + 1 FROM paciente_cadastro")).scalar()
    t = _quando()
    c.execute(text("INSERT INTO paciente_cadastro (id_paciente, nome_completo, cpf, dt_nasc, sexo, email, celular, "
                   "convenio, criado_em, atualizado_em) VALUES (:i, :n, :c, :d, :s, :e, :cel, 'Particular', :t, :t)"),
              {"i": novo, "n": f"Paciente Simulado {novo}", "c": _mascara(_cpf(r)), "d": datetime(1980, 1, 1),
               "s": r.choice(["Masculino", "Feminino"]), "e": f"sim{novo}@exemplo.com.br", "cel": "(51) 90000-0000",
               "t": t})
    ids = [x[0] for x in c.execute(text("SELECT id_paciente FROM paciente_cadastro ORDER BY random() LIMIT 2"))]
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
    if r.random() < 0.2:  # pedido cancelado e apagado da origem: a reconciliacao diaria do QIMED tem de ver
        cancelados = c.execute(text(
            "DELETE FROM pedido_exame WHERE id_pedido = (SELECT id_pedido FROM pedido_exame WHERE situacao = 'Coletado' "
            "ORDER BY random() LIMIT 1)")).rowcount
    return f"1 paciente, {len(ids)} pedidos, {len(coletados)} liberados, {cancelados} cancelados"


def erp_rh(c) -> str:
    abertos = c.execute(text(
        "SELECT id_marcacao, dt_entrada_prevista, dt_saida_prevista FROM escala_ponto "
        "WHERE situacao = 'Escalado' AND dt_entrada_prevista <= NOW() ORDER BY dt_entrada_prevista LIMIT 8")).fetchall()
    for mid, ent, sai in abertos:
        sit = r.choices(["Trabalhado", "Falta", "Atestado"], [0.93, 0.03, 0.04])[0]
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


ACOES = {"labvida": labvida, "erp_rh": erp_rh, "prontosul": prontosul}
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


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[1])
    ap.add_argument("--intervalo", type=float, default=20)
    ap.add_argument("--rodadas", type=int, default=0, help="0 = sem fim")
    ap.add_argument("--bancos", default=",".join(ACOES))
    ap.add_argument("--reler", type=_conexoes, default={},
                    help="banco=id_connection,...: depois de cada escrita pede a releitura da conexao (demo)")
    a = ap.parse_args()
    engines = {b: create_engine(URLS[b], pool_pre_ping=True) for b in a.bancos.split(",")}
    n = 0
    while not a.rodadas or n < a.rodadas:
        n += 1
        for b, eng in engines.items():
            try:
                with eng.begin() as c:
                    feito = ACOES[b](c)
                # depois do commit: pedir antes faria a releitura ler o banco sem a escrita
                pedido = f"; releitura {reler(a.reler[b])}" if b in a.reler else ""
                print(f"[{datetime.now():%H:%M:%S}] {b}: {feito}{pedido}", flush=True)
            except Exception as e:  # banco fora do ar: tenta na proxima rodada
                print(f"[{datetime.now():%H:%M:%S}] {b}: falhou ({type(e).__name__}: {str(e).splitlines()[0][:120]})",
                      flush=True)
        if not a.rodadas or n < a.rodadas:
            time.sleep(a.intervalo)


if __name__ == "__main__":
    main()
