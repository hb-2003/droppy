#!/bin/bash
# ─────────────────────────────────────────────
# deploy.sh — push local Droppy to live server
# Run: ./deploy.sh  (from inside the Files/ folder)
# ─────────────────────────────────────────────

SERVER="root@31.220.45.93"
SSH_KEY="$HOME/.ssh/id_ed25519"
REMOTE="/var/www/droppy"
LOCAL="$(cd "$(dirname "$0")" && pwd)"

SSH="ssh -o StrictHostKeyChecking=no -i $SSH_KEY"
RSYNC_SSH="ssh -o StrictHostKeyChecking=no -i $SSH_KEY"

echo ""
echo "========================================"
echo "  🚀 Deploying Droppy → 31.220.45.93"
echo "========================================"

# ── STEP 1: Sync files ───────────────────────
echo ""
echo "[1/3] Syncing files..."

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
  -e "$RSYNC_SSH" \
  "$LOCAL/" "$SERVER:$REMOTE/"

if [ $? -ne 0 ]; then
  echo "❌ rsync failed!"
  exit 1
fi
echo "✅ Files synced."

# ── STEP 2: Fix live config & permissions ────
echo ""
echo "[2/3] Fixing config & permissions..."

$SSH "$SERVER" bash << 'REMOTE_SCRIPT'
REMOTE="/var/www/droppy"

# Fix database.php — live DB credentials
sed -i "s/'hostname' => '.*'/'hostname' => '127.0.0.1'/" $REMOTE/application/config/database.php
sed -i "s/'username' => '.*', \/\/ The username/'username' => 'droppy', \/\/ The username/" $REMOTE/application/config/database.php
sed -i "s/'password' => '.*', \/\/ The password/'password' => 'vrlbWkXWH4yN7VeoXeh2vSOc', \/\/ The password/" $REMOTE/application/config/database.php
sed -i "s/'database' => '.*', \/\/ The database name/'database' => 'droppy', \/\/ The database name/" $REMOTE/application/config/database.php

# Fix config.php — live base_url
sed -i "s|'base_url' => '.*'|'base_url' => 'http://31.220.45.93/'|" $REMOTE/application/config/config.php

# Fix permissions
chown -R www-data:www-data $REMOTE
chmod -R 755 $REMOTE
chmod -R 775 $REMOTE/uploads $REMOTE/application/cache $REMOTE/application/logs

# Clear CodeIgniter cache
rm -f $REMOTE/application/cache/*

echo "Config fixed."
REMOTE_SCRIPT

echo "✅ Config done."

# ── STEP 3: Restart services ─────────────────
echo ""
echo "[3/3] Restarting PHP-FPM + Nginx..."

$SSH "$SERVER" "systemctl restart php8.3-fpm && systemctl reload nginx && echo 'Services restarted.'"

echo ""
echo "========================================"
echo "  ✅ Deploy complete!"
echo "  🌐 http://31.220.45.93"
echo "========================================"
echo ""
