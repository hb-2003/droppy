# Flutter App → Web Design Match Plan

> Goal: Make the Flutter app UI match the web design 1:1 — same colors, typography, layout, components, and states. Do not miss any point.

---

## 1. Color System


| Token                | Web Value         | Flutter Current | Status       |
| -------------------- | ----------------- | --------------- | ------------ |
| Primary (Bulma info) | `#3E8ED0`         | `#3E8ED0`       | ✅ Match      |
| Background (mobile)  | `#FFFFFF`         | `#FFFFFF`       | ✅ Match      |
| Surface              | `#FFFFFF`         | `#FFFFFF`       | ✅ Match      |
| SurfaceDim           | `#F5F5F5`         | `#F5F5F5`       | ✅ Match      |
| Border               | `#EDEDED`         | `#EDEDED`       | ✅ Match      |
| Text Primary         | `#0A0A0A`         | `#0A0A0A`       | ✅ Match      |
| Text Muted           | `#6A6D70`         | `#5C5C5C`       | ❌ Fix needed |
| Error                | `#FF6B5C`         | `#FF6B5C`       | ✅ Match      |
| Overlay              | `rgba(0,0,0,0.5)` | —               | ❌ Add        |
| Dark Tooltip bg      | `#393232`         | —               | ❌ Add        |


**File to edit:** `lib/app/theme/app_theme.dart`

---

## 2. Typography


| Element            | Web Value        | Flutter Current       | Status          |
| ------------------ | ---------------- | --------------------- | --------------- |
| Font Family        | Roboto (300–800) | Roboto (Google Fonts) | ✅ Match         |
| Upload H1 heading  | 40px, w800       | headlineSmall 20px    | ❌ Increase size |
| Hero italic accent | 40px, italic     | 26px, italic          | ❌ Increase size |
| Section H2         | 25–30px, w700    | —                     | ❌ Add style     |
| Body text          | 14–15px          | 14–16px               | ✅ Match         |
| Labels / meta      | 11–12px          | 12px                  | ✅ Match         |
| Button text        | 15px, w600       | 15px, w600            | ✅ Match         |
| File size text     | 11px, muted      | bodySmall 12px        | ⚠️ Minor diff   |


**File to edit:** `lib/app/theme/app_theme.dart`

---

## 3. Component Styles


| Component              | Web Style                                       | Flutter Current          | Status                |
| ---------------------- | ----------------------------------------------- | ------------------------ | --------------------- |
| Primary Button         | `#3E8ED0`, radius 6px, fullwidth                | FilledButton 6px         | ✅ Close               |
| Input Fields           | Bulma `.input`, border `#EDEDED`, radius 8px    | 8px, `#EDEDED` border    | ✅ Match               |
| Dropdown/Select        | Bulma `.select`, border `#EDEDED`               | DropdownButtonFormField  | ⚠️ Match border style |
| Mode Toggle            | Pill animation, `#3E8ED0` selected bg           | SegmentedButton          | ⚠️ Style to match     |
| File List Item         | File icon + name + size + divider               | ListTile with close icon | ⚠️ Match icon style   |
| Advanced Options Panel | bg `#F5F5F5`, radius 15px, padded               | Plain open fields        | ❌ Add container       |
| Upload Progress        | 250×250px circular SVG                          | LinearProgressIndicator  | ❌ Change to circular  |
| Success Card           | Check icon + copy link input + Share btn + meta | Simple check + share btn | ⚠️ Match full layout  |
| Card Shadow            | `0 0 28px rgba(0,0,0,0.2)`                      | elevation 0, border only | ⚠️ Add shadow         |
| Text Muted Color       | `#6A6D70`                                       | `#5C5C5C`                | ❌ Update value        |
| Filetype Chips         | MP4, MOV, ZIP, PSD, WAV pills                   | Not present              | ❌ Add chips           |
| Stats Bar              | 3-col: Max size                                 | Max files                | Cost                  |


---

## 4. Screen-by-Screen Plan

---

