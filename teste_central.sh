#!/usr/bin/env bash
# Teste de aceite da Central de Conexoes: GNU Health, LabVida, ERP de RH e ProntoSul, do zero.
# Roda da raiz do qimed_pipeline (Linux, macOS ou Git Bash no Windows), com o .env do pipeline pronto.
#
#   bash mocks/teste_central.sh                 # os 4 sistemas
#   bash mocks/teste_central.sh gnuhealth erp   # so alguns (gnuhealth labvida erp prontosul mv openemr)
#
# Recria os bancos dos mocks (down -v): o movimento e o drift do teste alteram os dados.
# Log em warehouse/reports/teste_central_<data>.log. Codigo de saida 0 = tudo passou.
set -euo pipefail
cd "$(dirname "$0")/.."
export MSYS_NO_PATHCONV=1  # Git Bash: nao reescrever /opt/qimed como caminho do Windows

[ -f .env ] || { echo "Falta o .env do pipeline (copie .env.example e preencha)."; exit 2; }
docker network inspect qimed-network >/dev/null 2>&1 || docker network create qimed-network

SISTEMAS=("$@")
[ ${#SISTEMAS[@]} -gt 0 ] || SISTEMAS=(gnuhealth labvida erp prontosul)
for s in tasy "${SISTEMAS[@]}"; do  # o TASY e a base do vinculo de pacientes
  m=$s; [ "$s" = erp ] && m=erp_rh; [ "$s" = mv ] && m=mv_faturamento
  echo "== subindo $m (do zero)"
  docker compose -f "mocks/$m/docker-compose.yml" down -v >/dev/null 2>&1 || true
  docker compose -f "mocks/$m/docker-compose.yml" up -d --wait --wait-timeout 600
done

docker compose --profile jobs build qimed-pipeline
mkdir -p warehouse/reports
log="warehouse/reports/teste_central_$(date +%Y%m%d_%H%M).log"
raiz="$(pwd -W 2>/dev/null || pwd)"
set +e
docker compose --profile jobs run --rm -v "$raiz/mocks:/opt/qimed/mocks" \
  -v "$raiz/scripts:/opt/qimed/scripts" --entrypoint python qimed-pipeline \
  -W ignore mocks/teste_central.py "${SISTEMAS[@]}" 2>&1 | tee "$log"
rc=${PIPESTATUS[0]}
echo "Log: $log"
exit "$rc"
