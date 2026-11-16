#!/bin/sh
# Restaura o banco do GNU Health e cria o usuario que um DBA entregaria ao QIMED: so SELECT no schema public.
set -e
pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" --no-owner --exit-on-error /docker-entrypoint-initdb.d/gnuhealth_20261116.dump
psql -v ON_ERROR_STOP=1 -U "$POSTGRES_USER" -d "$POSTGRES_DB" <<SQL
CREATE ROLE qimed_leitura LOGIN PASSWORD 'leitura_mock';
GRANT CONNECT ON DATABASE $POSTGRES_DB TO qimed_leitura;
GRANT USAGE ON SCHEMA public TO qimed_leitura;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO qimed_leitura;
ALTER ROLE qimed_leitura SET default_transaction_read_only = on;
SQL
