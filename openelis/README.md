# Mock laboratório (OpenELIS Global 3.3, LIS real)

Banco de um **OpenELIS Global real** (imagens oficiais `itechuw/openelis-global-2:3.3.0`), populado pela API REST do
próprio produto. Ele troca o LabVida caseiro (`labvida/`) por um sistema de laboratório de mercado. Nenhuma linha de
`config/` do pipeline cita este banco; ele entra pela Central de Conexões.

O que este banco testa:

- **vínculo de pacientes num LIS real**: o CPF fica em `patient.national_id` e o nome em `person`, como o produto
  grava. A Central reconhece o cadastro (`patient` vira `paciente`) e casa os pacientes com o TASY pelo CPF;
- **banco grande e cheio de coisa que não é do hospital**: 473 objetos no schema `clinlims`, incluindo as tabelas do
  servidor FHIR embutido (`hfj_*`) e o catálogo de exames de fábrica, com 339 FKs declaradas;
- **view do produto que quebra**: uma view do OpenELIS converte texto em número. Isso derrubava a descoberta inteira,
  que agora deixa o objeto em `objetos_ilegiveis`;
- **schema que não é o `public`**: o OpenELIS usa `clinlims`, e o usuário de leitura tem esse schema como padrão.

## Conteúdo (semente 20261113, a do `labvida`)

O roteiro é o do `labvida/gerar_labvida.py`. Os 500 pacientes são os mesmos: 350 do TASY e 150 só do laboratório.
São 1.054 pedidos, 946 liberados com 2.415 resultados e 108 coletados sem resultado.
**Esperado: 334 de 501 pacientes casam com o TASY**. O 501º é o paciente sentinela `UNKNOWN_`, que o próprio
OpenELIS cria, sem documento. O esperado sai do roteiro e fica em `esperado.json`. O dump tem 6 MB.

Os exames são os do catálogo de fábrica do OpenELIS, em soro: GPT, GOT, creatinina, amilase, colesterol total e
triglicérides. Cada exame do roteiro do LabVida vira um deles. O valor mantém o desvio do roteiro, na unidade do
OpenELIS.

## Como o roteiro entra no produto

| No roteiro | No OpenELIS |
|---|---|
| paciente | `POST /rest/PatientManagement`, com o CPF só com dígitos em `nationalId` |
| pedido Liberado | `POST /rest/SamplePatientEntry` (amostra de soro com os exames), resultado em `/rest/LogbookResults` e liberação em `/rest/AccessionValidation` |
| pedido Coletado | só o pedido, com creatinina pendente |
| pedido Cancelado | não entra (59 pedidos) |

São os endpoints das telas Add Patient, Add Order, Results e Validation, no mesmo fluxo dos helpers de seed dos testes
Playwright do OpenELIS.

**Ajustes de um laboratório brasileiro**:

- o CPF entra só com dígitos, porque o OpenELIS recusa ponto no documento nacional;
- as letras do português (`ã`, `í`, `õ`...) entram nos nomes aceitos (`fabrica/volume/charset_ptbr.sql`). O padrão de
  fábrica é o francês e recusa "Patrícia";
- dois pacientes do roteiro nascem depois de hoje (o mês sorteado de quem nasceu em 2026, inclusive um do seed do
  TASY). O OpenELIS recusa, e eles entram com o mesmo dia do ano anterior. O vínculo é só pelo CPF e não muda.

**Limites**: a data de recebimento e de coleta é a do roteiro, mas o produto carimba o resultado e a liberação com a
hora do servidor, ou seja, o dia da fábrica. A releitura incremental logo depois da carga relê cerca de 44 mil linhas,
porque o watermark recua 5 minutos e a fábrica gravou boa parte dos pedidos nos 5 minutos finais.

## Subir

```sh
docker compose -f openelis/docker-compose.yml up -d --wait   # Postgres 14 em 127.0.0.1:5438
docker compose -f openelis/docker-compose.yml down -v        # a próxima subida recarrega o dump
```

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | PostgreSQL |
| Host | `openelis-db` (rede `qimed-network`) |
| Porta | 5432 (a 5438 é só a do host) |
| Banco | `clinlims` |
| Usuário e senha | `qimed_leitura` / `leitura_mock` (só `SELECT`, schema padrão `clinlims`) |

`bash scripts/teste_central.sh openelis`, no pipeline, confere a descoberta, a carga e o vínculo contra o
`esperado.json`.

## Regenerar

```sh
bash openelis/fabrica/fabricar.sh                 # os 500 pacientes
bash openelis/fabrica/fabricar.sh --pacientes 3   # ensaio rápido
```

A fábrica sobe a aplicação oficial: certificados, Postgres, webapp e servidor FHIR, sem o front React e sem o proxy.
São cerca de 3,5 GB de RAM e uns 4 minutos só para a aplicação subir. Depois ela roda `fabrica/popular.py` num
`python:3.12-slim` na rede da aplicação, em uns 16 minutos, e grava `sql/openelis.dump` e `esperado.json`. Feche o que
puder antes de rodar: com a máquina sem memória, o Claude Code interrompe a fábrica.

**Inventado**: os pacientes, os pedidos e os valores. **Do produto**: o esquema inteiro, o catálogo de exames, as
validações, o paciente sentinela e as tabelas do FHIR.
