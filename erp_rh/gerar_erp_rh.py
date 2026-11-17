"""
ERP de RH e ponto simulado (ficticio) do hospital do mock TASY, para demonstrar que um ERP conectado pela Central de
Conexoes alimenta o modelo de absenteismo sem nenhuma linha em config/.

Escala 12x36: por setor, 4 equipes (dia/noite em dias pares/impares) de 1 medico, 2 enfermeiros e 3 tecnicos. Um
ano de plantoes realizados ate FIM e 14 dias de escala futura ('Escalado'). A ausencia (Falta ou Atestado) tem sinal
para o modelo aprender: segunda e sexta, noite, UTI, semana com mais de 48 h e propensao propria de cada pessoa.
Colaborador tem CPF e nascimento de proposito: o onboarding nao pode confundi-lo com paciente.
Tudo ficticio: nomes e CPFs (so com digito verificador valido).

  python mocks/erp_rh/gerar_erp_rh.py            # grava mocks/erp_rh/sql/02_dados.sql.gz
  python mocks/erp_rh/gerar_erp_rh.py --resumo   # contagens e taxa de ausencia
"""
import argparse
import gzip
import math
import os
import random
import sys
from datetime import date, datetime, timedelta
from typing import Any, Dict, List

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(AQUI), "tasy"))
from gerar_mock_tasy import Gerador, sql_valor  # noqa: E402

SEMENTE = 20261114
INICIO, FIM = date(2025, 11, 11), date(2026, 11, 10)  # 12 competencias realizadas
FUTURO_DIAS = 14
SETORES = [(10, "Pronto-Socorro", 1.0), (20, "Clinica Medica", 0.9), (30, "Clinica Cirurgica", 0.9),
           (40, "UTI Adulto", 1.35), (50, "Pediatria", 0.8)]
EQUIPE = [("Medico", 1, 0.6), ("Enfermeiro", 2, 0.9), ("Tecnico de Enfermagem", 3, 1.15)]  # cargo, qtde, risco
TAXA_BASE = 0.055
DOW = {0: 1.35, 1: 0.95, 2: 0.9, 3: 0.95, 4: 1.25, 5: 1.0, 6: 1.05}  # segunda e sexta mais altas


def _cpf(r: random.Random) -> str:
    d = [r.randint(0, 9) for _ in range(9)]
    for n in (10, 11):
        s = sum(x * (n - i) for i, x in enumerate(d)) % 11
        d.append(0 if s < 2 else 11 - s)
    return "".join(map(str, d))


def gerar(semente: int = SEMENTE) -> Dict[str, List[Dict[str, Any]]]:
    r = random.Random(semente)
    nomes = Gerador(semente)  # so para nome(): RNG proprio
    setores = [{"cod_setor": c, "descricao": d, "centro_custo": f"CC{c:03d}"} for c, d, _ in SETORES]
    colaboradores, equipes = [], {}  # (setor, equipe) -> [(matricula, cargo, risco)]
    for cod, _, _ in SETORES:
        for eq in range(4):
            for cargo, qtd, risco in EQUIPE:
                for _ in range(qtd):
                    m = 10001 + len(colaboradores)
                    idade = r.randint(22, 60)
                    colaboradores.append({
                        "matricula": m, "nome": nomes.nome(), "cpf": _cpf(r),
                        "dt_nascimento": date(2026 - idade, r.randint(1, 12), r.randint(1, 28)),
                        "sexo": r.choice("FFFM") if cargo != "Medico" else r.choice("FM"), "cargo": cargo,
                        "cod_setor": cod, "dt_admissao": INICIO - timedelta(days=r.randint(60, 4000)),
                        "situacao_cadastral": "Ativo"})
                    # propensao individual: a maioria perto de 1, poucos bem acima
                    equipes.setdefault((cod, eq), []).append((m, risco * math.exp(r.gauss(0, 0.45))))
    peso_setor = {c: p for c, _, p in SETORES}
    escala, horas_semana = [], {}
    dia = INICIO
    while dia <= FIM + timedelta(days=FUTURO_DIAS):
        for cod, _, _ in SETORES:
            for noturno in (False, True):
                eq = (dia.toordinal() % 2) * 2 + int(noturno)  # 12x36: cada equipe trabalha em dias alternados
                ini = datetime.combine(dia, datetime.min.time()) + timedelta(hours=19 if noturno else 7)
                fim = ini + timedelta(hours=12)
                for m, propensao in equipes[(cod, eq)]:
                    semana = (m, dia.isocalendar()[:2])
                    horas_semana[semana] = horas_semana.get(semana, 0) + 12
                    futuro = dia > FIM
                    p = TAXA_BASE * propensao * peso_setor[cod] * DOW[dia.weekday()] * (1.2 if noturno else 1.0) \
                        * (1.4 if horas_semana[semana] > 48 else 1.0)
                    situacao = "Escalado" if futuro else ("Trabalhado" if r.random() >= p
                                                          else r.choices(["Falta", "Atestado"], [0.45, 0.55])[0])
                    atraso = timedelta(minutes=max(-15, int(r.gauss(3, 8))))
                    presente = situacao == "Trabalhado"
                    escala.append({
                        "id_marcacao": len(escala) + 1, "matricula": m, "cod_setor": cod,
                        "dt_entrada_prevista": ini, "dt_saida_prevista": fim,
                        "dt_entrada_registrada": ini + atraso if presente else None,
                        "dt_saida_registrada": fim + timedelta(minutes=r.randint(0, 40)) if presente else None,
                        "situacao": situacao,
                        "dt_alteracao": (fim if not futuro else datetime.combine(FIM, datetime.min.time()))
                        + timedelta(hours=r.randint(1, 20))})
        dia += timedelta(days=1)
    return {"setor": setores, "colaborador": colaboradores, "escala_ponto": escala}


def esperado(tabelas=None) -> Dict[str, Any]:
    e = (tabelas or gerar())["escala_ponto"]
    realizados = [x for x in e if x["situacao"] != "Escalado"]
    aus = sum(x["situacao"] in ("Falta", "Atestado") for x in realizados)
    return {"plantoes": len(e), "realizados": len(realizados), "futuros": len(e) - len(realizados),
            "ausencias": aus, "taxa_ausencia_pct": round(100 * aus / len(realizados), 2)}


def escrever(tabelas, caminho: str, semente: int):
    with gzip.open(caminho, "wt", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por mocks/erp_rh/gerar_erp_rh.py (semente {semente}). Nao edite a mao.\n")
        f.write("SET NAMES utf8mb4;\n")
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
    print({t: len(l) for t, l in tabelas.items()}, esperado(tabelas))
    if not a.resumo:
        escrever(tabelas, a.saida, SEMENTE)


if __name__ == "__main__":
    main()
