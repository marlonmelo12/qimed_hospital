"""Popula o OpenELIS Global pela API REST do proprio produto, com o roteiro do LabVida (mesma semente).

Os mesmos endpoints que as telas Add Patient, Add Order, Results e Validation chamam (o fluxo dos helpers de seed
dos testes Playwright do OpenELIS): cada paciente, pedido e resultado passa pelas validacoes do produto.

  python popular.py [--base URL] [--pacientes N]   # --pacientes: ensaio com os N primeiros

Roda na fabrica (fabricar.sh), num python:3.12-slim na rede da aplicacao. So biblioteca padrao.
"""
import argparse
import http.cookiejar
import json
import os
import ssl
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from datetime import date

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(AQUI, "..", "..", "labvida"))
from gerar_labvida import EXAMES, PACIENTES_TASY, gerar, pacientes_tasy  # noqa: E402

# exame do roteiro do LabVida -> exame numerico em soro do catalogo de fabrica do OpenELIS (id, media, desvio na
# unidade do OpenELIS). O valor guarda o desvio do roteiro: z = (valor - media) / desvio, aplicado aqui.
SORO = "2"
CATALOGO = {"HB": ("1", 25, 10),      # GPT/ALAT, UI/L
            "GLI": ("2", 28, 10),     # GOT/ASAT, UI/L
            "CREA": ("4", 9, 2.5),    # Creatinine, mg/l
            "PCR": ("5", 70, 25),     # Amylase, UI/L
            "K": ("7", 1.8, 0.35),    # Cholesterol total, g/l
            "TSH": ("9", 1.2, 0.5)}   # Triglycerides, g/l
LV = {cod: (media, dp) for cod, _, _, media, dp in EXAMES}


class Api:
    def __init__(self, base: str):
        self.base = base.rstrip("/")
        self.op = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(http.cookiejar.CookieJar()),
                                              urllib.request.HTTPSHandler(context=ssl._create_unverified_context()))
        self.op.open(self.base + "/LoginPage").read()
        self.op.open(self.base + "/ValidateLogin",
                     urllib.parse.urlencode({"loginName": "admin", "password": "adminADMIN!"}).encode()).read()
        sessao = json.loads(self.op.open(self.base + "/session").read())
        assert sessao.get("authenticated"), "login do admin falhou"
        self.csrf = sessao["csrf"]

    def __call__(self, caminho: str, corpo=None):
        req = urllib.request.Request(self.base + "/rest/" + caminho,
                                     data=None if corpo is None else json.dumps(corpo).encode(),
                                     headers={"Content-Type": "application/json", "Accept": "application/json",
                                              "X-CSRF-Token": self.csrf})
        try:
            texto = self.op.open(req).read().decode()
        except urllib.error.HTTPError as e:
            raise RuntimeError(f"{caminho}: HTTP {e.code} {e.read().decode()[:400]}") from None
        return json.loads(texto) if texto[:1] in "{[" else texto


def _data(d) -> str:
    return d.strftime("%d/%m/%Y")


def _passado(d):
    # o roteiro (e o seed do TASY) sorteia o mes de quem nasceu em 2026 e pode cair depois de hoje; o OpenELIS recusa
    # nascimento no futuro. Sao 2 pacientes; o vinculo e so pelo CPF, entao nao muda.
    return d.replace(year=d.year - 1) if d > date.today() else d


