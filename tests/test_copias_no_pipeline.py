"""
Os testes do qimed_pipeline usam uma copia minima de arquivos deste repo (tests/fixtures/mocks de la). Mudou um
schema, um seed ou um gerador aqui e esqueceu de recopiar: este teste acusa. Pula se o pipeline nao estiver ao lado
(QIMED_PIPELINE_DIR, padrao ../qimed_pipeline).
"""
import gzip
import os
import re

import pytest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PIPELINE = os.getenv("QIMED_PIPELINE_DIR", os.path.join(os.path.dirname(RAIZ), "qimed_pipeline"))
COPIAS = os.path.join(PIPELINE, "tests", "fixtures", "mocks")

IGUAIS = [
    "tasy/sql/01_schema.sql", "tasy/sql/02_dados.sql.gz", "tasy/gerar_mock_tasy.py",
    "labvida/sql/01_schema.sql", "labvida/sql/02_dados.sql.gz", "labvida/gerar_labvida.py",
    "erp_rh/sql/01_schema.sql", "erp_rh/sql/02_dados.sql.gz", "erp_rh/gerar_erp_rh.py",
    "pep_fhir/gerar_pep.py", "mv_faturamento/sql/01_schema.sql", "prontosul/sql/01_schema.sql",
]

pytestmark = pytest.mark.skipif(not os.path.isdir(COPIAS), reason=f"pipeline nao achado em {PIPELINE}")


def _conteudo(caminho: str) -> bytes:
    """Gzip compara o conteudo (o cabecalho pode mudar) e texto ignora o fim de linha do checkout."""
    if caminho.endswith(".gz"):
        with gzip.open(caminho, "rb") as f:
            return f.read().replace(b"\r\n", b"\n")
    with open(caminho, "rb") as f:
        return f.read().replace(b"\r\n", b"\n")


@pytest.mark.parametrize("arquivo", IGUAIS)
def test_copia_igual_ao_original(arquivo):
    assert _conteudo(os.path.join(RAIZ, arquivo)) == _conteudo(os.path.join(COPIAS, arquivo)), (
        f"{arquivo} mudou aqui: recopie para {COPIAS} (ver o README de la)")


def test_tabelas_do_openemr_iguais():
    """La so ficam as linhas CREATE TABLE do dump: o teste do pipeline olha so nomes de tabela."""
    def nomes(caminho):
        texto = _conteudo(caminho).decode("utf-8", errors="replace")
        return set(re.findall(r"CREATE TABLE (?:IF NOT EXISTS )?[`\"]?(\w+)", texto, re.I))
    arq = "openemr/sql/02_openemr.sql.gz"
    assert nomes(os.path.join(RAIZ, arq)) == nomes(os.path.join(COPIAS, arq))
