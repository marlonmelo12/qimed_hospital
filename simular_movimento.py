"""
Movimento continuo nos mocks da Central de Conexoes, para a demo se comportar como um hospital em producao: a cada
--intervalo segundos cada banco recebe escrita nova, e a releitura incremental do QIMED tem o que buscar.

- LabVida (Postgres): paciente novo, pedidos novos, pedidos coletados que viram liberados com resultado e, em 20% das
  rodadas, um pedido coletado cancelado e apagado (exclusao na origem).
  O mesmo roteiro roda no LabVida SQL Server.
- ERP de RH (MariaDB): plantoes 'Escalado' que ja comecaram ganham o desfecho (Trabalhado, Falta ou Atestado).
- TASY (MariaDB): entrada no pronto-socorro com convenio e leito, alta dos abertos e desfecho das escalas.
- Frappe HRMS (MariaDB): presenca do dia seguinte ao ultimo lancado, ate hoje.
- OpenEMR (MariaDB): consulta nova com itens, envio de conta ao convenio e retorno com pagamento ou glosa.
- GNU Health (Postgres): internacao num leito livre e alta das abertas.
- OpenELIS (Postgres): pedidos coletados do dump ganham resultado e sao liberados.
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

from sqlalchemy import bindparam, create_engine, text

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "labvida"))
from gerar_labvida import EXAMES, _cpf, _mascara  # noqa: E402

import src.orchestration.core_connections  # noqa: E402,F401  (registra o oracledb como cx_Oracle)

URLS = {
    "labvida": os.getenv("LABVIDA_URL", "postgresql+psycopg2://labvida:labvida_mock@labvida-db:5432/labvida"),
    "labvida_sqlserver": os.getenv("LABVIDA_SQLSERVER_URL",
                                   "mssql+pymssql://sa:Mock_sa_2026@labvida-sqlserver-db:1433/labvida"),
    "tasy": os.getenv("TASY_URL", "mysql+pymysql://tasy:tasy_mock@tasy-db:3306/TASY"),
    "gnuhealth": os.getenv("GNUHEALTH_URL", "postgresql+psycopg2://gnuhealth:gnuhealth@gnuhealth-db:5432/gnuhealth"),
    "openelis": os.getenv("OPENELIS_URL", "postgresql+psycopg2://openelis:openelis_mock@openelis-db:5432/clinlims"),
    "openemr": os.getenv("OPENEMR_URL", "mysql+pymysql://root:openemr_mock_root@openemr-db:3306/openemr"),
    "frappe_hrms": os.getenv("FRAPPE_URL", "mysql+pymysql://root:frappe_mock_root@frappe-db:3306/frappe_hrms"),
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


def _sorteio(c, sql: str) -> str:
    """{top}/{rnd}/{lim} no dialeto do banco: o roteiro do LabVida roda no Postgres e no SQL Server."""
    if c.dialect.name == "mssql":
        return sql.replace("{top}", "TOP (:n)").replace("{rnd}", "NEWID()").replace("{lim}", "")
    return sql.replace("{top}", "").replace("{rnd}", "random()").replace("{lim}", "LIMIT :n")


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
    ids = [x[0] for x in c.execute(text(_sorteio(
        c, "SELECT {top} id_paciente FROM paciente_cadastro ORDER BY {rnd} {lim}")), {"n": n_pedidos})]
    for pac in ids:
        pid = c.execute(text("SELECT COALESCE(MAX(id_pedido), 0) + 1 FROM pedido_exame")).scalar()
        c.execute(text("INSERT INTO pedido_exame VALUES (:p, :pac, :t, '12345', 'Particular', 'Coletado', :t)"),
                  {"p": pid, "pac": pac, "t": _quando()})
    coletados = [x[0] for x in c.execute(text(_sorteio(
        c, "SELECT {top} id_pedido FROM pedido_exame WHERE situacao = 'Coletado' ORDER BY {rnd} {lim}")), {"n": 2})]
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
        cancelados = c.execute(text(_sorteio(
            c, "DELETE FROM pedido_exame WHERE id_pedido IN (SELECT {top} id_pedido FROM pedido_exame "
               "WHERE situacao = 'Coletado' ORDER BY {rnd} {lim})")), {"n": lote}).rowcount
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


def tasy(c) -> str:
    """HIS: entrada no pronto-socorro (atendimento, convenio e leito livre), alta de ate 2 abertos (fecha a passagem e
    libera o leito) e desfecho das escalas previstas ja comecadas, como no ERP."""
    t = _quando()
    pac = c.execute(text("SELECT CD_PESSOA_FISICA FROM PESSOA_FISICA WHERE IE_FUNCIONARIO = 'N' AND DT_OBITO IS NULL "
                         "ORDER BY RAND() LIMIT 1")).scalar()
    leito = c.execute(text(
        "SELECT u.NR_SEQ_INTERNO, u.CD_SETOR_ATENDIMENTO, s.CD_ESTABELECIMENTO FROM UNIDADE_ATENDIMENTO u "
        "JOIN SETOR_ATENDIMENTO s ON s.CD_SETOR_ATENDIMENTO = u.CD_SETOR_ATENDIMENTO "
        "WHERE u.IE_STATUS_UNIDADE = 'L' AND s.IE_SITUACAO = 'A' ORDER BY RAND() LIMIT 1")).first()
    entradas = 0
    if pac and leito:  # sem leito livre: sem entrada nesta rodada
        seq, setor, estab = leito
        at = c.execute(text("SELECT COALESCE(MAX(NR_ATENDIMENTO), 0) + 1 FROM ATENDIMENTO_PACIENTE")).scalar()
        c.execute(text("INSERT INTO ATENDIMENTO_PACIENTE (NR_ATENDIMENTO, CD_ESTABELECIMENTO, CD_PESSOA_FISICA, "
                       "IE_TIPO_ATENDIMENTO, IE_CARATER_ATENDIMENTO, DT_ENTRADA, DT_ATUALIZACAO, NM_USUARIO) "
                       "VALUES (:a, :e, :p, 3, 'U', :t, :t, 'simulador')"), {"a": at, "e": estab, "p": pac, "t": t})
        conv = c.execute(text("SELECT CD_CONVENIO FROM CONVENIO ORDER BY RAND() LIMIT 1")).scalar()
        c.execute(text("INSERT INTO ATEND_CATEGORIA_CONVENIO (NR_SEQ_INTERNO, NR_ATENDIMENTO, CD_CONVENIO, "
                       "CD_CATEGORIA, DT_INICIO_VIGENCIA, DT_ATUALIZACAO, NM_USUARIO) SELECT "
                       "COALESCE(MAX(NR_SEQ_INTERNO), 0) + 1, :a, :c, 'PADRAO', :t, :t, 'simulador' "
                       "FROM ATEND_CATEGORIA_CONVENIO"), {"a": at, "c": conv, "t": t})
        c.execute(text("INSERT INTO ATEND_PACIENTE_UNIDADE (NR_SEQ_INTERNO, NR_ATENDIMENTO, CD_SETOR_ATENDIMENTO, "
                       "NR_SEQ_UNIDADE, DT_ENTRADA_UNIDADE, DT_ATUALIZACAO, NM_USUARIO) SELECT "
                       "COALESCE(MAX(NR_SEQ_INTERNO), 0) + 1, :a, :s, :u, :t, :t, 'simulador' "
                       "FROM ATEND_PACIENTE_UNIDADE"), {"a": at, "s": setor, "u": seq, "t": t})
        c.execute(text("UPDATE UNIDADE_ATENDIMENTO SET IE_STATUS_UNIDADE = 'P', DT_ATUALIZACAO = :t "
                       "WHERE NR_SEQ_INTERNO = :u"), {"t": t, "u": seq})
        entradas = 1
    abertos = [x[0] for x in c.execute(text(
        "SELECT NR_ATENDIMENTO FROM ATENDIMENTO_PACIENTE WHERE DT_ALTA IS NULL AND DT_ENTRADA < :t "
        "ORDER BY DT_ENTRADA LIMIT 2"), {"t": t})]
    motivo = c.execute(text("SELECT CD_MOTIVO_ALTA FROM MOTIVO_ALTA WHERE IE_OBITO = 'N' ORDER BY RAND() LIMIT 1")).scalar()
    for a in abertos:
        t = _quando()
        c.execute(text("UPDATE ATENDIMENTO_PACIENTE SET DT_ALTA = GREATEST(DT_ENTRADA, :t), CD_MOTIVO_ALTA = :m, "
                       "DT_ATUALIZACAO = :t, NM_USUARIO = 'simulador' WHERE NR_ATENDIMENTO = :a"),
                  {"t": t, "m": motivo, "a": a})
        c.execute(text("UPDATE UNIDADE_ATENDIMENTO SET IE_STATUS_UNIDADE = 'L', DT_ATUALIZACAO = :t "
                       "WHERE NR_SEQ_INTERNO IN (SELECT NR_SEQ_UNIDADE FROM ATEND_PACIENTE_UNIDADE "
                       "WHERE NR_ATENDIMENTO = :a AND DT_SAIDA_UNIDADE IS NULL)"), {"t": t, "a": a})
        c.execute(text("UPDATE ATEND_PACIENTE_UNIDADE SET DT_SAIDA_UNIDADE = GREATEST(DT_ENTRADA_UNIDADE, :t), "
                       "DT_ATUALIZACAO = :t, NM_USUARIO = 'simulador' WHERE NR_ATENDIMENTO = :a "
                       "AND DT_SAIDA_UNIDADE IS NULL"), {"t": t, "a": a})
    escalas = [x[0] for x in c.execute(text(
        "SELECT NR_SEQUENCIA FROM ESCALA_PLANTAO WHERE IE_SITUACAO = 'P' AND DT_INICIO <= NOW() "
        "ORDER BY DT_INICIO LIMIT 8"))]
    falta = 0.40 if "faltas" in CENARIOS else 0.07  # cenario "faltas", como no ERP
    for e in escalas:
        c.execute(text("UPDATE ESCALA_PLANTAO SET IE_SITUACAO = :s, DT_ATUALIZACAO = :t, NM_USUARIO = 'simulador' "
                       "WHERE NR_SEQUENCIA = :e"), {"s": "F" if r.random() < falta else "R", "t": _quando(), "e": e})
    return f"{entradas} entrada, {len(abertos)} altas, {len(escalas)} escalas com desfecho"


def frappe_hrms(c) -> str:
    """Frappe HRMS: lanca a presenca do dia seguinte ao ultimo lancado (ate hoje), ate 8 pessoas por rodada. Na escala
    12x36 do mock quem trabalha num dia e quem trabalhou 2 dias antes; cada linha nova e copia de uma linha real dessa
    pessoa (o Frappe tem 30 colunas) com data, situacao e horarios trocados."""
    dia = c.execute(text("SELECT MAX(attendance_date) FROM `tabAttendance` WHERE docstatus = 1")).scalar()
    feitos, modelos = 0, []
    for _ in range(2):  # o dia mais recente pode ja estar completo: entao vale o dia seguinte
        if dia > datetime.now().date():
            break
        modelos = [x[0] for x in c.execute(text(
            "SELECT a.name FROM `tabAttendance` a WHERE a.docstatus = 1 AND a.attendance_date = :d - INTERVAL 2 DAY "
            "AND NOT EXISTS (SELECT 1 FROM `tabAttendance` b WHERE b.employee = a.employee AND b.attendance_date = :d) "
            "ORDER BY a.name LIMIT 8"), {"d": dia})]
        if modelos:
            break
        dia += timedelta(days=1)
    if not modelos or dia > datetime.now().date():
        return "presenca em dia (nada a lancar)"
    pesos = [0.60, 0.25, 0.15] if "faltas" in CENARIOS else [0.93, 0.035, 0.035]
    c.execute(text("DROP TEMPORARY TABLE IF EXISTS sim_att"))  # rodada anterior que falhou no meio
    c.execute(text("CREATE TEMPORARY TABLE sim_att AS SELECT * FROM `tabAttendance` WHERE name IN :m")
              .bindparams(bindparam("m", expanding=True)), {"m": modelos})
    for nome in modelos:
        sit = r.choices(["Present", "Absent", "On Leave"], pesos)[0]
        t = _quando()
        c.execute(text(
            "UPDATE sim_att SET name = CONCAT('HR-ATT-SIM-', DATE_FORMAT(:d, '%Y%m%d'), '-', employee), "
            "attendance_date = :d, status = :s, leave_type = :lt, creation = :t, modified = :t, "
            # afastamento nao tem turno no Frappe (vem da escala); presenca e falta tem
            "shift = IF(:s = 'On Leave', NULL, COALESCE(shift, (SELECT MIN(sa.shift_type) FROM `tabShift Assignment` sa "
            "WHERE sa.employee = sim_att.employee AND sa.docstatus = 1 AND sa.start_date <= :d "
            "AND (sa.end_date IS NULL OR sa.end_date >= :d)))), "
            # modelo que faltou nao tem horario: vale o do turno. TIME() porque o SET do MariaDB ja ve a entrada nova
            "out_time = IF(:s = 'Present', TIMESTAMP(:d, COALESCE(TIME(out_time), (SELECT end_time FROM "
            "`tabShift Type` st WHERE st.name = shift))) + INTERVAL (COALESCE(TIME(out_time), (SELECT end_time FROM "
            "`tabShift Type` st WHERE st.name = shift)) < COALESCE(TIME(in_time), (SELECT start_time FROM "
            "`tabShift Type` st WHERE st.name = shift))) DAY, NULL), "
            "in_time = IF(:s = 'Present', TIMESTAMP(:d, COALESCE(TIME(in_time), (SELECT start_time FROM "
            "`tabShift Type` st WHERE st.name = shift))), NULL), "
            "working_hours = IF(:s = 'Present', working_hours, 0) WHERE name = :n"),
            {"d": dia, "s": sit, "lt": "Atestado Medico" if sit == "On Leave" else None, "t": t, "n": nome})
        feitos += 1
    c.execute(text("INSERT INTO `tabAttendance` SELECT * FROM sim_att"))
    c.execute(text("DROP TEMPORARY TABLE sim_att"))
    return f"{feitos} presencas lancadas em {dia:%d/%m}"


def openemr(c) -> str:
    """OpenEMR: consulta nova (copia da ultima consulta faturada de um paciente, com os itens), envio de uma conta ao
    convenio (claims) e retorno de outra ja enviada (pagamento ou glosa no razao ar_activity). O perfil le tudo sem
    watermark, entao basta escrever."""
    t = _quando()
    modelo = c.execute(text(
        "SELECT fe.encounter FROM form_encounter fe WHERE EXISTS (SELECT 1 FROM billing b WHERE b.encounter = "
        "fe.encounter AND b.activity = 1 AND b.fee > 0 AND b.payer_id > 0) ORDER BY RAND() LIMIT 1")).scalar()
    novo = c.execute(text("SELECT id + 1 FROM sequences")).scalar()
    c.execute(text("UPDATE sequences SET id = :n"), {"n": novo})
    c.execute(text("DROP TEMPORARY TABLE IF EXISTS sim_fe, sim_b"))  # rodada anterior que falhou no meio
    c.execute(text("CREATE TEMPORARY TABLE sim_fe AS SELECT * FROM form_encounter WHERE encounter = :m"), {"m": modelo})
    c.execute(text("UPDATE sim_fe SET id = 0, encounter = :n, date = :t, uuid = UNHEX(REPLACE(UUID(), '-', '')), "
                   "last_level_billed = 0, last_level_closed = 0"), {"n": novo, "t": t})
    c.execute(text("INSERT INTO form_encounter SELECT * FROM sim_fe"))
    c.execute(text("CREATE TEMPORARY TABLE sim_b AS SELECT * FROM billing WHERE encounter = :m AND activity = 1"),
              {"m": modelo})
    c.execute(text("UPDATE sim_b SET id = 0, encounter = :n, date = :t, billed = 0, bill_date = NULL, "
                   "process_date = NULL, process_file = NULL"), {"n": novo, "t": t})
    c.execute(text("INSERT INTO billing SELECT * FROM sim_b"))
    c.execute(text("DROP TEMPORARY TABLE sim_fe, sim_b"))
    # envio: a conta pronta mais antiga vai no lote do mes
    envio = c.execute(text(
        "SELECT pid, encounter, MAX(payer_id) FROM billing WHERE billed = 0 AND activity = 1 AND fee > 0 "
        "AND payer_id > 0 AND encounter <> :n GROUP BY pid, encounter ORDER BY MIN(date) LIMIT 1"), {"n": novo}).first()
    if envio:
        lote = f"lote_{t:%Y-%m}.txt"
        c.execute(text("INSERT INTO claims (patient_id, encounter_id, version, payer_id, status, payer_type, "
                       "bill_process, bill_time, process_time, process_file, target, x12_partner_id, submitted_claim) "
                       "VALUES (:p, :e, 1, :c, 2, 1, 2, :t, :t, :l, 'X12', 0, '')"),
                  {"p": envio[0], "e": envio[1], "c": envio[2], "t": t, "l": lote})
        c.execute(text("UPDATE billing SET billed = 1, bill_date = :t, process_date = :t, process_file = :l "
                       "WHERE pid = :p AND encounter = :e AND activity = 1"),
                  {"t": t, "l": lote, "p": envio[0], "e": envio[1]})
    # retorno: conta enviada sem nada no razao recebe o demonstrativo; 15% dos itens glosados
    ret = c.execute(text(
        "SELECT c.patient_id, c.encounter_id, c.payer_id FROM claims c WHERE c.status = 2 AND NOT EXISTS "
        "(SELECT 1 FROM ar_activity a WHERE a.pid = c.patient_id AND a.encounter = c.encounter_id) "
        "AND EXISTS (SELECT 1 FROM billing b WHERE b.pid = c.patient_id AND b.encounter = c.encounter_id "
        "AND b.activity = 1 AND b.fee > 0) "
        "ORDER BY c.bill_time LIMIT 1")).first()
    glosas = 0
    if ret:
        pid, enc, conv = ret
        itens = c.execute(text("SELECT code_type, code, fee FROM billing WHERE pid = :p AND encounter = :e "
                               "AND activity = 1 AND fee > 0 ORDER BY id"), {"p": pid, "e": enc}).fetchall()
        memos = [x[0] for x in c.execute(text("SELECT DISTINCT memo FROM ar_activity WHERE adj_amount > 0"))]
        sessao = c.execute(text(
            "INSERT INTO ar_session (payer_id, user_id, closed, reference, check_date, deposit_date, pay_total, "
            "global_amount, payment_type, adjustment_code, post_to_date, patient_id, payment_method, "
            "modified_time) VALUES (:c, 1, 0, :r, :d, :d, 0, 0, 'insurance', 'insurance_payment', :d, 0, "
            "'electronic', :t)"),
            {"c": conv, "r": f"DEM-SIM-{t:%Y%m%d%H%M%S}", "d": t.date(), "t": t}).lastrowid
        pago = 0
        for seq, (tipo, cod, fee) in enumerate(itens, 1):
            glosa = memos and r.random() < 0.15
            glosas += bool(glosa)
            pago += 0 if glosa else fee
            c.execute(text("INSERT INTO ar_activity (pid, encounter, sequence_no, code_type, code, modifier, "
                           "payer_type, post_time, post_user, session_id, memo, pay_amount, adj_amount, "
                           "modified_time, follow_up, account_code, post_date) VALUES (:p, :e, :s, :ty, :co, '', 1, "
                           ":t, 1, :ss, :m, :pa, :aj, :t, '', '', :d)"),
                      {"p": pid, "e": enc, "s": seq, "ty": tipo, "co": cod, "t": t, "ss": sessao,
                       "m": r.choice(memos) if glosa else "", "pa": 0 if glosa else fee, "aj": fee if glosa else 0,
                       "d": t.date()})
        c.execute(text("UPDATE ar_session SET pay_total = :v WHERE session_id = :s"), {"v": pago, "s": sessao})
    return f"1 consulta, {1 if envio else 0} conta enviada, {1 if ret else 0} retorno ({glosas} glosas)"


def gnuhealth(c) -> str:
    """GNU Health: internacao nova num leito livre (copia de uma internacao real, com paciente sorteado) e alta das
    abertas ha mais tempo, liberando o leito. O Tryton marca toda escrita em write_date."""
    t = _quando()
    leito = c.execute(text("SELECT id FROM gnuhealth_hospital_bed WHERE state = 'free' ORDER BY random() LIMIT 1")).scalar()
    entradas = 0
    if leito:  # sem leito livre: sem entrada nesta rodada
        novo = c.execute(text("SELECT nextval('gnuhealth_inpatient_registration_id_seq')")).scalar()
        c.execute(text("DROP TABLE IF EXISTS sim_ir"))  # rodada anterior que falhou no meio
        c.execute(text("CREATE TEMP TABLE sim_ir AS SELECT * FROM gnuhealth_inpatient_registration "
                       "ORDER BY random() LIMIT 1"))
        c.execute(text("UPDATE sim_ir SET id = :i, name = 'INPAC' || :i, bed = :b, state = 'hospitalized', "
                       "patient = (SELECT id FROM gnuhealth_patient ORDER BY random() LIMIT 1), "
                       "hospitalization_date = :t, discharge_date = :t + INTERVAL '3 days', discharged_by = NULL, "
                       "discharge_dx = NULL, discharge_reason = NULL, create_date = :t, write_date = :t"),
                  {"i": novo, "b": leito, "t": t})
        c.execute(text("INSERT INTO gnuhealth_inpatient_registration SELECT * FROM sim_ir"))
        c.execute(text("DROP TABLE sim_ir"))
        c.execute(text("UPDATE gnuhealth_hospital_bed SET state = 'occupied', write_date = :t WHERE id = :b"),
                  {"t": t, "b": leito})
        entradas = 1
    altas = c.execute(text(
        "UPDATE gnuhealth_inpatient_registration SET state = 'done', discharge_date = GREATEST(hospitalization_date, "
        ":t), discharge_reason = 'home', write_date = :t WHERE id IN (SELECT id FROM gnuhealth_inpatient_registration "
        "WHERE state = 'hospitalized' AND hospitalization_date < :t ORDER BY hospitalization_date LIMIT 1) "
        "RETURNING bed"), {"t": t}).fetchall()
    for (b,) in altas:
        c.execute(text("UPDATE gnuhealth_hospital_bed SET state = 'free', write_date = :t WHERE id = :b"),
                  {"t": t, "b": b})
    return f"{entradas} internacao, {len(altas)} alta"


def openelis(c) -> str:
    """OpenELIS: libera ate 2 pedidos coletados (exame pendente ganha resultado, analise e amostra finalizadas).
    O resultado e copia de um resultado real do mesmo exame, com o valor sorteado em torno dele."""
    # shortcut: so libera os pedidos do dump (108); pedido novo exige paciente, amostra e accession do OpenELIS
    t = _quando()
    pendentes = c.execute(text(
        "SELECT a.id, a.test_id, si.samp_id FROM clinlims.analysis a JOIN clinlims.sample_item si "
        "ON si.id = a.sampitem_id WHERE a.status_id = 4 ORDER BY random() LIMIT 2")).fetchall()
    for an, teste, amostra in pendentes:
        modelo = c.execute(text(
            "SELECT r.id FROM clinlims.result r JOIN clinlims.analysis a ON a.id = r.analysis_id "
            "WHERE a.test_id = :t ORDER BY random() LIMIT 1"), {"t": teste}).scalar()
        if modelo:  # exame sem nenhum resultado no banco: fica pendente
            c.execute(text(
                "INSERT INTO clinlims.result SELECT nextval('clinlims.result_seq'), :a, sort_order, is_reportable, "
                "result_type, ROUND(GREATEST(0.1, value::numeric * (0.7 + 0.6 * random()))::numeric, "
                "COALESCE(significant_digits, 2)::int)::text, analyte_id, test_result_id, :t, min_normal, max_normal, "
                "parent_id, significant_digits, \"grouping\", gen_random_uuid(), expanded_uncertainty, "
                "coverage_factor, :t, qc_evaluation, qc_evaluation_detail FROM clinlims.result WHERE id = :m"),
                {"a": an, "t": t, "m": modelo})
        c.execute(text("UPDATE clinlims.analysis SET status_id = 6, completed_date = :t, released_date = :t, "
                       "lastupdated = :t WHERE id = :a"), {"t": t, "a": an})
        c.execute(text("UPDATE clinlims.sample SET status_id = 3, released_date = :t, lastupdated = :t "
                       "WHERE id = :s AND NOT EXISTS (SELECT 1 FROM clinlims.analysis a JOIN clinlims.sample_item si "
                       "ON si.id = a.sampitem_id WHERE si.samp_id = :s AND a.status_id <> 6)"), {"t": t, "s": amostra})
    return f"{len(pendentes)} pedidos liberados"


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


ACOES = {"labvida": labvida, "labvida_sqlserver": labvida, "tasy": tasy, "erp_rh": erp_rh,
         "frappe_hrms": frappe_hrms, "openemr": openemr, "gnuhealth": gnuhealth, "openelis": openelis, "prontosul": prontosul, "mv": mv}
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
                    # o pico e de atendimentos: nao vale para o RH (ERP e Frappe)
                    vezes = PICO if "pico" in CENARIOS and b not in ("erp_rh", "frappe_hrms") else 1
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