def _amostra(dt, testes) -> str:
    return ("<?xml version=\"1.0\" encoding=\"utf-8\"?><samples>"
            f"<sample sampleID='{SORO}' date='{_data(dt)}' time='{dt:%H:%M}' collector='' quantity='' uom='' "
            f"tests='{','.join(testes)}' testSectionMap='' testSampleTypeMap='' panels='' rejected='false' "
            "rejectReasonId='' initialConditionIds='' storageLocationId='' storageLocationType='' "
            "storagePositionCoordinate='' gpsLatitude='' gpsLongitude='' gpsAccuracy='' gpsCaptureMethod='' "
            "numOrderLabels='1' numSpecimenLabels='1'/></samples>")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--base", default="https://oe.openelis.org:8443/OpenELIS-Global")
    ap.add_argument("--pacientes", type=int, default=0)
    a = ap.parse_args()
    api = Api(a.base)
    t = gerar()
    pacientes = t["paciente_cadastro"][:a.pacientes or None]
    ids = {p["id_paciente"] for p in pacientes}
    pedidos = [p for p in t["pedido_exame"] if p["id_paciente"] in ids]
    resultados = {}
    for r in t["resultado_exame"]:
        resultados.setdefault(r["id_pedido"], []).append(r)

    pk, props = {}, {}
    for p in pacientes:
        nome = p["nome_completo"].upper().split()
        cpf = "".join(c for c in p["cpf"] if c.isdigit())  # o OpenELIS so aceita letra, digito, - e / no documento
        props[p["id_paciente"]] = {"firstName": nome[0], "lastName": " ".join(nome[1:]), "nationalId": cpf,
                                   "gender": "F" if p["sexo"] == "Feminino" else "M",
                                   "birthDateForDisplay": _data(_passado(p["dt_nasc"]))}
        r = api("PatientManagement", {"patientPK": "", "patientUpdateStatus": "ADD", "subjectNumber": "",
                                      "idDocuments": [], **props[p["id_paciente"]],
                                      "patientContact": {"person": {"firstName": "", "lastName": "",
                                                                    "primaryPhone": "", "email": ""}}})
        pk[p["id_paciente"]] = str(r["patientId"])
    print(f"{len(pk)} pacientes", flush=True)

    feitos = {"pedidos": 0, "liberados": 0, "resultados": 0, "cancelados_fora": 0}
    inicio = time.time()
    for n, ped in enumerate(pedidos, 1):
        if ped["situacao"] == "Cancelado":  # shortcut: o cancelamento do OpenELIS nao foi reproduzido; o pedido nao entra
            feitos["cancelados_fora"] += 1
            continue
        res = resultados.get(ped["id_pedido"], [])
        testes = [CATALOGO[r["cod_exame"]][0] for r in res] or [CATALOGO["CREA"][0]]  # coletado: creatinina pendente
        form = api("SamplePatientEntry")
        labno = api("SampleEntryGenerateScanProvider")["body"]
        recebido = ped["dt_pedido"]
        api("SamplePatientEntry", {
            "rememberSiteAndRequester": False, "currentDate": form["currentDate"], "patientUpdateStatus": "NO_ACTION",
            "referralItems": [], "warning": False, "useReferral": False, "sampleXML": _amostra(recebido, testes),
            "patientProperties": {"patientPK": pk[ped["id_paciente"]], "patientUpdateStatus": "NO_ACTION",
                                  **props[ped["id_paciente"]]},
            "sampleOrderItems": {"labNo": labno, "requestDate": _data(recebido),
                                 "receivedDateForDisplay": _data(recebido), "receivedTime": f"{recebido:%H:%M}",
                                 "nextVisitDate": "", "priority": "ROUTINE", "referringSiteId": "", "providerId": "",
                                 "providerPersonId": "", "programId": "", "modified": True, "sampleId": ""},
            "initialSampleConditionList": [], "testSectionList": []})
        feitos["pedidos"] += 1
        if res:
            valor = {}
            for r in res:
                tid, media, dp = CATALOGO[r["cod_exame"]]
                m_lv, dp_lv = LV[r["cod_exame"]]
                valor[tid] = f"{max(0.1, media + (r['valor'] - m_lv) / dp_lv * dp):.2f}"
            lb = api(f"LogbookResults?labNumber={labno}")
            for m in lb["testResult"]:
                m["resultValue"] = m["shadowResultValue"] = valor[str(m["testId"])]
                m["isModified"], m["reportable"] = True, m.get("reportable") != "N"
                m["criticalAcknowledged"] = m["invalidResultConfirmed"] = True
                m.pop("result", None)
            api("LogbookResults", lb)
            v = api(f"AccessionValidation?accessionNumber={labno}")
            for i in v["resultList"]:
                i["isAccepted"] = True
            api("AccessionValidation", v)
            feitos["liberados"] += 1
            feitos["resultados"] += len(res)
        if n % 100 == 0:
            print(f"{n}/{len(pedidos)} pedidos ({time.time() - inicio:.0f} s)", flush=True)

    # o i-esimo paciente do roteiro e o i-esimo do TASY ate PACIENTES_TASY; casa quem tem CPF no TASY
    vinculados = sum(1 for p in pacientes_tasy()[:min(len(pk), PACIENTES_TASY)] if p["NR_CPF"])
    esperado = {"pacientes": len(pk), "vinculados": vinculados, **feitos}
    with open(os.path.join(AQUI, "..", "esperado.json"), "w", encoding="utf-8", newline="\n") as f:
        json.dump(esperado, f, ensure_ascii=False)
        f.write("\n")
    print(json.dumps(esperado))


if __name__ == "__main__":
    main()
