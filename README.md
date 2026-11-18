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

## Passo a passo rápido

Você só precisa do Docker Desktop aberto. Os comandos rodam no terminal, dentro desta pasta.

1. Crie a rede uma vez só (se ela já existir, o erro pode ser ignorado):

   ```sh
   docker network create qimed-network
   ```

2. Ligue o sistema que quiser, trocando `labvida` pelo nome da pasta. O comando termina quando o banco está pronto:

   ```sh
   docker compose -f labvida/docker-compose.yml up -d --wait
   ```

3. Na Central de Conexões do QIMED, cadastre a conexão com os dados da tabela abaixo.

4. Para desligar e apagar os dados (na próxima vez o banco volta do zero):

   ```sh
   docker compose -f labvida/docker-compose.yml down -v
   ```

| Sistema | Tipo | Host | Porta | Banco | Usuário | Senha |
|---|---|---|---|---|---|---|
| `gnuhealth` | POSTGRESQL | gnuhealth-db | 5432 | gnuhealth | qimed_leitura | leitura_mock |
| `labvida` | POSTGRESQL | labvida-db | 5432 | labvida | labvida | labvida_mock |
| `openelis` | POSTGRESQL | openelis-db | 5432 | clinlims | qimed_leitura | leitura_mock |
| `labvida_sqlserver` | SQLSERVER | labvida-sqlserver-db | 1433 | labvida | qimed_leitura | leitura_mock |
| `erp_rh` | MYSQL | erp-rh-db | 3306 | erp_rh | erp | erp_mock |
| `frappe_hrms` | MYSQL | frappe-db | 3306 | frappe_hrms | qimed_leitura | leitura_mock |
| `openemr` | MYSQL | openemr-db | 3306 | openemr | qimed_leitura | leitura_mock |
| `prontosul` | ORACLE | prontosul-db | 1521 | FREEPDB1 | qimed_leitura | leitura_mock |
| `mv_faturamento` | ORACLE | mv-db | 1521 | XE | qimed_leitura | leitura_mock |

O LabVida e o ERP usam o usuário dono do banco de propósito, para a Central mostrar o aviso de usuário que escreve.

Cuidados:
- O TASY (`tasy/`) não entra pela Central: ele é a base do hospital e o pipeline o lê sozinho. Ligue-o primeiro.
- Não ligue tudo ao mesmo tempo. Cada Oracle (ProntoSul e MV) usa cerca de 2,4 GB de RAM; ligue no máximo um deles.
- O primeiro `up` de cada sistema baixa a imagem e pode levar alguns minutos.

## Subir um sistema

Na raiz deste repo, com a rede do pipeline criada (`docker network create qimed-network`):

```sh
docker compose -f tasy/docker-compose.yml up -d --wait
docker compose -f tasy/docker-compose.yml down -v      # a próxima subida recarrega o seed
```

Os Oracle (ProntoSul e MV) pesam cerca de 2,4 GB de RAM cada.

## Painel

```sh
python painel/painel.py        # http://127.0.0.1:8099, só biblioteca padrão
```

Sobe, derruba e reseta cada sistema, mostra a situação e a RAM de cada um, e controla o `simular_movimento.py`:
banco por banco, intervalo, fração de escritas atrasadas e releitura imediata por conexão. A mudança vale na rodada
seguinte, sem reiniciar. O simulador roda na imagem do pipeline (`QIMED_PIPELINE_IMAGE`, padrão
`qimed_pipeline-qimed-pipeline:latest`), num container `qimed-simulador` na rede `qimed-network`. Painel e simulador
trocam `painel/estado/config.json` e `estado.json`, fora do git. Hoje só LabVida, ERP de RH, ProntoSul e MV têm
movimento.

Cenários de demo, por 5 min, 15 min ou 1 h: **onda de faltas** (40% de ausência no ERP, contra 7%), **pico de
atendimentos** (5 vezes mais entradas no LabVida, ProntoSul e MV) e **exclusões na origem** (5 pedidos apagados por
rodada no LabVida). **Coluna nova** cria `observacao_HHMMSS` uma vez, numa tabela que o simulador não insere por
posição; na próxima releitura a Central volta a pedir aprovação. Só o Resetar tira a coluna. Banco fora do ar é o
botão Derrubar.

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
