# Mock LabVida (laboratório que o QIMED nunca viu)

Banco Postgres de um sistema de laboratório fictício do mesmo hospital do mock TASY (`hospital_id` 9990001). Ele
existe para a demo da Central de Conexões: **nenhuma linha de `config/` cita este banco**. Ele entra quando alguém
o cadastra no front, e o pipeline descobre, pede aprovação de PII, carrega e casa os pacientes com os do TASY
(fluxo em `docs/CONTRATO_ONBOARDING_CORE.md`). **Tudo é fictício**: nomes, CPFs (só com dígito verificador
válido), e-mails e telefones.

O banco é de propósito diferente do TASY:

- motor Postgres, não MariaDB;
- nomes em minúsculas e sem prefixo;
- CPF com máscara (`123.456.789-09`);
- sexo por extenso;
- uma tabela sem chave primária.

## Subir

```sh
docker compose -f mocks/labvida/docker-compose.yml up -d     # Postgres 16 em 127.0.0.1:5436, banco labvida
docker compose -f mocks/labvida/docker-compose.yml down -v   # apaga o volume; a próxima subida recarrega o seed
```

Usuário `labvida`, senha `labvida_mock` (troque por `LABVIDA_DB_PASSWORD`).

## Cadastro na Central de Conexões (demo)

| campo | valor |
|---|---|
| Tipo | PostgreSQL |
| Host | `labvida-db` (nome na rede `qimed-network`, onde estão o core e o Airflow) |
| Porta | 5432 (a 5436 é só a do host Windows) |
| Banco | `labvida` |
| Usuário e senha | `labvida` / `labvida_mock` |

Em até 2 minutos (ou na hora, se o core chamar `/descobrir`) a conexão aparece em
`GET /api/v1/pipeline/onboarding` como `aguardando_aprovacao`. Para aprovar sem o front:

```sh
curl -X POST localhost:8000/api/v1/pipeline/onboarding/<id>/aprovar -H 'Content-Type: application/json' \
     -d '{"aprovado_por": "demo"}'
```

## Conteúdo (semente 20261113)

| Tabela | Linhas | Observação |
|---|---|---|
| `paciente_cadastro` | 500 | 350 primeiros pacientes do seed do TASY (mesmo nome, sexo, nascimento e CPF) e 150 só do laboratório |
| `pedido_exame` | 1113 | FK para paciente; CRM do solicitante; situação Liberado, Coletado ou Cancelado |
| `resultado_exame` | 2415 | só dos pedidos liberados; 6 exames com valor e unidade |
| `log_integracao` | 120 | sem chave primária: o onboarding cataloga e pula |

Vínculo esperado: **334 de 500** pacientes casam com o TASY. São os 350 do TASY menos os 16 que estão sem CPF
lá; esses ganham um CPF só aqui. O mesmo número casa com o PEP, que tem os 400 primeiros do TASY. O valor sai de
`gerar_labvida.esperado()`, e `tests/test_onboarding.py` confere.

Para regenerar, no container do pipeline: `python mocks/labvida/gerar_labvida.py`, e depois `down -v` e `up`.
