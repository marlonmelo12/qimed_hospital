"""LabVida em SQL Server: o mesmo roteiro do labvida/ (mesma semente e vinculo), com os tipos do SQL Server
(datetime, nvarchar, bit, uniqueidentifier) no schema dbo. Testa o driver e o dialeto, nao a heuristica de nomes.

  python labvida_sqlserver/gerar.py   # grava labvida_sqlserver/sql/02_dados.sql
"""
import os
import sys
from datetime import date, datetime

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(AQUI, "..", "labvida"))
from gerar_labvida import SEMENTE, gerar  # noqa: E402


def valor(v) -> str:
    if v is None:
        return "NULL"
    if isinstance(v, datetime):  # formato ISO sem traco entre data e hora: independe do idioma da sessao
        return f"'{v:%Y-%m-%dT%H:%M:%S}'"
    if isinstance(v, date):
        return f"'{v:%Y%m%d}'"
    if isinstance(v, (int, float)):
        return repr(v)
    return "N'" + str(v).replace("'", "''") + "'"


def main():
    with open(os.path.join(AQUI, "sql", "02_dados.sql"), "w", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por labvida_sqlserver/gerar.py (semente {SEMENTE}). Nao edite a mao.\n"
                "USE labvida;\nSET NOCOUNT ON;\nGO\n")
        for tabela, linhas in gerar().items():
            colunas = list(linhas[0])
            for i in range(0, len(linhas), 500):  # o SQL Server aceita ate 1000 linhas por VALUES
                vals = ",\n".join("(" + ", ".join(valor(l[c]) for c in colunas) + ")" for l in linhas[i:i + 500])
                f.write(f"INSERT INTO dbo.{tabela} ({', '.join(colunas)}) VALUES\n{vals};\nGO\n")


if __name__ == "__main__":
    main()
