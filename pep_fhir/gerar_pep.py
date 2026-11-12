"""
Prontuario eletronico simulado em FHIR R4: segundo hospital da rede (CNES ficticio 9990002), com PEP proprio.

Gera Patient, Encounter, Condition e Observation (sinais vitais diarios das internacoes), deterministico pela
semente. Tudo ficticio: nomes, CPFs (so com digito verificador valido), telefones e enderecos.

  python mocks/pep_fhir/gerar_pep.py --carregar http://pep-fhir:8080/fhir   # PUT em transacoes de 500
  python mocks/pep_fhir/gerar_pep.py --resumo                               # contagens, sem carregar
"""
import argparse
import json
import random
from collections import Counter
from datetime import datetime, timedelta
from typing import Any, Dict, List

SEMENTE = 20261112
INICIO, FIM = datetime(2026, 5, 1), datetime(2026, 11, 10, 18, 0)
NOMES = ["Ana", "Bruno", "Carla", "Diego", "Elisa", "Fábio", "Gabriela", "Hugo", "Isabel", "João", "Karina",
         "Lucas", "Marina", "Nelson", "Olívia", "Paulo", "Renata", "Sérgio", "Tânia", "Vitor"]
SOBRENOMES = ["Almeida", "Barros", "Costa", "Dias", "Esteves", "Farias", "Gomes", "Lopes", "Moura", "Nunes",
              "Pires", "Rocha", "Souza", "Teixeira", "Vieira"]
CID = "http://hl7.org/fhir/sid/icd-10"
ACT = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
# (classe, peso, CIDs, permanencia mediana em dias)
PERFIS = [("IMP", 0.30, ["J18.9", "I50.9", "N39.0", "K35.8", "O80", "S72.0"], 4),
          ("EMER", 0.45, ["R10.4", "J06.9", "S93.4", "R51", "A09"], 0.2),
          ("AMB", 0.25, ["I10", "E11.9", "M54.5", "Z00.0"], 0.05)]
ESPECIALIDADES = {"IMP": "clinica-medica", "EMER": "emergencia", "AMB": "ambulatorio"}
# LOINC, descricao, unidade, media, desvio
SINAIS = [("8867-4", "Frequência cardíaca", "/min", 82, 12), ("59408-5", "SpO2", "%", 96, 2),
          ("9279-1", "Frequência respiratória", "/min", 18, 3), ("8310-5", "Temperatura", "Cel", 36.8, 0.6)]


def _cpf(r: random.Random) -> str:
    d = [r.randint(0, 9) for _ in range(9)]
    for n in (10, 11):
        s = sum(x * (n - i) for i, x in enumerate(d)) % 11
        d.append(0 if s < 2 else 11 - s)
    return "".join(map(str, d))


def _iso(dt: datetime) -> str:
    return dt.strftime("%Y-%m-%dT%H:%M:%S-03:00")


