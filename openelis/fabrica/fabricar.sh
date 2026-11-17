#!/usr/bin/env bash
# Gera o mock OpenELIS: sobe a aplicacao oficial 3.3.0, popula pela API REST do produto e tira o dump.
#   bash openelis/fabrica/fabricar.sh [--pacientes N]   # --pacientes: ensaio com os N primeiros do roteiro
# Pesa ~3,5 GB de RAM (webapp e servidor FHIR em Java). O teste da Central so usa o banco (openelis/docker-compose.yml).
set -euo pipefail
cd "$(dirname "$0")"
export MSYS_NO_PATHCONV=1
docker compose down -v
docker compose up -d --wait db.openelis.org
docker compose exec -T db.openelis.org psql -U clinlims -d clinlims -q -v ON_ERROR_STOP=1 < volume/charset_ptbr.sql
docker compose up -d
echo "esperando o OpenELIS (~4 min)"
# sem pipe: com pipefail, o grep -q fecha o pipe antes do curl terminar e o until nunca sai
until [[ "$(curl -sk -o /dev/null -w "%{http_code}" https://127.0.0.1:8443/OpenELIS-Global/LoginPage)" =~ ^(200|302)$ ]]; do
  sleep 10
done
RAIZ=$(cd ../.. && pwd)
command -v cygpath >/dev/null && RAIZ=$(cygpath -w "$RAIZ")
docker run --rm --network qimed-openelis-fab_default -v "$RAIZ:/mocks" python:3.12-slim \
  python /mocks/openelis/fabrica/popular.py "$@"
docker compose exec -T db.openelis.org pg_dump -U clinlims -d clinlims -Fc --no-owner --no-privileges -n clinlims \
  > ../sql/openelis.dump
docker compose down -v
ls -la ../sql
