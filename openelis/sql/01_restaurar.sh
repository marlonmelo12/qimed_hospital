#!/bin/sh
# Restaura o banco do OpenELIS e cria o usuario que um DBA entregaria ao QIMED: so SELECT no schema clinlims, que
# e o schema padrao dele (o OpenELIS nao usa o public).
set -e
D=/docker-entrypoint-initdb.d/openelis.dump
# o dump e so do schema clinlims e nao leva a extensao pg_trgm, que o OpenELIS instala dentro dele (indice de busca
# por nome): cria os dois antes e tira o CREATE SCHEMA da lista do restore
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "CREATE SCHEMA clinlims; CREATE EXTENSION pg_trgm SCHEMA clinlims;"
pg_restore -l "$D" | grep -v " SCHEMA - clinlims " > /tmp/lista
pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" --no-owner --exit-on-error -L /tmp/lista "$D"
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" <<SQL
CREATE ROLE qimed_leitura LOGIN PASSWORD 'leitura_mock';
GRANT CONNECT ON DATABASE $POSTGRES_DB TO qimed_leitura;
GRANT USAGE ON SCHEMA clinlims TO qimed_leitura;
GRANT SELECT ON ALL TABLES IN SCHEMA clinlims TO qimed_leitura;
ALTER ROLE qimed_leitura SET default_transaction_read_only = on;
ALTER ROLE qimed_leitura SET search_path = clinlims;
SQL
