#!/bin/bash
# A imagem do SQL Server nao tem pasta de init: sobe o servidor, roda sql/ na primeira vez e fica no primeiro plano.
set -e
/opt/mssql/bin/sqlservr &
q() { /opt/mssql-tools18/bin/sqlcmd -C -b -S localhost -U sa -P "$MSSQL_SA_PASSWORD" "$@"; }
until q -Q "SELECT 1" >/dev/null 2>&1; do sleep 2; done
if [ "$(q -h -1 -W -Q "SET NOCOUNT ON; SELECT COUNT(*) FROM sys.databases WHERE name = 'labvida'")" = "0" ]; then
  for f in /seed/sql/*.sql; do echo "== $f"; q -i "$f"; done
fi
wait
