#!/bin/bash
# ─────────────────────────────────────────────
# deploy.sh — push local Droppy to live server
# Run from Mac: cd to Files/ folder, then: ./deploy.sh
# ─────────────────────────────────────────────

SERVER="31.220.45.93"
PASS="GqspM8KNth3E9"
REMOTE="/var/www/droppy"
LOCAL="$(cd "$(dirname "$0")" && pwd)/"

echo ""
echo "========================================"
echo "  Deploying Droppy → $SERVER"
echo "========================================"
echo ""

# ── STEP 1: rsync via expect ──────────────────────────────────────────────────
echo "📦 [1/3] Syncing files to server..."
expect -c "
  set timeout 300
  spawn rsync -avz --progress \
    --exclude uploads/ \
    --exclude application/logs/ \
    --exclude application/cache/ \
    --exclude .env \
    --exclude deploy.sh \
    --exclude docker/ \
    --exclude docker-compose.yml \
    --exclude Dockerfile \
    --exclude '*.sql' \
    -e {ssh -o StrictHostKeyChecking=no} \
    {$LOCAL} root@${SERVER}:${REMOTE}/
  expect {
    {password:} { send {$PASS\r}; exp_continue }
    eof
  }
"

echo ""
echo "🔧 [2/3] Fixing live config & permissions..."
expect -c "
  set timeout 60
  spawn ssh -o StrictHostKeyChecking=no root@$SERVER bash
  expect {password:}
  send {$PASS\r}
  expect {\$}

  send {sed -i \"s/'hostname' => '.*'/'hostname' => '127.0.0.1'/\" $REMOTE/application/config/database.php\r}
  expect {\$}
  send {sed -i \"s/'username' => '.*', \/\/ The username/'username' => 'droppy', \/\/ The username/\" $REMOTE/application/config/database.php\r}
  expect {\$}
  send {sed -i \"s/'password' => '.*', \/\/ The password/'password' => 'vrlbWkXWH4yN7VeoXeh2vSOc', \/\/ The password/\" $REMOTE/application/config/database.php\r}
  expect {\$}
  send {sed -i \"s/'database' => '.*', \/\/ The database name/'database' => 'droppy', \/\/ The database name/\" $REMOTE/application/config/database.php\r}
  expect {\$}
  send {sed -i \"s|'base_url' => '.*'|'base_url' => 'http://31.220.45.93/'|\" $REMOTE/application/config/config.php\r}
  expect {\$}
  send {chown -R www-data:www-data $REMOTE && chmod -R 755 $REMOTE && chmod -R 775 $REMOTE/uploads $REMOTE/application/cache $REMOTE/application/logs\r}
  expect {\$}
  send {rm -f $REMOTE/application/cache/*\r}
  expect {\$}
  send {exit\r}
  expect eof
"

echo ""
echo "🔄 [3/3] Restarting services..."
expect -c "
  set timeout 30
  spawn ssh -o StrictHostKeyChecking=no root@$SERVER \"systemctl restart php8.3-fpm && systemctl reload nginx && echo 'Services restarted OK'\"
  expect {password:}
  send {$PASS\r}
  expect eof
"

echo ""
echo "========================================"
echo "  ✅ Deploy done! http://$SERVER"
echo "========================================"
echo ""
