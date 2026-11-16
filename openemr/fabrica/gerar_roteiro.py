"""Roteiro da fabrica do mock OpenEMR: o que a clinica fez no ano (pacientes, consultas, cobrancas, retornos).

O roteiro sai em roteiro.json e o popular.php o executa pelas funcoes do proprio OpenEMR. O esperado da Central sai
daqui mesmo (esperado.json), das entradas, e nao de uma consulta ao banco com os JOINs que a Central faria.

  python mocks/openemr/fabrica/gerar_roteiro.py [--pacientes N]
"""
import argparse
import json
import os
import random
import sys
from collections import defaultdict
from datetime import date, datetime, timedelta

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(AQUI, "..", "..", "labvida"))
from gerar_labvida import Gerador, _cpf, pacientes_tasy  # noqa: E402

SEMENTE = 20261118
TASY_INI, TASY_FIM, PROPRIOS = 760, 920, 60  # faixa do TASY que nenhum outro mock usa
INICIO, AGORA = date(2025, 11, 1), date(2026, 11, 10)
# convenio: nome, registro ANS (ficticio), dias ate o pagamento, chance de glosa por linha, chance de guia negada
CONVENIOS = [("SAUDE LITORAL", "900101", 30, 0.08, 0.01), ("VIDA PLENA ASSISTENCIA", "900202", 45, 0.05, 0.02),
             ("UNIMAIS COOPERATIVA", "900303", 30, 0.03, 0.0)]
# codigo (ficticio, faixa 8xxxxxxx como no MV), descricao, valor da tabela da clinica
CODIGOS = [("80010028", "CONSULTA AMBULATORIAL", 150.0), ("80010036", "RETORNO DE CONSULTA", 0.0),
           ("80020031", "ULTRASSONOGRAFIA ABDOMINAL", 240.0), ("80030010", "HEMOGRAMA COMPLETO", 22.0),
           ("80030029", "GLICEMIA DE JEJUM", 9.0), ("80030037", "COLESTEROL TOTAL E FRACOES", 31.0),
           ("80090013", "ELETROCARDIOGRAMA", 58.0), ("80090021", "TESTE ERGOMETRICO", 210.0)]
# motivo da glosa como a clinica cadastrou na lista 'adjreason' (o OpenEMR grava o option_id no memo do ajuste);
# codigo TISS (tabela 38), peso, fracao glosada (None = linha inteira)
MOTIVOS = [("Glosa 1402 sem autorizacao", "1402", 0.30, None), ("Glosa 1702 duplicidade", "1702", 0.15, None),
           ("Glosa 1705 valor a maior", "1705", 0.35, (0.10, 0.40)), ("Glosa 1213 CBO invalido", "1213", 0.20, None)]
NEGADA = "Glosa 1307 guia invalida"
CID = [("J06.9", "Infeccao aguda das vias aereas superiores"), ("I10", "Hipertensao essencial"),
       ("E11.9", "Diabetes mellitus tipo 2 sem complicacoes"), ("M54.5", "Dor lombar baixa"), ("R51", "Cefaleia")]  # guia inteira negada: claims.status 7 e process_file com o motivo


