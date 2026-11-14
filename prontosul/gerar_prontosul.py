"""
Pronto-atendimento simulado (ProntoSul, ficticio) do mesmo hospital do mock TASY, em Oracle: o caso mais parecido com
um HIS real (schema de outro usuario, nomes em maiusculas, DATE do Oracle, chave composta). Nenhuma linha de config/
cita este banco: ele entra pela Central de Conexoes. Tudo ficticio.

Pacientes: os primeiros PACIENTES_TASY do seed do TASY (mesmo CPF, sem mascara) mais PROPRIOS. Vinculo esperado:
`esperado()["vinculados"]`.

  python mocks/prontosul/gerar_prontosul.py            # grava mocks/prontosul/sql/02_dados.sql
  python mocks/prontosul/gerar_prontosul.py --resumo
"""
import argparse
import os
import random
import sys
from datetime import date, datetime, timedelta
from typing import Any, Dict, List

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(AQUI), "labvida"))
from gerar_labvida import Gerador, _cpf, pacientes_tasy  # noqa: E402

SEMENTE = 20261116
PACIENTES_TASY, PROPRIOS = 200, 60
INICIO, FIM = datetime(2026, 6, 1), datetime(2026, 11, 10, 18, 0)  # FIM no passado: data futura trava o watermark
RISCO = (["Vermelho", "Laranja", "Amarelo", "Verde", "Azul"], [0.05, 0.15, 0.35, 0.35, 0.10])
CIDS = ["J069", "R509", "R104", "A090", "M545", "S934", "N390", "I10", "J189", "R51"]
ITENS = ["Dipirona 1g EV", "Soro fisiologico 500 mL", "Ondansetrona 8 mg EV", "Cetoprofeno 100 mg EV",
         "Omeprazol 40 mg EV", "Hidratacao oral", "Dexametasona 4 mg IM", "Raio-X de torax"]


def gerar(semente: int = SEMENTE) -> Dict[str, List[Dict[str, Any]]]:
    r = random.Random(semente)
    nomes = Gerador(semente)
    pacientes, atendimentos, itens = [], [], []
    for i, p in enumerate(pacientes_tasy()[:PACIENTES_TASY] + [None] * PROPRIOS):
        cad = INICIO - timedelta(days=r.randint(0, 200))
        if p is None:
            nome, sexo, nasc, cpf = nomes.nome(), r.choice("MF"), date(r.randint(1935, 2020), r.randint(1, 12),
                                                                       r.randint(1, 28)), _cpf(r)
        else:
            nome, sexo, nasc, cpf = p["NM_PESSOA_FISICA"], p["IE_SEXO"], p["DT_NASCIMENTO"], p["NR_CPF"] or _cpf(r)
        pacientes.append({"cd_paciente": 1000 + i, "nm_paciente": nome.upper(), "nr_cpf": cpf,
                          "dt_nascimento": nasc, "tp_sexo": sexo,
                          "ds_email": f"{nome.lower().split()[0]}.{i}@exemplo.com.br",
                          "dt_cadastro": cad, "dt_atualizacao": cad + timedelta(days=r.randint(0, 60))})
    for pac in pacientes:
        for _ in range(r.choice([1, 1, 1, 2, 3])):
            ent = INICIO + timedelta(minutes=r.randint(0, int((FIM - INICIO).total_seconds() // 60)))
            alta = None if r.random() < 0.03 else ent + timedelta(minutes=r.randint(40, 600))
            cd = 50000 + len(atendimentos)
            atendimentos.append({"cd_atendimento": cd, "cd_paciente": pac["cd_paciente"], "dt_entrada": ent,
                                 "dt_alta": alta, "ds_classificacao_risco": r.choices(*RISCO)[0],
                                 "cd_cid": r.choice(CIDS), "dt_atualizacao": alta or ent})
            for n, item in enumerate(r.sample(ITENS, r.randint(1, 4)), 1):
                itens.append({"cd_prescricao": cd * 10, "nr_item": n, "cd_atendimento": cd, "ds_item": item,
                              "dt_atualizacao": ent + timedelta(minutes=10)})
    return {"paciente": pacientes, "atendimento_pa": atendimentos, "prescricao_item": itens}


def esperado() -> Dict[str, int]:
    return {"pacientes": PACIENTES_TASY + PROPRIOS,
            "vinculados": sum(1 for p in pacientes_tasy()[:PACIENTES_TASY] if p["NR_CPF"])}


def valor_oracle(v: Any) -> str:
    if v is None:
        return "NULL"
    if isinstance(v, datetime):
        return f"TO_DATE('{v:%Y-%m-%d %H:%M:%S}', 'YYYY-MM-DD HH24:MI:SS')"
    if isinstance(v, date):
        return f"DATE '{v:%Y-%m-%d}'"
    if isinstance(v, (int, float)):
        return str(v)
    return "'" + str(v).replace("'", "''") + "'"


def escrever(tabelas, caminho: str):
    with open(caminho, "w", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por mocks/prontosul/gerar_prontosul.py (semente {SEMENTE}). Nao edite a mao.\n"
                "ALTER SESSION SET CONTAINER = FREEPDB1;\nALTER SESSION SET CURRENT_SCHEMA = prontosul;\n")
        for tabela, linhas in tabelas.items():
            colunas = list(linhas[0])
            f.write(f"\n-- {tabela}: {len(linhas)} linhas\n")
            for i in range(0, len(linhas), 200):  # Oracle 23ai aceita VALUES com varias linhas
                valores = ",\n".join("(" + ", ".join(valor_oracle(l[c]) for c in colunas) + ")"
                                     for l in linhas[i:i + 200])
                f.write(f"INSERT INTO {tabela} ({', '.join(colunas)}) VALUES\n{valores};\n")
        f.write("COMMIT;\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--saida", default=os.path.join(AQUI, "sql", "02_dados.sql"))
    ap.add_argument("--resumo", action="store_true")
    a = ap.parse_args()
    tabelas = gerar()
    print({t: len(l) for t, l in tabelas.items()}, esperado())
    if not a.resumo:
        escrever(tabelas, a.saida)


if __name__ == "__main__":
    main()
