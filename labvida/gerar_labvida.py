"""
Sistema de laboratorio simulado (LabVida, ficticio) do mesmo hospital do mock TASY, para demonstrar a conexao de um
sistema que o QIMED nunca viu: Postgres em vez de MariaDB, nomes em minusculas e sem prefixo, CPF com mascara e
sexo por extenso. Nenhuma linha de config/ cita este banco: ele entra pela Central de Conexoes.

Pacientes: os primeiros PACIENTES_TASY do seed do TASY (mesmo nome, sexo, nascimento e CPF) mais PROPRIOS pacientes
que so o laboratorio tem. Quem esta sem CPF no TASY ganha um CPF so aqui e nao casa. O vinculo esperado e exato:
`esperado()["vinculados"]`. Tudo ficticio: nomes, CPFs (so com digito verificador valido), e-mails e telefones.

  python mocks/labvida/gerar_labvida.py            # grava mocks/labvida/sql/02_dados.sql.gz
  python mocks/labvida/gerar_labvida.py --resumo   # contagens e vinculo esperado
"""
import argparse
import gzip
import os
import random
import sys
from datetime import date, datetime, timedelta
from functools import lru_cache
from typing import Any, Dict, List

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(AQUI)), "scripts"))
from gerar_mock_tasy import Gerador, sql_valor  # noqa: E402

SEMENTE = 20261113
SEMENTE_TASY = 20261111  # a do seed versionado em mocks/tasy/sql/02_dados.sql.gz
PACIENTES_TASY, PROPRIOS = 350, 150
SEXO = {"M": "Masculino", "F": "Feminino", "I": "Ignorado"}
INICIO, FIM = datetime(2026, 5, 1), datetime(2026, 11, 10, 18, 0)
CONVENIOS = ["Particular", "Unimed", "Bradesco Saude", "SulAmerica", "SUS"]
# codigo, descricao, unidade, media, desvio
EXAMES = [("HB", "Hemoglobina", "g/dL", 13.5, 1.6), ("GLI", "Glicose de jejum", "mg/dL", 98, 18),
          ("CREA", "Creatinina", "mg/dL", 1.0, 0.3), ("PCR", "Proteina C reativa", "mg/L", 6, 5),
          ("K", "Potassio", "mmol/L", 4.2, 0.5), ("TSH", "Hormonio tireoestimulante", "mUI/L", 2.1, 1.0)]


def _cpf(r: random.Random) -> str:
    d = [r.randint(0, 9) for _ in range(9)]
    for n in (10, 11):
        s = sum(x * (n - i) for i, x in enumerate(d)) % 11
        d.append(0 if s < 2 else 11 - s)
    return "".join(map(str, d))


def _mascara(cpf: str) -> str:
    return f"{cpf[:3]}.{cpf[3:6]}.{cpf[6:9]}-{cpf[9:]}"


@lru_cache(maxsize=1)
def pacientes_tasy() -> List[Dict[str, Any]]:
    """PESSOA_FISICA dos pacientes do seed: gerar() inteiro, porque cada add() consome o RNG do TASY."""
    return [p for p in Gerador(SEMENTE_TASY).gerar()["PESSOA_FISICA"] if p["IE_FUNCIONARIO"] == "N"]


