# Mock Clínica Vale Sul (OpenEMR 8.5.0 real)

O banco é de um **OpenEMR 8.5.0 de verdade**, imagem oficial `openemr/openemr:8.5.0`, com MariaDB. Ele foi
populado pelas classes do próprio produto, as mesmas que as telas usam. O teste da Central sobe só o banco, restaurado
do dump. Nenhuma linha de `config/` cita este banco: ele entra pela Central de Conexões.

**Fidelidade: alta.** O schema é o do produto, com 286 tabelas e **nenhuma FK declarada**. `patient_data` não tem
PK, só a chave única `pid`. A cobrança se liga à consulta por `(pid, encounter)`, e `encounter` não é a PK de
`form_encounter`. A glosa é um ajuste (`adj_amount`) no razão de pagamentos (`ar_activity`), ligado à cobrança por
`(pid, encounter, code)`, com o motivo em texto livre no `memo`.

O que é inventado: pacientes, convênios (registros ANS fictícios), os códigos de cobrança (faixa `8xxxxxxx`, como
no MV) e a configuração que a clínica faria uma vez pela administração:
- a tabela de códigos `TUSS`;
- os motivos de glosa na lista `adjreason`, com o código TISS no texto (`Glosa 1705 valor a maior`);
- o fuso de São Paulo.

Os códigos TISS de glosa são os reais (tabela 38).

## Subir

```sh
docker compose -f openemr/docker-compose.yml up -d --wait   # 127.0.0.1:3310, ~300 MB de RAM
docker compose -f openemr/docker-compose.yml down -v        # a próxima subida recarrega o dump
```

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | MySQL |
| Host | `openemr-db` (rede `qimed-network`) |
| Porta | 3306 |
| Banco | `openemr` |
| Usuário e senha | `qimed_leitura` / `leitura_mock` (só `SELECT`) |

## Conteúdo (semente 20261118)

São 220 pacientes, e 151 deles casam com o TASY pelo CPF, gravado no campo `ss`. Há 1.186 consultas de novembro de
2025 a novembro de 2026, com vários formulários de prontuário: sinais vitais, SOAP e a folha de cobrança.

Cada mês, uma guia por consulta segue para o convênio (`claims` com status 2). O demonstrativo volta como um pagamento
por convênio e competência (`ar_session`), com o pago e as glosas de cada linha. As guias negadas inteiras ficam com
status 7.

A sujeira é a de uma clínica em uso:
- diagnóstico CID-10 com valor 0 na folha;
- retorno sem cobrança;
- linha excluída (`activity = 0`);
- o mesmo exame duas vezes na consulta;
- pagamento lançado errado, excluído (`deleted`) e relançado;
- paciente com segundo convênio;
- particular pagando no caixa.

Glosa sobre o cobrado com retorno: Saúde Litoral 6,70%, Vida Plena 5,26% e Unimais 0,90%. O `esperado.json` traz
os números exatos e sai do roteiro, não de uma consulta ao banco. O `glosa_manual.sql` é a consulta escrita à mão que
os reproduz e serve de especificação.

## Regerar (a fábrica)

```sh
bash openemr/fabrica/fabricar.sh              # ~4 min e ~1,5 GB de RAM enquanto roda
bash openemr/fabrica/fabricar.sh --pacientes 5  # recorte pequeno, para depurar
```

A fábrica funciona assim:
1. Sobe o OpenEMR inteiro.
2. Gera o roteiro com `gerar_roteiro.py`, a partir da semente e dos CPFs do TASY.
3. Executa o roteiro com `popular.php`, que usa `PatientService`, `InsuranceService`, `EncounterService`,
   `BillingUtilities`, `SLEOB` e `Recorder`.
4. Grava `sql/02_openemr.sql.gz`.

Dois passos não passam pelo produto, e o motivo está no cabeçalho do `popular.php`:
- a configuração feita uma vez pela administração;
- o recuo das datas, porque o OpenEMR grava `NOW()` na cobrança e no lançamento.

## Estado na Central

`bash scripts/teste_central.sh openemr` termina com 0 falha:
- **Paciente:** `patient_data` é reconhecida pela chave única `pid`, e as FKs de paciente, consulta, convênio e
  pagamento são inferidas por nome e por valor.
- **Vínculo:** 151 de 220 pacientes casam com o TASY.
- **Faturamento:** entra pelo perfil do OpenEMR (`src/ingestion/perfis_faturamento.py`), com as 7 regras do produto
  em `inferencias`. A glosa por convênio e por motivo TISS bate com o `esperado.json`.
