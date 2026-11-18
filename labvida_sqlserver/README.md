# Mock laboratório em SQL Server (LabVida, fictício)

O roteiro do `labvida/` (mesma semente, mesmos pacientes, mesmo vínculo) num **SQL Server 2022** (imagem oficial
`mcr.microsoft.com/mssql/server:2022-latest`, edição Developer). Ele existe para testar o tipo SQL Server da Central de
Conexões: driver, dialeto e tipos. Os nomes de tabela e coluna são os do LabVida de propósito, para que uma falha
aponte para o SQL Server e não para a heurística de nomes.

O que este banco testa:

- **driver**: o pipeline lê pelo `pymssql`, que traz o FreeTDS na própria wheel e dispensa o ODBC Driver da Microsoft;
- **tipos do SQL Server**: `DATETIME` (precisão de 3 ms, recusa texto com 6 casas no watermark), `NVARCHAR`, `BIT` e
  `UNIQUEIDENTIFIER` (`paciente_cadastro.rowguid`);
- **schema `dbo`** como padrão do usuário de leitura, e collation sem acento e sem caixa (`Latin1_General_CI_AI`);
- **estimativa de volume** pelo `sys.partitions`.

## Conteúdo (semente 20261113, a do `labvida`)

500 pacientes (350 do TASY e 150 só do laboratório), 1.113 pedidos, 2.415 resultados e 120 linhas de log sem chave
primária. **Esperado: 334 de 500 pacientes casam com o TASY pelo CPF**, o mesmo número do `labvida/`.

## Subir

```sh
docker compose -f labvida_sqlserver/docker-compose.yml up -d --wait   # SQL Server em 127.0.0.1:1434
docker compose -f labvida_sqlserver/docker-compose.yml down -v        # a próxima subida recarrega
```

A imagem não tem pasta de inicialização como a do Postgres: `iniciar.sh` sobe o servidor e roda `sql/` na primeira
subida. Leva cerca de 30 segundos e usa uns 700 MB de RAM (limite de 1,5 GB).

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | SQL Server |
| Host | `labvida-sqlserver-db` (rede `qimed-network`) |
| Porta | 1433 (a 1434 é só a do host) |
| Banco | `labvida` |
| Usuário e senha | `qimed_leitura` / `leitura_mock` (só `db_datareader`, schema padrão `dbo`) |

`bash scripts/teste_central.sh sqlserver`, no pipeline, confere a descoberta, a carga e o vínculo.

## Regenerar

```sh
python labvida_sqlserver/gerar.py   # grava sql/02_dados.sql a partir de labvida/gerar_labvida.py
```

**Inventado**: tudo. O SQL Server não tem sessão só leitura: no hospital, quem garante a leitura é o usuário que o DBA
cria só com `db_datareader`, como aqui.
