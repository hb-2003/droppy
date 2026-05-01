<?php
/**
 * Droppy / Envento — Database migration runner.
 *
 * Reads scripts/.env, then applies SQL files in this order:
 *   1. application/install/droppy.sql                (base schema, only if droppy_settings is missing)
 *   2. application/plugins/droppy_premium/install.sql        (premium plugin tables)
 *   3. application/plugins/droppy_premium/updates/update_*.sql  (in version order)
 *
 * Each file is recorded in the `droppy_migrations` table so it never runs twice.
 *
 * Usage:
 *   cd Files/
 *   php scripts/migrate.php           # apply pending migrations
 *   php scripts/migrate.php status    # show what has been applied / what's pending
 */

declare(strict_types=1);

$BASE = realpath(__DIR__ . '/..');
if ($BASE === false) {
    fwrite(STDERR, "Cannot resolve base path.\n");
    exit(1);
}

/* ---------- Load .env ---------- */
$envFile = getenv('ENV_FILE') ?: ($BASE . '/scripts/.env');
$env = [
    'DB_HOST' => '127.0.0.1',
    'DB_PORT' => '3306',
    'DB_USER' => 'root',
    'DB_PASS' => '',
    'DB_NAME' => 'droppy',
    'BOOTSTRAP_BASE' => '1',
];
if (is_readable($envFile)) {
    foreach (file($envFile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) as $line) {
        $line = trim($line);
        if ($line === '' || $line[0] === '#') continue;
        if (!str_contains($line, '=')) continue;
        [$k, $v] = explode('=', $line, 2);
        $env[trim($k)] = trim($v);
    }
}
foreach ($env as $k => $v) {
    $real = getenv($k);
    if ($real !== false && $real !== '') $env[$k] = $real;
}

/* ---------- Connect ----------
 * PHP 8.1+ defaults mysqli to throw exceptions on errors. We want plain
 * boolean returns so the runner can decide whether to skip "already exists"
 * style errors itself. */
mysqli_report(MYSQLI_REPORT_OFF);

$mysqli = @new mysqli(
    $env['DB_HOST'],
    $env['DB_USER'],
    $env['DB_PASS'],
    '',
    (int) $env['DB_PORT']
);
if ($mysqli->connect_errno) {
    fwrite(STDERR, "Connect failed: {$mysqli->connect_error}\n");
    exit(1);
}
$mysqli->set_charset('utf8mb4');

/* Relax MySQL strict mode for the migration session: vendor INSERT
   statements omit some NOT NULL columns and rely on legacy implicit
   defaults. This only affects the migration connection, not the app. */
$mysqli->query("SET SESSION sql_mode = ''");

$db = $mysqli->real_escape_string($env['DB_NAME']);
$mysqli->query("CREATE DATABASE IF NOT EXISTS `$db` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci");
$mysqli->select_db($env['DB_NAME']);

