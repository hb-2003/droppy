#!/usr/bin/env bash
# Envento migration runner for Droppy.
#
# Applies every application/update/update_envento_*.sql file that hasn't already
# been recorded in the droppy_envento_migrations ledger table.
#
# Config resolution order (first hit wins per variable):
#   1. Existing environment variable (DB_HOST, DB_PORT, DB_USER, DB_PASS, DB_NAME, MYSQL_BIN)
#   2. .env file at ENV_FILE, scripts/.env, or application's root .env
#   3. application/config/database.php (parsed via php CLI)
#
# Usage:
#   bash scripts/migrate.sh                       # auto-detect from .env / database.php
#   DB_HOST=... DB_USER=... bash scripts/migrate.sh
#   ENV_FILE=/path/to/prod.env bash scripts/migrate.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
CONFIG_FILE="${APP_ROOT}/application/config/database.php"
UPDATE_DIR="${APP_ROOT}/application/update"

log()  { printf '[migrate] %s\n' "$*"; }
fail() { printf '[migrate][error] %s\n' "$*" >&2; exit 1; }

# --- Load .env (does not override variables already set in env) -------------
load_env_file() {
  local file="$1"
  [[ -f "${file}" ]] || return 0
  log "loading env from ${file}"
  # Read KEY=VALUE lines, strip surrounding quotes, skip comments/blank lines.
  # Only sets variables that are not already defined in the environment, so
  # a real env var always beats a .env entry.
  while IFS= read -r raw || [[ -n "${raw}" ]]; do
    local line="${raw%$'\r'}"
    [[ -z "${line}" || "${line}" =~ ^[[:space:]]*# ]] && continue
    line="${line#"${line%%[![:space:]]*}"}"
    [[ "${line}" == export\ * ]] && line="${line#export }"
    [[ "${line}" != *=* ]] && continue
    local key="${line%%=*}"
    local val="${line#*=}"
    key="${key%"${key##*[![:space:]]}"}"
    if [[ "${val}" == \"*\" && "${val}" == *\" ]]; then
      val="${val%\"}"; val="${val#\"}"
    elif [[ "${val}" == \'*\' && "${val}" == *\' ]]; then
      val="${val%\'}"; val="${val#\'}"
    fi
    [[ -z "${key}" ]] && continue
    if [[ -z "${!key:-}" ]]; then
      export "${key}=${val}"
    fi
  done < "${file}"
}

ENV_CANDIDATES=()
[[ -n "${ENV_FILE:-}" ]] && ENV_CANDIDATES+=("${ENV_FILE}")
ENV_CANDIDATES+=("${SCRIPT_DIR}/.env" "${APP_ROOT}/.env")
for f in "${ENV_CANDIDATES[@]}"; do
  [[ -f "${f}" ]] && { load_env_file "${f}"; break; }
done

# --- Locate mysql client ----------------------------------------------------
MYSQL_BIN="${MYSQL_BIN:-}"
if [[ -z "${MYSQL_BIN}" ]]; then
  if command -v mysql >/dev/null 2>&1; then
    MYSQL_BIN="$(command -v mysql)"
  elif [[ -x /Users/Shared/DBngin/mysql/8.0.33/bin/mysql ]]; then
    MYSQL_BIN="/Users/Shared/DBngin/mysql/8.0.33/bin/mysql"
  else
    DBNGIN_MYSQL="$(ls -d /Users/Shared/DBngin/mysql/*/bin/mysql 2>/dev/null | sort -V | tail -1 || true)"
    [[ -n "${DBNGIN_MYSQL}" ]] && MYSQL_BIN="${DBNGIN_MYSQL}"
  fi
fi
[[ -x "${MYSQL_BIN}" ]] || fail "mysql client not found. Set MYSQL_BIN=/path/to/mysql"

# --- Resolve DB credentials -------------------------------------------------
if [[ -z "${DB_HOST:-}" || -z "${DB_USER:-}" || -z "${DB_NAME:-}" ]]; then
  [[ -f "${CONFIG_FILE}" ]] || fail "database.php not found at ${CONFIG_FILE}"
  command -v php >/dev/null 2>&1 || fail "php CLI required to parse database.php (or set DB_* env vars)"

  CFG_JSON="$(php -r '
    define("BASEPATH", "x");
    if (!defined("ENVIRONMENT")) define("ENVIRONMENT", "production");
    require $argv[1];
    $d = $db["default"];
    $host = $d["hostname"]; $port = "3306";
    if (strpos($host, ":") !== false) { list($host, $port) = explode(":", $host, 2); }
    echo json_encode([
      "host" => $host,
      "port" => $port,
      "user" => $d["username"],
      "pass" => $d["password"],
      "name" => $d["database"],
    ]);
  ' "${CONFIG_FILE}")"

  DB_HOST="${DB_HOST:-$(printf '%s' "${CFG_JSON}" | php -r 'echo json_decode(stream_get_contents(STDIN), true)["host"];')}"
  DB_PORT="${DB_PORT:-$(printf '%s' "${CFG_JSON}" | php -r 'echo json_decode(stream_get_contents(STDIN), true)["port"];')}"
  DB_USER="${DB_USER:-$(printf '%s' "${CFG_JSON}" | php -r 'echo json_decode(stream_get_contents(STDIN), true)["user"];')}"
  DB_PASS="${DB_PASS:-$(printf '%s' "${CFG_JSON}" | php -r 'echo json_decode(stream_get_contents(STDIN), true)["pass"];')}"
  DB_NAME="${DB_NAME:-$(printf '%s' "${CFG_JSON}" | php -r 'echo json_decode(stream_get_contents(STDIN), true)["name"];')}"
fi
DB_PORT="${DB_PORT:-3306}"

log "mysql client : ${MYSQL_BIN}"
log "target DB    : ${DB_USER}@${DB_HOST}:${DB_PORT}/${DB_NAME}"

# --- mysql wrapper (password via env, never on argv) ------------------------
run_sql_server() {
  # Run a statement against the server (no default database).
  local sql="$1"
  MYSQL_PWD="${DB_PASS}" "${MYSQL_BIN}" \
    --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USER}" \
    --batch --skip-column-names -e "${sql}"
}
run_sql() {
  local sql="$1"
  MYSQL_PWD="${DB_PASS}" "${MYSQL_BIN}" \
    --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USER}" \
    -D "${DB_NAME}" --batch --skip-column-names -e "${sql}"
}
run_file() {
  local file="$1"
  MYSQL_PWD="${DB_PASS}" "${MYSQL_BIN}" \
    --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USER}" \
    -D "${DB_NAME}" < "${file}"
}
# Lenient variant: continue past statement errors (used for the vendor's
# install/droppy.sql which has references to non-existent tables).
run_file_force() {
  local file="$1"
  MYSQL_PWD="${DB_PASS}" "${MYSQL_BIN}" \
    --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" -u "${DB_USER}" \
    -D "${DB_NAME}" --force < "${file}"
}

# --- Ensure database exists -------------------------------------------------
log "ensuring database ${DB_NAME}"
run_sql_server "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# --- Bootstrap base schema if missing ---------------------------------------
BOOTSTRAP_BASE="${BOOTSTRAP_BASE:-1}"
if [[ "${BOOTSTRAP_BASE}" == "1" ]]; then
  HAS_SETTINGS="$(run_sql_server "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='${DB_NAME}' AND table_name='droppy_settings';")"
  if [[ "${HAS_SETTINGS}" == "0" ]]; then
    INSTALL_SQL="${APP_ROOT}/application/install/droppy.sql"
    if [[ -f "${INSTALL_SQL}" ]]; then
      log "base schema missing, importing $(basename "${INSTALL_SQL}") (force mode: vendor file has broken index refs)"
      run_file_force "${INSTALL_SQL}" 2>&1 | sed 's/^/[migrate][install] /' || true
    else
      log "warn: ${INSTALL_SQL} not found and droppy_settings missing; later migrations may fail"
    fi
  else
    log "base schema present"
  fi
fi

# --- Ensure ledger table ----------------------------------------------------
log "ensuring ledger table droppy_envento_migrations"
run_sql "CREATE TABLE IF NOT EXISTS droppy_envento_migrations (
  filename VARCHAR(255) NOT NULL PRIMARY KEY,
  applied_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;"

# --- Apply pending migrations ----------------------------------------------
FILES=()
while IFS= read -r f; do
  [[ -n "${f}" ]] && FILES+=("${f}")
done < <(ls "${UPDATE_DIR}"/update_envento_*.sql 2>/dev/null | sort)

if [[ ${#FILES[@]} -eq 0 ]]; then
  log "no update_envento_*.sql files found in ${UPDATE_DIR}"
  exit 0
fi

applied=0
skipped=0
for path in "${FILES[@]}"; do
  fname="$(basename "${path}")"
  already="$(run_sql "SELECT 1 FROM droppy_envento_migrations WHERE filename='${fname}' LIMIT 1;" || true)"
  if [[ "${already}" == "1" ]]; then
    log "skip    ${fname} (already applied)"
    skipped=$((skipped+1))
    continue
  fi

  log "apply   ${fname}"
  if run_file "${path}"; then
    run_sql "INSERT INTO droppy_envento_migrations (filename) VALUES ('${fname}');"
    applied=$((applied+1))
    log "ok      ${fname}"
  else
    fail "migration failed: ${fname}"
  fi
done

log "done. applied=${applied} skipped=${skipped} total=${#FILES[@]}"
