"""
Prontuario eletronico simulado em FHIR R4 do mesmo hospital do mock TASY (mocks/tasy), com ids proprios.

Os pacientes sao os do TASY (nome, sexo, nascimento e CPF do seed). Quem esta sem CPF no TASY ganha um CPF so no
PEP, como acontece quando o HIS deixa o documento em branco: esses nao casam entre os sistemas.
Gera Patient, Encounter, Condition e Observation (sinais vitais diarios das internacoes), deterministico pela
semente. Tudo ficticio: nomes, CPFs (so com digito verificador valido), telefones e enderecos.

  python mocks/pep_fhir/gerar_pep.py --carregar http://pep-fhir:8080/fhir   # PUT em transacoes de 500
  python mocks/pep_fhir/gerar_pep.py --resumo                               # contagens, sem carregar
"""
import argparse
import json
import os
import random
import sys
from collections import Counter
from datetime import datetime, timedelta
from functools import lru_cache
from typing import Any, Dict, List

sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__)))), "scripts"))
from gerar_mock_tasy import Gerador  # noqa: E402

SEMENTE = 20261112
SEMENTE_TASY = 20261111  # a do seed versionado em mocks/tasy/sql/02_dados.sql.gz
CPF_SYSTEM = "urn:oid:2.16.840.1.113883.13.237"
SEXO = {"M": "male", "F": "female", "I": "unknown"}
INICIO, FIM = datetime(2026, 5, 1), datetime(2026, 11, 10, 18, 0)
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


@lru_cache(maxsize=1)
def pacientes_tasy() -> List[Dict[str, Any]]:
    """PESSOA_FISICA dos pacientes do seed: gerar() inteiro, porque cada add() consome o RNG do TASY."""
    return [p for p in Gerador(SEMENTE_TASY).gerar()["PESSOA_FISICA"] if p["IE_FUNCIONARIO"] == "N"]


def gerar(semente: int = SEMENTE, pacientes: int = 400) -> List[Dict[str, Any]]:
    r = random.Random(semente)
    out: List[Dict[str, Any]] = [{
        "resourceType": "Organization", "id": "hosp-9990001", "name": "Hospital Simulado Rede Sul",
        "identifier": [{"system": "https://saude.gov.br/fhir/sid/cnes", "value": "9990001"}]}]
    for i, p in enumerate(pacientes_tasy()[:pacientes], start=1):
        nome = p["NM_PESSOA_FISICA"].split()
        out.append({
            "resourceType": "Patient", "id": f"p-{i:04d}",
            "identifier": [{"system": CPF_SYSTEM, "value": p["NR_CPF"] or _cpf(r)}],
            "name": [{"family": " ".join(nome[1:]), "given": [nome[0]]}],
            "telecom": [{"system": "phone", "value": p["NR_TELEFONE_CELULAR"], "use": "mobile"}],
            "gender": SEXO[p["IE_SEXO"]],
            "birthDate": p["DT_NASCIMENTO"].isoformat(),
            "address": [{"city": "Porto Alegre", "state": "RS", "postalCode": f"9{r.randint(1000000, 1999999)}"}],
        })
    n_enc = 0
    for i in range(1, len(out)):
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
                "serviceProvider": {"reference": "Organization/hosp-9990001"},
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