### Screen 1 — Splash Screen

**Web equivalent:** None (instant load on web)

- Replace generic cloud icon with app logo/wordmark
- Match branding style: "Share Large Video Files" multi-line wordmark
- Add Lottie animation for loading state (use `lupuorrc.json` from web assets)
- Center layout with proper vertical spacing

**File:** `lib/modules/splash/splash_view.dart`

---

### Screen 2 — Login Screen

**Web equivalent:** `login.php`

- Centered card layout (white bg, max-width constrained)
- App logo at top of card
- Show error notification widget if login fails (match web Bulma `.notification.is-danger`)
- Email input field (Bulma `.input` style — border `#EDEDED`, radius 8px)
- Password input field (same style, obscured)
- reCAPTCHA placeholder (if enabled by config)
- Primary button: `#3E8ED0`, fullwidth, radius 6px, "Login" label
- Background: match web (dark/video bg on desktop, white on mobile)

**File:** `lib/modules/login/login_view.dart`

---

### Screen 3 — Home Screen (Upload) — Biggest Change

**Web equivalent:** `upload.php`

#### 3a. AppBar / Header

- Wordmark logo left: "Share Large Video Files" multi-line (match web `.slvf-nav` wordmark)
- Right icons: History + Settings (match web nav actions)
- AppBar background: white, elevation 0, border-bottom `#EDEDED`

#### 3b. Hero Copy Section (left column on web, top on mobile)

- Eyebrow label (small, muted, uppercase)
- H1 heading: "Send heavy files" + italic `instantly.` — 40px, w800
- Subheading paragraph — 14–15px, muted color
- Benefit list (4 items):
  - ✅ Icon + **bold title** + subtitle span
  - Items: End-to-end encryption, No account needed, Auto-expiry links, Video optimized
- Stats bar (3 cols with dividers):
  - Max size (from config)
  - Max files (from config)
  - Cost: Free

#### 3c. Upload Card (`.upload-block`)

- Card shadow: `0 0 28px rgba(0,0,0,0.2)`
- Border radius: 10px
- Padding: 20px

**Mode Toggle:**

- Link / Email pill toggle (SegmentedButton styled to match web radio pill animation)
- Selected state: `#3E8ED0` bg, white text
- Unselected: white bg, dark text, border `#EDEDED`

**Drop Zone — Empty State (`.select-first-files`):**

- Decorative corner borders (CSS art — 4 corner L-shapes)
- File illustration: 3 fanned file cards + central `+` icon
- Headline: "Drop a heavy file here." (18–20px, w600)
- Subtext: max size info (12px, muted)
- Filetype chips row: `MP4` `MOV` `ZIP` `PSD` `WAV` (pill badges, bg `#F5F5F5`, border `#EDEDED`)
- Folder select link (text link, primary color)

**Drop Zone — Files Selected State (`.selected-files`):**

- File list (`ListView`): each item = file icon + name + size + remove icon
- Stats row: total size | selected count | remaining
- "Add more files" + "Add folder" buttons (outlined, small)

**Email Fields (conditional, link mode hidden):**

- `email_to` field with label
- `email_from` field with label
- 12px gap between fields

**Message Field:**

- Multiline TextField, 3 lines, optional, placeholder "Message (optional)"

**Advanced Options Panel:**

- Container bg: `#F5F5F5`, radius 15px, padding 16px
- Section label: "Advanced options" (12px, w600, muted)
- Share type radio: Mail / Link (pill style)
- Destruct radio: Yes / No (pill style)
- Password input (shows when destruct = Yes or always optional)
- Expire select dropdown (matches web select options)

**Button Block (bottom of card):**

- bg: white, height ~70px, border-top `#EDEDED`
- Primary button: "Transfer" / "Send" — fullwidth, `#3E8ED0`, radius 6px
- Options button: three-dot icon (secondary action)

#### 3d. Upload States

**Verify State (`#upload-verify`):**

