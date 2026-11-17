# GNU Health HIS 5.0 (produto real)

Diferente dos outros mocks, este não imita um sistema: é o banco do **GNU Health 5.0** (Tryton 7.0 LTS), como o
trytond o criou. Veio do dump do repositório `GNU_helth` (`data/gnuhealth_backup_20261014.dump`), com CPF no PUID
gravado pelo próprio ORM (`atribuir_cpf.py`). São 244 tabelas, 1.905 pacientes e 548 internações de 01/01/2026 a
21/09/2026, todos fictícios. O servidor Tryton não sobe aqui, porque a Central só lê SQL.

O que ele testa, e que os mocks feitos à mão não pegavam:

- tabela com hífen no nome (`calendar_calendar-read-res_user`), que exige aspas no SQL;
- coluna binária (`party_party.photo`, anexos): na Bronze vai só `sha256:<hash>`, nunca o conteúdo;
- a PII no formato do Tryton: `lastname`, `ref` (o PUID da pessoa), `federation_account`;
- um catálogo grande, de framework (`ir_*`, `res_user` com hash de senha), ao lado das tabelas clínicas.

## Subir

```sh
docker compose -f gnuhealth/docker-compose.yml up -d --wait   # 127.0.0.1:5437, banco gnuhealth
docker compose -f gnuhealth/docker-compose.yml down -v        # a próxima subida restaura de novo
```

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | PostgreSQL |
| Host | `gnuhealth-db` (rede `qimed-network`) |
| Porta | 5432 (a 5437 é só a do host) |
| Banco | `gnuhealth` |
| Usuário e senha | `qimed_leitura` / `leitura_mock` (só `SELECT`, sessão read-only, como um DBA entregaria) |

## CPF (semente 20261116)

Num GNU Health brasileiro, o CPF é o PUID da pessoa (`party_party.ref`). `atribuir_cpf.py` grava esse campo pelo
Proteus, sem SQL direto:

- 300 pacientes são pessoas que também estão no TASY (mesmo CPF, nome e nascimento). O par tem o mesmo sexo e
  nascimento a até 1 ano, para o histórico clínico continuar coerente;
- 95 pacientes (5%) ficam sem CPF e mantêm o PUID gerado pelo GNU Health;
- as outras pessoas, pacientes e profissionais, recebem CPF novo e válido.

`federation_account` continua com o PUID antigo, como numa base em que o CPF foi preenchido depois do cadastro.

Para regerar: suba este mock e o TASY, exporte as pessoas do TASY e rode o script com a imagem do servidor do
repositório `GNU_helth`, na rede `qimed-network`. Depois, `pg_dump -Fc --no-owner --no-acl` para `sql/`.

## Resultado esperado

A descoberta acha as 244 tabelas, e 243 são carregadas (`ir_cache` não tem PK). `party_party` vira a tabela de
paciente, e o vínculo dá **300 de 2.048**. O denominador é 2.048 porque a `party_party` do GNU Health guarda todas as
pessoas e entidades (pacientes, profissionais, instituições), e a Central não filtra por `is_patient`.

## Teste de aceite

`bash scripts/teste_central.sh` roda os 4 sistemas da Central (este, LabVida, ERP de RH e ProntoSul).
