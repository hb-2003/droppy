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