- Lottie animation (email envelope)
- H1: "Verify Email" (30px, w700)
- Paragraph: "Enter the code sent to {email}"
- 6-digit number input (OTP style)
- Primary button: "Verify and Upload"
- Resend link + countdown timer

**Progress State (`#upload-progress`):**

- Circular progress indicator — 250×250px
- Percentage text center (45px, w700)
- File size + estimated time (below)
- Cancel button (text link)

**Success — Link State (`.slvf-complete`):**

- Check circle icon (56px, `#3E8ED0`)
- Title: "Transfer ready!" (26px, w700)
- Copy link row: SelectableText input + Copy icon button
- Meta row: Expires {date} · {download count} downloads
- "Send another" OutlinedButton

**Success — Email State:**

- Envelope icon (56px, `#3E8ED0`)
- Title: "Email sent!" (26px, w700)
- Subtitle: "We've notified your recipient(s)"
- "Send another" OutlinedButton

**Files:** `lib/modules/home/home_view.dart`

---

### Screen 4 — Download Screen

**Web equivalent:** `download.php`

#### 4a. Ready State

- Download SVG icon (40×40, `#3E8ED0`)
- H1: "Your download is ready" (30px, w700)
- Expiry row: timer icon + expiry date (12px, muted)
- Message box (if present): bg `#F5F5F5`, radius 8px, padding 12px
- File list (`.slvf-dl-files`):
  - Header: "{count} files · {total size}" + Preview link
  - Each file: file type icon + filename + size
  - Dividers between items
- Report button (flag icon, outlined, if enabled by config)
- Download button: primary, fullwidth, `#3E8ED0`

#### 4b. Password Gate State

- Lock SVG icon (36×36, muted)
- H1: "This transfer is password-protected" (25–30px, w700)
- Paragraph: "Enter the password to access your files." (14px, muted)
- Password input field
- Unlock button: primary, fullwidth

#### 4c. Processing State

- Pulse/spinner icon (38×38, animated)
- H1: "Processing…" (25px, w700)
- Refresh button: outlined

#### 4d. Not Found State

- X-circle icon (40×40, error `#FF6B5C`)
- H1: "Transfer not found" (25px, w700)
- Paragraph: "This link may have expired or been deleted." (14px, muted)
- "Go home" OutlinedButton

**File:** `lib/modules/download/download_view.dart`

---

### Screen 5 — OTP / Verify Widget (New)

**Web equivalent:** OTP modal in `_elem/header.php`

- Step 1 — Email input:
  - Title: "Verify your email"
  - Email TextField
  - "Send Code" primary button
- Step 2 — OTP input:
  - Title: "Enter the 6-digit code"
  - Subtitle: "Sent to {email}"
  - 6-digit OTP input (number keyboard)
  - Countdown timer (resend enabled after 60s)
  - "Resend code" TextButton
  - "Verify" primary button
- Step 3 — Success:
  - Lottie animation
  - "Email verified!" message
  - Auto-dismiss after 2s

**File:** `lib/widgets/otp_verify_widget.dart` (new file)

---

### Screen 6 — Settings Screen

**Web equivalent:** None (admin-only on web)

- Keep current structure
- Match input/button styles to updated theme
- Group sections with `#F5F5F5` container cards (match advanced options panel style)

**File:** `lib/modules/settings/settings_view.dart`

---

## 5. Shared Widgets to Create/Update


| Widget                   | Description                         | File                                   |
| ------------------------ | ----------------------------------- | -------------------------------------- |
| `AppLogo`                | Multi-line wordmark widget          | `lib/widgets/app_logo.dart`            |
| `FileTypeChips`          | MP4/MOV/ZIP/PSD/WAV pill row        | `lib/widgets/filetype_chips.dart`      |
| `StatsBar`               | 3-col stat bar (size, files, cost)  | `lib/widgets/stats_bar.dart`           |
| `CircularUploadProgress` | 250px circular progress with %      | `lib/widgets/circular_progress.dart`   |
| `FileListTile`           | File icon + name + size + remove    | `lib/widgets/file_list_tile.dart`      |
| `AdvancedOptionsPanel`   | `#F5F5F5` grouped options container | `lib/widgets/advanced_options.dart`    |
| `SuccessCard`            | Check/envelope + link copy + meta   | `lib/widgets/success_card.dart`        |
| `DownloadStateCard`      | All 4 download states in one widget | `lib/widgets/download_state_card.dart` |
| `OtpVerifyWidget`        | 3-step OTP flow                     | `lib/widgets/otp_verify_widget.dart`   |
| `PillToggle`             | Animated pill-style mode toggle     | `lib/widgets/pill_toggle.dart`         |