/* ---------- Migration tracking table ---------- */
$mysqli->query("
    CREATE TABLE IF NOT EXISTS `droppy_migrations` (
        `id`         INT(11) NOT NULL AUTO_INCREMENT,
        `filename`   VARCHAR(255) NOT NULL,
        `applied_at` INT(11) NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `filename` (`filename`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
");

function applied(mysqli $m, string $name): bool {
    $stmt = $m->prepare("SELECT 1 FROM droppy_migrations WHERE filename = ? LIMIT 1");
    $stmt->bind_param('s', $name);
    $stmt->execute();
    $stmt->store_result();
    return $stmt->num_rows > 0;
}

function mark_applied(mysqli $m, string $name): void {
    $stmt = $m->prepare("INSERT IGNORE INTO droppy_migrations (filename, applied_at) VALUES (?, ?)");
    $now = time();
    $stmt->bind_param('si', $name, $now);
    $stmt->execute();
}

function table_exists(mysqli $m, string $table): bool {
    $stmt = $m->prepare("SELECT 1 FROM information_schema.tables WHERE table_schema = DATABASE() AND table_name = ? LIMIT 1");
    $stmt->bind_param('s', $table);
    $stmt->execute();
    $stmt->store_result();
    return $stmt->num_rows > 0;
}

/* ---------- SQL runner (statement-by-statement, comment-safe) ---------- */
function run_sql_file(mysqli $m, string $path): void {
    if (!is_readable($path)) {
        throw new RuntimeException("Cannot read $path");
    }
    $sql = file_get_contents($path);

    $clean = '';
    foreach (preg_split('/\R/', $sql) as $line) {
        $t = ltrim($line);
        if ($t === '' || str_starts_with($t, '--') || str_starts_with($t, '#')) continue;

        /* Vendor bug fix: modern MySQL rejects DEFAULT values on
           BLOB / TEXT / JSON / GEOMETRY columns. Some vendor migrations
           ship `... longtext DEFAULT 'foo'` which fails with errno 1101.
           Strip the offending DEFAULT clause silently. */
        $line = preg_replace(
            '/\b(LONGTEXT|MEDIUMTEXT|TINYTEXT|TEXT|BLOB|LONGBLOB|MEDIUMBLOB|TINYBLOB|JSON|GEOMETRY)\b(\s+(?:CHARACTER\s+SET\s+\S+\s+)?(?:COLLATE\s+\S+\s+)?(?:NOT\s+NULL\s+|NULL\s+)?)DEFAULT\s+(?:\'[^\']*\'|\d+|NULL|"[^"]*")/i',
            '$1$2',
            $line
        );

        $clean .= $line . "\n";
    }

    /* MySQL error codes we treat as "already done — skip and continue".
       Lets a previously half-applied vendor SQL be re-run safely. */
    static $idempotent = [
        1050, // ER_TABLE_EXISTS_ERROR
        1060, // ER_DUP_FIELDNAME (ALTER ADD column already exists)
        1061, // ER_DUP_KEYNAME (CREATE INDEX already exists)
        1062, // ER_DUP_ENTRY (INSERT of seed row already present)
        1068, // ER_MULTIPLE_PRI_KEY (ALTER ADD PRIMARY KEY already exists)
        1091, // ER_CANT_DROP_FIELD_OR_KEY
        1146, // ER_NO_SUCH_TABLE (target table missing — likely a paid add-on)
        1054, // ER_BAD_FIELD_ERROR (referenced column missing — paid add-on)
    ];

    foreach (explode(';', $clean) as $stmt) {
        $stmt = trim($stmt);
        if ($stmt === '') continue;
        if (!$m->query($stmt)) {
            if (in_array($m->errno, $idempotent, true)) {
                continue;
            }
            throw new RuntimeException("SQL error in " . basename($path) . " (" . $m->errno . "): " . $m->error . "\n>>> " . substr($stmt, 0, 200));
        }
    }
}

/* ---------- Build migration list ---------- */
$migrations = [];

/* Shim: create droppy_uploads (vendor install.sql forgets to create it). */
$shim = $BASE . '/scripts/sql/00_missing_uploads_table.sql';
if (file_exists($shim)) {
    $migrations[] = ['name' => '00_shim/missing_uploads_table.sql', 'path' => $shim, 'kind' => 'shim'];
}

$baseSql = $BASE . '/application/install/droppy.sql';
if (file_exists($baseSql)) {
    $migrations[] = ['name' => '00_base/droppy.sql', 'path' => $baseSql, 'kind' => 'base'];
}

/* updatev2.sql lives next to droppy.sql and must run after the base. */
$baseV2 = $BASE . '/application/install/updatev2.sql';
if (file_exists($baseV2)) {
    $migrations[] = ['name' => '00_base/updatev2.sql', 'path' => $baseV2, 'kind' => 'plugin'];
}

/* Main script update history (application/update/update_*.sql), in version order. */
$mainUpdates = glob($BASE . '/application/update/update_*.sql') ?: [];
usort($mainUpdates, function ($a, $b) {
    preg_match('/update_([\d.]+)\.sql$/', $a, $ma);
    preg_match('/update_([\d.]+)\.sql$/', $b, $mb);
    return version_compare($ma[1] ?? '0', $mb[1] ?? '0');
});
foreach ($mainUpdates as $f) {
    $migrations[] = ['name' => '00_main_updates/' . basename($f), 'path' => $f, 'kind' => 'plugin'];
}

/* Premium plugin SQL — look in the local plugin folder first, then fall
   back to the original CodeCanyon premium package shipped alongside the
   main app (so the script works even if you only copied the PHP files). */
$premiumCandidates = [
    $BASE . '/application/plugins/droppy_premium',
    realpath($BASE . '/../../codecanyon-3Yhp8n6O-droppy-premium-subscription/Files/application/plugins/droppy_premium') ?: '',
];
$premiumDir = '';
foreach ($premiumCandidates as $cand) {
    if ($cand && file_exists($cand . '/install.sql')) { $premiumDir = $cand; break; }
}

if ($premiumDir !== '') {
    $migrations[] = ['name' => '01_premium/install.sql', 'path' => $premiumDir . '/install.sql', 'kind' => 'plugin'];
}

$updateGlob = $premiumDir !== '' ? (glob($premiumDir . '/updates/update_*.sql') ?: []) : [];
usort($updateGlob, function ($a, $b) {
    preg_match('/update_([\d.]+)\.sql$/', $a, $ma);
    preg_match('/update_([\d.]+)\.sql$/', $b, $mb);
    return version_compare($ma[1] ?? '0', $mb[1] ?? '0');
});
foreach ($updateGlob as $f) {
    $migrations[] = ['name' => '02_premium_updates/' . basename($f), 'path' => $f, 'kind' => 'plugin'];
}

/* ---------- Mode: status ---------- */
$mode = $argv[1] ?? 'apply';
if ($mode === 'status') {
    echo "Migrations status:\n";
    foreach ($migrations as $mig) {
        $tag = applied($mysqli, $mig['name']) ? "[applied]" : "[pending]";
        echo "  $tag  {$mig['name']}\n";
    }
    exit(0);
}

/* ---------- Mode: apply ---------- */
$bootstrapBase = ($env['BOOTSTRAP_BASE'] ?? '1') === '1';
$ranAny = false;

foreach ($migrations as $mig) {
    if (applied($mysqli, $mig['name'])) {
        echo "skip    {$mig['name']}\n";
        continue;
    }

    if ($mig['kind'] === 'base' && !$bootstrapBase && !table_exists($mysqli, 'droppy_settings')) {
        echo "skip    {$mig['name']} (BOOTSTRAP_BASE=0 but droppy_settings missing — refusing to bootstrap)\n";
        continue;
    }
    if ($mig['kind'] === 'base' && table_exists($mysqli, 'droppy_settings')) {
        echo "skip    {$mig['name']} (already initialised — droppy_settings exists)\n";
        mark_applied($mysqli, $mig['name']);
        continue;
    }

    echo "apply   {$mig['name']} ... ";
    try {
        run_sql_file($mysqli, $mig['path']);
        mark_applied($mysqli, $mig['name']);
        $ranAny = true;
        echo "ok\n";
    } catch (Throwable $e) {
        echo "FAILED\n";
        fwrite(STDERR, $e->getMessage() . "\n");
        exit(1);
    }
}

echo $ranAny ? "\nDone.\n" : "\nNothing to do — already up to date.\n";
$mysqli->close();
