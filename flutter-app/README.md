# Share Large Video Files (Flutter)

Client for the PHP file-sharing backend in this repo: chunked upload, share link or email, download via transfer ID.

## Configure server URL

1. **Recommended:** pass at build/run time:

   ```bash
   flutter run --dart-define=API_BASE_URL=https://your-site.com/
   ```

2. **Or** open **Settings** in the app and enter the base URL (saved locally). The app restarts and loads `handler/app_config` from that host.

3. **PHP:** ensure `handler/app_config` and `handler/metadata` exist (included in this repo’s `Handler.php`).

## Backend JSON

- `GET /handler/app_config` — theme colors, max size, chunk size, `lock_page`, languages, etc.
- `GET /handler/metadata?upload_id=&private_id=` — transfer summary for the download screen.

## Theme (matches web “Cinematic Studio” / `slvf.css`)

- **Dark** ink background (`#0A0C14` …), off-white text, lime accent default (`#D4FF3A`) — overridden by `handler/app_config` `theme_color` / `theme_color_secondary` / `theme_color_text` like the web.
- **Fonts** (via `google_fonts`, same families as `header.php`): **Bricolage Grotesque** (UI), **Instrument Serif** (hero accent line), **JetBrains Mono** (small technical labels).

## Features

- GetX routing, `dio` + cookie jar (PHP sessions for login / locked sites).
- Chunked uploads with `Content-Range` (same contract as the web `UploadHandler`).
- Optional login modal when **Send by email** is selected.
- Full-screen login when `lock_page` is `both` (from bootstrap).
- `flutter gen-l10n` — extend `lib/l10n/app_en.arb` for more locales.

## Tests

```bash
flutter analyze
flutter test
```

Local PHP (from repo root):

```bash
cd "codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files" && php -S 127.0.0.1:8000
```

## Existing PHP site branding

After pulling these changes, update **`droppy_settings`** on the server so the web UI and emails (`{site_name}`) show **Share Large Video Files**. See [`codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/rebrand_update_site_branding.sql`](../codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/rebrand_update_site_branding.sql) or use **Admin → Settings → General** for the same fields.

## My Transfers empty (History)

History uses **`droppy_uploads.email_from`** equal to the signed-in OTP email. Deploy the latest PHP (`Upload.php` / `Uploads.php` / `Handler.php`) to the same base URL the app uses, then send a **new** transfer. Rows created before the fix with empty `email_from` stay hidden until you backfill (see [`codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/history_backfill_email_from.sql`](../codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/history_backfill_email_from.sql)).


cd "/Users/harsu/Shrenuj/droppy/codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files" && \
chmod +x deploy.sh && \
brew install expect && \
PASS="GqspM8KNth3E9" \
DB_PASSWORD="vrlbWkXWH4yN7VeoXeh2vSOc" \
APP_URL="https://sharelargefilesfree.com" \
SERVER="31.220.45.93" \
SSH_PORT="22" \
DB_HOST="127.0.0.1" \
DB_USERNAME="droppy" \
DB_DATABASE="droppy" \
./deploy.sh


IP: 31.220.45.93
port: 22
rootpass: GqspM8KNth3E9
db: droppy
dbuser: droppy
dbpassword: vrlbWkXWH4yN7VeoXeh2vSOc
droppy location: /var/www/droppy/


cd "/Users/harsu/Shrenuj/droppy/codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files" && \
chmod +x deploy.sh && \
PASS="GqspM8KNth3E9" \
DB_PASSWORD="vrlbWkXWH4yN7VeoXeh2vSOc" \
APP_URL="https://sharelargefilesfree.com" \
SERVER="31.220.45.93" \
SSH_PORT="22" \
DB_HOST="127.0.0.1" \
DB_USERNAME="droppy" \
DB_DATABASE="droppy" \
./deploy.sh



DB_HOST="127.0.0.1" DB_DATABASE="droppy" DB_USERNAME="droppy" DB_PASSWORD="vrlbWkXWH4yN7VeoXeh2vSOc" php -r '
$host=getenv("DB_HOST")?: "127.0.0.1";
$db=getenv("DB_DATABASE")?: "droppy";
$user=getenv("DB_USERNAME")?: "droppy";
$pass=getenv("DB_PASSWORD")?: "";
if($pass===""){fwrite(STDERR,"DB_PASSWORD missing\n"); exit(1);}

$port=null;
if(strpos($host,":")!==false){[$h,$p]=explode(":",$host,2); $host=$h; if(ctype_digit($p)) $port=(int)$p;}
$dsn="mysql:host=$host;dbname=$db;charset=utf8mb4".($port?";port=$port":"");

$pdo=new PDO($dsn,$user,$pass,[PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION]);

$users=[
 ["test1@example.com","Test@12345","127.0.0.1"],
 ["test2@example.com","Test@12345","127.0.0.1"],
 ["test3@example.com","Test@12345","127.0.0.1"],
];

$check=$pdo->prepare("SELECT id FROM droppy_users WHERE email=? LIMIT 1");
$ins=$pdo->prepare("INSERT INTO droppy_users (email,password,ip) VALUES (?,?,?)");

foreach($users as [$email,$plain,$ip]){
  $check->execute([$email]);
  if($check->fetch()){echo "SKIP $email\n"; continue;}
  $hash=password_hash($plain,PASSWORD_DEFAULT);
  $ins->execute([$email,$hash,$ip]);
  echo "CREATED $email password=$plain\n";
}
'