---

## 6. Assets to Add


| Asset                | Source                               | Usage                |
| -------------------- | ------------------------------------ | -------------------- |
| Lottie: email verify | `assets/themes/modern/lupuorrc.json` | OTP step 3 success   |
| Lottie: processing   | `assets/themes/modern/yyecauzv.json` | Upload progress      |
| Lottie: upload anim  | `assets/themes/modern/rhvddzym.json` | Splash / loading     |
| File type icons      | LineIcons CDN → local SVG            | File list items      |
| Download icon SVG    | Inline SVG                           | Download ready state |
| Lock icon SVG        | Inline SVG                           | Password gate        |


**pubspec.yaml additions:**

```yaml
dependencies:
  lottie: ^latest
  
flutter:
  assets:
    - assets/lottie/
    - assets/icons/
```

---

## 7. Implementation Phases

### Phase 1 — Theme Fixes

- Fix `textMuted` color: `#5C5C5C` → `#6A6D70`
- Add `displayLarge` size to 40px for upload heading
- Add card shadow: `0 0 28px rgba(0,0,0,0.2)`
- Update button border-radius: confirm 6px everywhere
- Add overlay color token `rgba(0,0,0,0.5)`

**File:** `lib/app/theme/app_theme.dart`

### Phase 2 — Home/Upload Screen

- AppBar wordmark logo
- Hero copy section (heading, subtext, benefits, stats bar)
- Drop zone UI (empty + selected states)
- Filetype chips
- Advanced options panel container
- Circular progress indicator
- Success states (link + email)
- Verify/OTP state

**File:** `lib/modules/home/home_view.dart`

### Phase 3 — Download Screen

- All 4 states (ready, password, processing, not found)
- File list tile widget
- Download/lock/pulse icons

**File:** `lib/modules/download/download_view.dart`

### Phase 4 — Login Screen

- App logo at top
- Error notification widget
- Match button to primary style
- Centered card layout

**File:** `lib/modules/login/login_view.dart`

### Phase 5 — OTP Widget

- 3-step OTP flow widget
- Lottie success animation

**File:** `lib/widgets/otp_verify_widget.dart`

### Phase 6 — Splash + Assets

- Update branding
- Add Lottie assets
- Add icon assets

**File:** `lib/modules/splash/splash_view.dart`

---

## 8. Web Design Reference Files


| File                                                                                                    | Purpose                                   |
| ------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/assets/themes/modern/css/style.css`               | Main web CSS (colors, layout, components) |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/assets/themes/modern/css/slvf.css`                | Custom design layer (hero, cards, nav)    |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/application/views/themes/modern/upload.php`       | Upload page HTML                          |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/application/views/themes/modern/download.php`     | Download page HTML                        |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/application/views/themes/modern/login.php`        | Login page HTML                           |
| `codecanyon-8iDW6Q0s-droppy-online-file-sharing/Files/application/views/themes/modern/_elem/header.php` | Header + OTP modal HTML                   |
| `flutter-app/lib/app/theme/app_theme.dart`                                                              | Flutter theme file                        |


---

## 9. Do Not Change

- App routing logic (`app_pages.dart`, `app_routes.dart`)
- API/data layer (`data/repositories/`, `data/providers/`)
- State management controllers (only update view files)
- `pubspec.yaml` dependency versions (only add new packages)
- Localization keys (`l10n/`)

