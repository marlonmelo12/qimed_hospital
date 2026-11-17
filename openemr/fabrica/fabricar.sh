#!/usr/bin/env bash
# Gera o mock OpenEMR: sobe a aplicacao inteira, executa o roteiro pelas classes do produto e tira o dump.
#   bash openemr/fabrica/fabricar.sh [--pacientes N]
# Pesa ~1,5 GB de RAM enquanto roda; o teste da Central so usa o banco (openemr/docker-compose.yml).
# O roteiro roda na imagem do qimed_pipeline (QIMED_PIPELINE_DIR, padrao a pasta irma), com este repo em /opt/qimed/mocks.
set -euo pipefail
cd "$(dirname "$0")"
AQUI="$(cd ../.. && pwd -W 2>/dev/null || pwd)"
PIPELINE="${QIMED_PIPELINE_DIR:-$AQUI/../qimed_pipeline}"
export MSYS_NO_PATHCONV=1
docker compose down -v
docker compose up -d --wait openemr-fab-db
docker compose up -d openemr-fab
until docker logs qimed-openemr-fab 2>&1 | grep -q AH00094; do sleep 5; done  # instalacao terminou e o Apache subiu
(cd "$PIPELINE" && docker compose --profile jobs run --rm --no-deps -v "$AQUI:/opt/qimed/mocks" \
  --entrypoint python qimed-pipeline mocks/openemr/fabrica/gerar_roteiro.py "$@")
# o OpenEMR imprime o erro de SQL e sai com 0: so o resumo no fim prova que o roteiro rodou inteiro
docker exec -u apache qimed-openemr-fab php /fabrica/popular.php | tee /dev/stderr | tail -1 | grep -q '"sessoes"'
docker exec qimed-openemr-fab-db mariadb-dump -uroot -proot_fabrica --skip-dump-date --single-transaction \
  --databases openemr | gzip -n > ../sql/02_openemr.sql.gz
docker compose down -v
ls -la ../sql