def gerar(semente: int = SEMENTE, pacientes: int = 400) -> List[Dict[str, Any]]:
    r = random.Random(semente)
    out: List[Dict[str, Any]] = [{
        "resourceType": "Organization", "id": "hosp-9990002", "name": "Hospital Simulado Rede Sul - Unidade Norte",
        "identifier": [{"system": "https://saude.gov.br/fhir/sid/cnes", "value": "9990002"}]}]
    for i in range(1, pacientes + 1):
        nasc = datetime(r.randint(1935, 2024), r.randint(1, 12), r.randint(1, 28))
        out.append({
            "resourceType": "Patient", "id": f"p-{i:04d}",
            "identifier": [{"system": "urn:oid:2.16.840.1.113883.13.237", "value": _cpf(r)}],
            "name": [{"family": r.choice(SOBRENOMES), "given": [r.choice(NOMES)]}],
            "telecom": [{"system": "phone", "value": f"519{r.randint(10000000, 99999999)}", "use": "mobile"}],
            "gender": r.choices(["male", "female", "unknown"], [0.48, 0.5, 0.02])[0],
            "birthDate": nasc.date().isoformat(),
            "address": [{"city": "Porto Alegre", "state": "RS", "postalCode": f"9{r.randint(1000000, 1999999)}"}],
        })
    n_enc = 0
    for i in range(1, pacientes + 1):
        for _ in range(r.choice([1, 1, 2, 2, 3, 4])):
            classe, _, cids, mediana = r.choices(PERFIS, [p[1] for p in PERFIS])[0]
            entrada = INICIO + timedelta(seconds=r.randint(0, int((FIM - INICIO).total_seconds())))
            dias = max(0.02, r.lognormvariate(0, 0.6) * mediana)
            alta = entrada + timedelta(days=dias)
            aberto = alta > FIM
            obito = classe == "IMP" and not aberto and r.random() < 0.04
            n_enc += 1
            eid, cid = f"e-{n_enc:05d}", r.choice(cids)
            enc = {
                "resourceType": "Encounter", "id": eid,
                "status": "in-progress" if aberto else "finished",
                "class": {"system": ACT, "code": classe},
                "priority": {"coding": [{"system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
                                         "code": "EL" if classe == "AMB" or r.random() < 0.3 else "UR"}]},
                "serviceType": {"coding": [{"code": ESPECIALIDADES[classe]}]},
                "subject": {"reference": f"Patient/p-{i:04d}"},
                "period": {"start": _iso(entrada), **({} if aberto else {"end": _iso(alta)})},
                "reasonCode": [{"coding": [{"system": CID, "code": cid}]}],
                "serviceProvider": {"reference": "Organization/hosp-9990002"},
            }
            if not aberto:
                enc["hospitalization"] = {"dischargeDisposition": {"coding": [{
                    "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
                    "code": "exp" if obito else r.choices(["home", "other-hcf"], [0.93, 0.07])[0]}]}}
            out.append(enc)
            out.append({
                "resourceType": "Condition", "id": f"c-{n_enc:05d}",
                "clinicalStatus": {"coding": [{"code": "active" if aberto else "resolved"}]},
                "category": [{"coding": [{"code": "encounter-diagnosis"}]}],
                "code": {"coding": [{"system": CID, "code": cid}]},
                "subject": {"reference": f"Patient/p-{i:04d}"}, "encounter": {"reference": f"Encounter/{eid}"},
                "recordedDate": _iso(entrada + timedelta(hours=1)),
            })
            if classe == "IMP":  # sinais vitais as 8h de cada dia internado
                dia = entrada.replace(hour=8, minute=0, second=0) + timedelta(days=1)
                n_obs = 0
                while dia < min(alta, FIM):
                    for loinc, desc, unidade, media, dp in SINAIS:
                        n_obs += 1
                        out.append({
                            "resourceType": "Observation", "id": f"o-{n_enc:05d}-{n_obs:03d}", "status": "final",
                            "category": [{"coding": [{"code": "vital-signs"}]}],
                            "code": {"coding": [{"system": "http://loinc.org", "code": loinc, "display": desc}]},
                            "subject": {"reference": f"Patient/p-{i:04d}"},
                            "encounter": {"reference": f"Encounter/{eid}"},
                            "effectiveDateTime": _iso(dia),
                            "valueQuantity": {"value": round(r.gauss(media, dp), 1), "unit": unidade},
                        })
                    dia += timedelta(days=1)
    return out


def carregar(base: str, recursos: List[Dict[str, Any]], lote: int = 500) -> None:
    import requests
    for i in range(0, len(recursos), lote):
        bundle = {"resourceType": "Bundle", "type": "transaction", "entry": [
            {"resource": x, "request": {"method": "PUT", "url": f"{x['resourceType']}/{x['id']}"}}
            for x in recursos[i:i + lote]]}
        resp = requests.post(base.rstrip("/"), json=bundle, headers={"Content-Type": "application/fhir+json"},
                             timeout=300)
        resp.raise_for_status()
        print(f"{min(i + lote, len(recursos))}/{len(recursos)}")


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--carregar", metavar="BASE_URL")
    ap.add_argument("--resumo", action="store_true")
    a = ap.parse_args()
    recursos = gerar()
    if a.carregar:
        carregar(a.carregar, recursos)
    print(json.dumps(Counter(x["resourceType"] for x in recursos)))