def _mes_seguinte(d: date) -> date:
    return date(d.year + d.month // 12, d.month % 12 + 1, 1)


def gerar(semente: int = SEMENTE, n_pacientes: int = 0):
    r = random.Random(semente)
    nomes = Gerador(semente)
    tasy = pacientes_tasy()[TASY_INI:TASY_FIM]
    base = tasy + [None] * PROPRIOS
    if n_pacientes:
        base = base[:n_pacientes]
    pacientes, consultas = [], []
    for i, p in enumerate(base):
        if p is None:
            nome, sexo = nomes.nome(), r.choice("MF")
            nasc, cpf = date(r.randint(1940, 2020), r.randint(1, 12), r.randint(1, 28)), _cpf(r)
        else:
            nome, sexo, nasc, cpf = p["NM_PESSOA_FISICA"], p["IE_SEXO"], p["DT_NASCIMENTO"], p["NR_CPF"] or _cpf(r)
        partes = nome.split()
        conv = r.choices([0, 1, 2, None], weights=[35, 30, 20, 15])[0]  # None: particular, sem convenio
        conv2 = r.choice([x for x in (0, 1, 2) if x != conv]) if conv is not None and r.random() < 0.1 else None
        dia = INICIO + timedelta(days=r.randint(0, 120))
        pacientes.append({"ref": i, "fname": partes[0], "lname": " ".join(partes[1:]) or partes[0],
                          "sex": "Male" if sexo == "M" else "Female", "DOB": nasc.isoformat(),
                          "ss": cpf, "convenio": conv, "carteira": f"{r.randint(10**11, 10**12 - 1)}",
                          "vinculo_tasy": p is not None and bool(p["NR_CPF"]), "convenio2": conv2,
                          "carteira2": f"{r.randint(10**11, 10**12 - 1)}",
                          "cadastro": (dia - timedelta(days=r.randint(0, 3))).isoformat()})
        while dia < AGORA:
            linhas = [CODIGOS[0]] + r.sample(CODIGOS[2:], r.choice([0, 0, 1, 2, 3]))
            if len(linhas) > 1 and r.random() < 0.08:  # o mesmo exame duas vezes na consulta (repeticao)
                linhas.append(linhas[-1])
            consultas.append({"ref": len(consultas), "paciente": i, "data": dia.isoformat(), "convenio": conv,
                              "cid": r.choice(CID),
                              # formularios do prontuario: sinais vitais na triagem e evolucao SOAP do medico
                              "vitais": {"bps": r.randint(100, 160), "bpd": r.randint(60, 100),
                                         "pulse": r.randint(55, 110), "weight": round(r.uniform(110, 240), 1),
                                         "temperature": round(r.uniform(96.8, 100.4), 1)} if r.random() < 0.8 else None,
                              "soap": r.random() < 0.6,
                              "linhas": [{"code": c, "text": t, "fee": v, "units": 1} for c, t, v in linhas]})
            if r.random() < 0.04:  # linha lancada por engano e excluida na folha de cobranca (activity = 0)
                c, t, v = r.choice(CODIGOS[2:])
                consultas[-1]["estornada"] = {"code": c, "text": t, "fee": v, "units": 1}
            if r.random() < 0.3 and dia + timedelta(days=14) < AGORA:  # retorno sem cobranca, como no consultorio
                volta = dia + timedelta(days=r.randint(7, 21))
                consultas.append({"ref": len(consultas), "paciente": i, "data": volta.isoformat(), "convenio": conv,
                                  "linhas": [{"code": CODIGOS[1][0], "text": CODIGOS[1][1], "fee": 0.0,
                                              "units": 1}]})
            dia += timedelta(days=int(r.expovariate(1 / 75)) + 20)

    # faturamento: cobranca do convenio no 5o dia do mes seguinte; o demonstrativo volta "dias" depois e e lancado
    # como um pagamento (ar_session) por convenio e mes, com o pago e as glosas de cada linha
    retornos = {}  # um demonstrativo por convenio e competencia
    for c in consultas:
        d = date.fromisoformat(c["data"])
        if c["convenio"] is None:  # particular paga na hora
            c["pagamento_particular"] = d.isoformat() if sum(x["fee"] for x in c["linhas"]) else None
            continue
        envio = _mes_seguinte(d) + timedelta(days=4)
        if envio > AGORA:
            continue
        c["enviada"] = envio.isoformat()
        retorno = retornos.setdefault((c["convenio"], envio),
                                      envio + timedelta(days=CONVENIOS[c["convenio"]][2] + r.randint(-3, 6)))
        if retorno > AGORA:
            continue
        c["retorno"] = retorno.isoformat()
        c["lote"] = f"DEM-{CONVENIOS[c['convenio']][1]}-{d:%Y%m}"
        cobradas = [x for x in c["linhas"] if x["fee"]]
        c["lancamento_errado"] = bool(cobradas) and r.random() < 0.03  # pagamento lancado errado, excluido e relancado
        if r.random() < CONVENIOS[c["convenio"]][4]:
            c["negada"] = NEGADA
            for x in cobradas:
                x["pago"], x["glosa"], x["motivo"] = 0.0, x["fee"], NEGADA
            continue
        for x in cobradas:
            x["pago"], x["glosa"], x["motivo"] = x["fee"], 0.0, None
            if r.random() < CONVENIOS[c["convenio"]][3]:
                m = r.choices(MOTIVOS, weights=[m[2] for m in MOTIVOS])[0]
                g = x["fee"] if m[3] is None else round(x["fee"] * r.uniform(*m[3]), 2)
                x["pago"], x["glosa"], x["motivo"] = round(x["fee"] - g, 2), g, m[0]
    return {"clinica": "CLINICA VALE SUL", "convenios": [{"nome": n, "ans": a} for n, a, *_ in CONVENIOS],
            "codigos": [{"code": c, "text": t, "fee": v} for c, t, v in CODIGOS],
            "motivos": [m[0] for m in MOTIVOS] + [NEGADA], "pacientes": pacientes, "consultas": consultas}


def esperado(roteiro):
    tiss = {m[0]: m[1] for m in MOTIVOS}
    tiss[NEGADA] = "1307"
    conv = defaultdict(lambda: {"cobrado": 0.0, "glosado": 0.0, "linhas": 0, "linhas_glosadas": 0})
    motivo = defaultdict(float)
    for c in roteiro["consultas"]:
        if "retorno" not in c:
            continue
        k = roteiro["convenios"][c["convenio"]]["nome"]
        for x in c["linhas"]:
            if not x["fee"]:
                continue
            conv[k]["cobrado"] += x["fee"]
            conv[k]["glosado"] += x["glosa"]
            conv[k]["linhas"] += 1
            if x["glosa"]:
                conv[k]["linhas_glosadas"] += 1
                motivo[tiss[x["motivo"]]] += x["glosa"]
    for v in conv.values():
        v["cobrado"], v["glosado"] = round(v["cobrado"], 2), round(v["glosado"], 2)
        v["taxa_pct"] = round(100 * v["glosado"] / v["cobrado"], 2)
    return {"pacientes": len(roteiro["pacientes"]),
            "vinculados_tasy": sum(p["vinculo_tasy"] for p in roteiro["pacientes"]),
            "consultas": len(roteiro["consultas"]),
            "glosa_por_convenio": dict(conv), "glosa_por_motivo_tiss": {k: round(v, 2) for k, v in motivo.items()}}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--pacientes", type=int, default=0, help="recorte (0 = todos)")
    a = ap.parse_args()
    rot = gerar(n_pacientes=a.pacientes)
    with open(os.path.join(AQUI, "roteiro.json"), "w", encoding="utf-8") as f:
        json.dump(rot, f, ensure_ascii=False, indent=1)
    esp = esperado(rot)
    with open(os.path.join(AQUI, "..", "esperado.json"), "w", encoding="utf-8") as f:
        json.dump(esp, f, ensure_ascii=False, indent=1)
    print(json.dumps(esp, ensure_ascii=False))


if __name__ == "__main__":
    main()
