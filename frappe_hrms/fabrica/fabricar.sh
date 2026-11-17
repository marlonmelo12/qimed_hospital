#!/usr/bin/env bash
# Gera o mock Frappe HRMS: sobe a aplicacao, cria o site com ERPNext e HRMS, popula pelo ORM e tira o dump.
#   bash frappe_hrms/fabrica/fabricar.sh [--dias N]   # --dias: ensaio com os primeiros N dias da escala
# Pesa ~2 GB de RAM e leva bem mais que o OpenEMR (cada plantao passa pelas validacoes do HRMS). O teste da Central
# so usa o banco (frappe_hrms/docker-compose.yml).
set -euo pipefail
cd "$(dirname "$0")"
export MSYS_NO_PATHCONV=1
B=/home/frappe/frappe-bench
docker compose down -v
docker compose up -d --wait frappe-fab-db
docker compose up -d
docker exec -w $B qimed-frappe-fab bash -c '
  ls -1 apps > sites/apps.txt
  bench set-config -g db_host frappe-fab-db && bench set-config -gp db_port 3306
  bench set-config -g redis_cache redis://frappe-fab-redis-cache:6379
  bench set-config -g redis_queue redis://frappe-fab-redis-queue:6379
  bench set-config -g redis_socketio redis://frappe-fab-redis-queue:6379
  bench new-site hospital.local --db-name frappe_hrms --mariadb-user-host-login-scope=% --admin-password admin_fabrica \
    --db-root-username root --db-root-password root_fabrica --install-app erpnext --install-app hrms'
docker exec -w $B/sites qimed-frappe-fab ../env/bin/python /mocks/frappe_hrms/fabrica/popular.py "$@"
docker exec qimed-frappe-fab-db mariadb-dump -uroot -proot_fabrica --skip-dump-date --single-transaction \
  --databases frappe_hrms | gzip -n > ../sql/02_frappe.sql.gz
docker compose down -v
ls -la ../sql