def gerar(semente: int = SEMENTE) -> Dict[str, List[Dict[str, Any]]]:
    r = random.Random(semente)
    base_nomes = Gerador(semente)  # so para nome(): RNG proprio, nao mexe no do TASY
    pacientes, pedidos, resultados, log = [], [], [], []
    for i, p in enumerate(pacientes_tasy()[:PACIENTES_TASY] + [None] * PROPRIOS):
        criado = INICIO - timedelta(days=r.randint(0, 120))
        if p is None:
            idade = min(95, int(r.expovariate(1 / 40)))
            nome, sexo, nasc, cpf = base_nomes.nome(), r.choice("MF"), \
                date(2026 - idade, r.randint(1, 12), r.randint(1, 28)), _cpf(r)
        else:
            nome, sexo, nasc, cpf = p["NM_PESSOA_FISICA"], p["IE_SEXO"], p["DT_NASCIMENTO"], p["NR_CPF"] or _cpf(r)
        login = nome.lower().split()[0]
        pacientes.append({"id_paciente": i + 1, "nome_completo": nome, "cpf": _mascara(cpf), "dt_nasc": nasc,
                          "sexo": SEXO[sexo], "email": f"{login}{i + 1}@exemplo.com.br",
                          "celular": f"(51) 9{r.randint(1000, 9999)}-{r.randint(1000, 9999)}",
                          "convenio": r.choice(CONVENIOS), "criado_em": criado,
                          "atualizado_em": criado + timedelta(days=r.randint(0, 30))})
    for pac in pacientes:
        for _ in range(r.choice([1, 1, 2, 3, 4])):
            dt = INICIO + timedelta(minutes=r.randint(0, int((FIM - INICIO).total_seconds() // 60)))
            situacao = r.choices(["Liberado", "Coletado", "Cancelado"], [0.85, 0.1, 0.05])[0]
            id_pedido = len(pedidos) + 1
            pedidos.append({"id_pedido": id_pedido, "id_paciente": pac["id_paciente"], "dt_pedido": dt,
                            "crm_solicitante": str(r.randint(10000, 99999)), "convenio": pac["convenio"],
                            "situacao": situacao, "atualizado_em": dt + timedelta(hours=r.randint(1, 30))})
            if situacao != "Liberado":
                continue
            for cod, desc, un, media, dp in r.sample(EXAMES, r.randint(1, 4)):
                lib = dt + timedelta(hours=r.randint(2, 24))
                resultados.append({"id_resultado": len(resultados) + 1, "id_pedido": id_pedido, "cod_exame": cod,
                                   "descricao_exame": desc, "valor": round(max(0.1, r.gauss(media, dp)), 2),
                                   "unidade": un, "dt_liberacao": lib, "atualizado_em": lib})
    for k in range(120):  # sem PK: a descoberta cataloga e o onboarding pula
        log.append({"dt_evento": INICIO + timedelta(hours=37 * k), "origem": r.choice(["HL7", "API", "batch"]),
                    "mensagem": r.choice(["ok", "timeout", "reprocessado"])})
    return {"paciente_cadastro": pacientes, "pedido_exame": pedidos, "resultado_exame": resultados,
            "log_integracao": log}


def esperado() -> Dict[str, int]:
    """Pacientes do laboratorio que tem o mesmo CPF de um paciente do TASY."""
    return {"pacientes": PACIENTES_TASY + PROPRIOS,
            "vinculados": sum(1 for p in pacientes_tasy()[:PACIENTES_TASY] if p["NR_CPF"])}


def escrever(tabelas, caminho: str, semente: int):
    with gzip.open(caminho, "wt", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por mocks/labvida/gerar_labvida.py (semente {semente}). Nao edite a mao.\n")
        for tabela, linhas in tabelas.items():
            colunas = list(linhas[0])
            f.write(f"\n-- {tabela}: {len(linhas)} linhas\n")
            for i in range(0, len(linhas), 500):
                valores = ",\n".join("(" + ", ".join(sql_valor(l[c]) for c in colunas) + ")"
                                     for l in linhas[i:i + 500])
                f.write(f"INSERT INTO {tabela} ({', '.join(colunas)}) VALUES\n{valores};\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--saida", default=os.path.join(AQUI, "sql", "02_dados.sql.gz"))
    ap.add_argument("--resumo", action="store_true")
    a = ap.parse_args()
    tabelas = gerar()
    print({t: len(l) for t, l in tabelas.items()}, esperado())
    if not a.resumo:
        escrever(tabelas, a.saida, SEMENTE)


if __name__ == "__main__":
    main()
