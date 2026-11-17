# Mock TASY (HIS e faturamento)

Banco MariaDB com o formato de um HIS estilo TASY: tabelas em maiúsculas, chaves `CD_`/`NR_`, indicadores `IE_`,
datas `DT_` e auditoria em `DT_ATUALIZACAO` e `NM_USUARIO`. Serve para testar a ingestão de um hospital da rede
privada sem hospital-piloto. **Tudo é fictício**: nomes, CPFs, CNS, carteirinhas, CRMs, registros ANS, códigos de
procedimento (`9000xxxx`) e códigos de glosa TISS (`91xx`). Não é o modelo de dados real do TASY; os nomes de tabela
e coluna só seguem o estilo dele.

## Subir

```sh
docker compose -f tasy/docker-compose.yml up -d     # MariaDB 11.4 em 127.0.0.1:3307, banco TASY
docker compose -f tasy/docker-compose.yml down -v   # apaga o volume; a próxima subida recarrega o seed
```

Usuário `tasy`, senha `tasy_mock` (troque por `TASY_DB_PASSWORD`). O container entra na rede `qimed-network`
como `tasy-db`, então o Airflow e os jobs do pipeline chegam nele por `tasy-db:3306`.

Ingestão, sem nenhum código específico do TASY:

```sh
# CLI (job do pipeline)
python -m src.pipeline.run_fonte_hospital tasy            # incremental pelo watermark
python -m src.pipeline.run_fonte_hospital tasy --completo # substitui a parte do hospital
# Airflow: DAG qimed_hospital_tasy (conf opcional {"id_connection": N, "completo": true})
```

A fonte está em `config/fontes_hospital.yaml` (chave `tasy`) e os campos PII em `config/pii_manifest.yaml`.

## Arquivos

- `sql/01_schema.sql`: tabelas e chaves (primárias e estrangeiras), num SQL que roda em MariaDB e em SQLite (os testes carregam
  o mock em SQLite).
- `sql/02_dados.sql.gz`: seed gerado por `gerar_mock_tasy.py` (determinístico, semente 20261111).
  Para regerar: `python tasy/gerar_mock_tasy.py` (na raiz deste repo, Python 3.11 sem dependências) e `down -v` / `up -d`.

## O hospital

Um estabelecimento, de 01/05/2026 a 10/11/2026. O "agora" do mock é 10/11/2026 23h. Volume do seed:

- pessoas e atendimentos: 1.200 pacientes, 40 profissionais e cerca de 2.470 atendimentos (internação, PS e
  ambulatório);
- leitos: 30 (clínica médica 10, cirúrgica 8, maternidade 6, UTI 6). Na noite de 10/11 há 14 pacientes
  internados;
- escala: cerca de 9.200 plantões, incluindo a escala prevista dos 7 dias seguintes;
- faturamento: cerca de 2.470 contas e 6.900 itens de retorno de convênio.

| Domínio | Tabelas |
|---|---|
| Cadastros | `ESTABELECIMENTO`, `ESPECIALIDADE_MEDICA`, `SETOR_ATENDIMENTO`, `UNIDADE_ATENDIMENTO` (leitos), `CONVENIO`, `MOTIVO_ALTA`, `MOTIVO_GLOSA`, `PROCEDIMENTO`, `MATERIAL` |
| Pessoas | `PESSOA_FISICA` (pacientes e funcionários, `IE_FUNCIONARIO` S/N), `MEDICO` |
| Assistencial | `ATENDIMENTO_PACIENTE`, `ATEND_CATEGORIA_CONVENIO` (carteirinha e senha), `DIAGNOSTICO_DOENCA`, `ATEND_PACIENTE_UNIDADE` (passagens por setor e leito), `ESCALA_PLANTAO` |
| Faturamento | `CONTA_PACIENTE`, `PROCEDIMENTO_PACIENTE`, `MATERIAL_ATEND_PACIENTE`, `CONVENIO_RETORNO`, `CONVENIO_RETORNO_ITEM` (cobrado, pago, glosado e motivo) |

Códigos usados:

- `ATENDIMENTO_PACIENTE.IE_TIPO_ATENDIMENTO`: 1 internação, 3 pronto-socorro, 8 ambulatório.
- `IE_CARATER_ATENDIMENTO`: E eletivo, U urgência.
- `SETOR_ATENDIMENTO.CD_CLASSIF_SETOR`: 1 PS, 3 internação, 4 UTI, 8 ambulatório.
- `UNIDADE_ATENDIMENTO.IE_STATUS_UNIDADE`: L livre, P paciente, H higienização, I interditado.
- `PESSOA_FISICA.IE_SEXO`: M, F, I.
- `ESCALA_PLANTAO.IE_FUNCAO`: M médico, E enfermeiro, T técnico. `IE_SITUACAO`: P prevista, R realizada, F falta.
- `CONTA_PACIENTE.IE_STATUS_ACERTO`: 1 aberta, 2 fechada. `NR_SEQ_PROTOCOLO` nulo = conta ainda não enviada.
- `ATEND_PACIENTE_UNIDADE.NR_SEQ_UNIDADE` nulo = passagem sem leito (PS, ambulatório ou internação sem leito livre).

## Glosas

O gerador grava quatro regras de glosa, cada uma com uma causa que aparece nos dados. Assim o caso 1 (antecipar
glosa) tem um sinal para aprender. O gerador definitivo do hospital simulado fica com o time de ML.

| Motivo | Regra | Onde aparece |
|---|---|---|
| 1 Ausência de senha | item com `PROCEDIMENTO.IE_EXIGE_AUTORIZACAO = 'S'` em atendimento sem `CD_SENHA`: glosado em 90% dos casos | `ATEND_CATEGORIA_CONVENIO.CD_SENHA` nulo |
| 2 Fora do prazo | conta enviada depois de `CONVENIO.QT_DIAS_PRAZO_ENVIO` contados da alta: conta inteira glosada em 80% dos casos | `CONTA_PACIENTE.DT_ENVIO_PROTOCOLO` |
| 3 Acima da permanência | diárias cobradas acima dos dias de internação: o excesso é glosado em 90% dos casos | `QT_PROCEDIMENTO` contra `DT_ENTRADA` e `DT_ALTA` |
| 4 Acima do contratado | valor cobrado acima do valor de referência ajustado pelo convênio: a diferença é glosada em 85% dos casos | `VL_PROCEDIMENTO` contra `VL_REFERENCIA` |

As regras valem na ordem da tabela: um item já glosado por uma regra não é testado nas seguintes. Itens de
material só são glosados pela regra 2. Como ruído, 1,5% dos procedimentos que nenhuma regra pegou levam glosa
parcial (10% a 30% do valor), registrada como motivo 4. No seed atual, 9% do valor cobrado foi
glosado, em 252 das 1.506 contas com retorno. O retorno do convênio chega 30 dias depois do último envio de cada
lote. Por isso as contas enviadas no último mês ainda não têm retorno.
