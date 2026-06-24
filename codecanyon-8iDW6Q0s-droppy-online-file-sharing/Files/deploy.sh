#!/bin/bash
# ─────────────────────────────────────────────
# deploy.sh — push local Droppy to live server
# Run: ./deploy.sh  (from inside the Files/ folder)
# Config: .env (SERVER_IP, SERVER_SSH_PORT, SERVER_ROOT_PASS, etc.)
# ─────────────────────────────────────────────

set -euo pipefail

LOCAL="$(cd "$(dirname "$0")" && pwd)"

if [[ -f "$LOCAL/.env" ]]; then
  # shellcheck disable=SC1091
  set -a && source "$LOCAL/.env" && set +a
fi

SERVER_IP="${SERVER_IP:-31.220.45.93}"
SSH_PORT="${SERVER_SSH_PORT:-49831}"
REMOTE="${DROPPY_PATH:-/var/www/droppy}"
REMOTE="${REMOTE%/}"
APP_URL="${APP_URL:-https://sharelargefilesfree.com}"
APP_URL="${APP_URL%/}/"
SSH_PASS="${SERVER_ROOT_PASS:-${PASS:-}}"
DB_HOST="${DB_HOST:-127.0.0.1}"
DB_USERNAME="${DB_USERNAME:-droppy}"
DB_DATABASE="${DB_DATABASE:-droppy}"
DB_PASSWORD="${DB_PASSWORD:-}"

SERVER="root@${SERVER_IP}"
SSH_KEY="${SSH_KEY:-$HOME/.ssh/id_ed25519}"

SSH_OPTS=(ssh -o StrictHostKeyChecking=no -o ConnectTimeout=20 -p "$SSH_PORT")
if [[ -f "$SSH_KEY" ]]; then
  SSH_OPTS+=(-i "$SSH_KEY")
fi

# Use SSHPASS env (more reliable than -p for special chars / rapid reconnects).
run_ssh() {
  if [[ -n "$SSH_PASS" ]] && command -v sshpass >/dev/null 2>&1; then
    SSHPASS="$SSH_PASS" sshpass -e "${SSH_OPTS[@]}" "$@"
  else
    "${SSH_OPTS[@]}" "$@"
  fi
}

preflight() {
  echo ""
  echo "Checking SSH to ${SERVER}:${SSH_PORT} ..."
  if ! run_ssh "$SERVER" "echo ok" >/dev/null 2>&1; then
    echo "❌ Cannot reach the server over SSH."
    [[ -z "$SSH_PASS" ]] && echo "  Set SERVER_ROOT_PASS in .env"
    ! command -v sshpass >/dev/null 2>&1 && echo "  Install: brew install hudochenkov/sshpass/sshpass"
    exit 1
  fi
  echo "✅ SSH OK"
}

echo ""
echo "========================================"
echo "  🚀 Deploying Droppy → ${APP_URL}"
echo "========================================"

preflight

echo ""
echo "[1/2] Syncing files..."

if [[ -n "$SSH_PASS" ]] && command -v sshpass >/dev/null 2>&1; then
  export SSHPASS="$SSH_PASS"
  RSYNC_RSH="sshpass -e $(printf '%q ' "${SSH_OPTS[@]}")"
else
  RSYNC_RSH="$(printf '%q ' "${SSH_OPTS[@]}")"
fi

rsync -avz --progress \
  --exclude 'uploads/' \
  --exclude 'application/logs/' \
  --exclude 'application/cache/' \
  --exclude '.env' \
  --exclude 'deploy.sh' \
  --exclude 'docker/' \
  --exclude 'docker-compose.yml' \
  --exclude 'Dockerfile' \
  --exclude '*.sql' \
  --exclude '.DS_Store' \
  -e "$RSYNC_RSH" \
  "$LOCAL/" "$SERVER:$REMOTE/"

echo "✅ Files synced."

# Single SSH session for config + restart (avoids sshpass failing on back-to-back logins).
echo ""
echo "[2/2] Config, permissions & restart..."

run_ssh "$SERVER" bash -s << REMOTE_SCRIPT
set -e
REMOTE="$REMOTE"
DB_HOST="$DB_HOST"
DB_USERNAME="$DB_USERNAME"
DB_DATABASE="$DB_DATABASE"
DB_PASSWORD="$DB_PASSWORD"
APP_URL="$APP_URL"

sed -i "s/'hostname' => '.*'/'hostname' => '\${DB_HOST}'/" "\$REMOTE/application/config/database.php"
sed -i "s/'username' => '.*', \\/\\/ The username/'username' => '\${DB_USERNAME}', \\/\\/ The username/" "\$REMOTE/application/config/database.php"
sed -i "s/'password' => '.*', \\/\\/ The password/'password' => '\${DB_PASSWORD}', \\/\\/ The password/" "\$REMOTE/application/config/database.php"
sed -i "s/'database' => '.*', \\/\\/ The database name/'database' => '\${DB_DATABASE}', \\/\\/ The database name/" "\$REMOTE/application/config/database.php"
sed -i "s|'base_url' => '.*'|'base_url' => '\${APP_URL}'|" "\$REMOTE/application/config/config.php"

chown -R www-data:www-data "\$REMOTE"
chmod -R 755 "\$REMOTE"
chmod -R 775 "\$REMOTE/uploads" "\$REMOTE/application/cache" "\$REMOTE/application/logs"
rm -f "\$REMOTE/application/cache/"*

systemctl restart php8.3-fpm
systemctl reload nginx
echo "Config fixed. Services restarted."
REMOTE_SCRIPT

echo "✅ Done."

echo ""
echo "========================================"
echo "  ✅ Deploy complete!"
echo "  🌐 ${APP_URL}"
echo "========================================"
echo ""
