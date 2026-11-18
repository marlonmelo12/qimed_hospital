# QIMED: hospital simulado

Os sistemas de um hospital fictício, para testar e apresentar o QIMED sem hospital-piloto. Cada pasta é um sistema
com o banco do jeito que o fornecedor deixaria, seed determinístico e usuário só leitura para o QIMED. **Tudo é
fictício**: nomes, CPFs, CNS, carteirinhas, CRMs, registros ANS e códigos de procedimento.

O QIMED (repo `qimed_pipeline`) é quem lê este hospital. Este repo não depende do código dele, com duas exceções
que rodam na imagem do pipeline: o `simular_movimento.py` e a fábrica do OpenEMR.

| Pasta | Sistema | Banco | Como o QIMED lê |
|---|---|---|---|
| `tasy/` | HIS e faturamento no estilo TASY | MariaDB | YAML do pipeline (DAG `qimed_hospital_tasy`) |
| `pep_fhir/` | Prontuário FHIR R4 do mesmo hospital | HAPI FHIR | YAML do pipeline |
| `gnuhealth/` | GNU Health real | Postgres | Central de Conexões |
| `labvida/` | Laboratório | Postgres | Central de Conexões |
| `openelis/` | OpenELIS Global 3.3 real (laboratório) | Postgres | Central de Conexões |
| `labvida_sqlserver/` | Laboratório (roteiro do LabVida) | SQL Server 2022 | Central de Conexões |
| `erp_rh/` | ERP de RH e ponto | MariaDB | Central de Conexões |
| `frappe_hrms/` | Frappe HRMS real (escala e ponto) | MariaDB | Central de Conexões |
| `prontosul/` | Pronto-atendimento | Oracle | Central de Conexões |
| `mv_faturamento/` | Faturamento de convênio no estilo MV (Hospital São Lucas) | Oracle | Central de Conexões |
| `openemr/` | OpenEMR 8.5 real | MariaDB | Central de Conexões |

Cada pasta tem um README com o modelo, os números esperados e como regerar o seed.

## Subir um sistema

Na raiz deste repo, com a rede do pipeline criada (`docker network create qimed-network`):

```sh
docker compose -f tasy/docker-compose.yml up -d --wait
docker compose -f tasy/docker-compose.yml down -v      # a próxima subida recarrega o seed
```

Os Oracle (ProntoSul e MV) pesam cerca de 2,4 GB de RAM cada.

## Comandos que rodam na imagem do pipeline

Os geradores de seed são Python puro. O `simular_movimento.py` e a fábrica do OpenEMR usam drivers e código da
imagem do pipeline. A convenção é montar este repo em `/opt/qimed/mocks`, e por isso os READMEs escrevem
`python mocks/<sistema>/...`:

```sh
cd ../qimed_pipeline
docker compose --profile jobs run --rm --no-deps -v "$(pwd -W)/../qimed_hospital_simulado:/opt/qimed/mocks" \
  --entrypoint python qimed-pipeline mocks/simular_movimento.py --intervalo 20
```

O aceite da Central de Conexões (`scripts/teste_central.sh` no pipeline) acha este repo por `QIMED_MOCKS_DIR`, que
por padrão é a pasta irmã `../qimed_hospital_simulado`.

## Cópias no pipeline

Os testes do pipeline usam uma cópia mínima de alguns arquivos daqui, em `qimed_pipeline/tests/fixtures/mocks`:
os schemas, os seeds do TASY, do LabVida e do ERP, e os geradores que os testes importam. Quem mudar um schema ou um
seed aqui recopia o arquivo lá. O `tests/test_copias_no_pipeline.py` acusa a divergência quando os dois repos estão
lado a lado.
