# Share Large Video Files — UI/UX Redesign Plan
## Modern User-Side Redesign

---

## 1. Current Design Audit

### What Exists Now
| Element | Current State | Problem |
|---|---|---|
| Layout | Full-screen background + left-aligned card | Card feels small, disconnected from background |
| Branding | "Droppy" logo top-left | No clear value proposition or headline |
| Upload widget | Single card: drop zone + email fields + upload button | Email and link mode mixed together, no clear separation |
| Navigation | Top-right tabs (Terms, About, Change language) | No user account, no history, no login |
| Mode selection | None | Users can't choose between "Send by link" vs "Send by email" |
| OTP login | Not implemented | Required for email send feature |
| History/Dashboard | Not implemented | Logged-in users have nowhere to see past transfers |
| Guest mode | Partially exists (link share) | Not clearly communicated to the user |
| Mobile | Hamburger menu with same nav | Needs responsive overhaul |
| Typography | Raleway + Roboto | Acceptable, but needs stronger hierarchy |
| Color | Blue (#3e8ed0) accent, dark background | Needs modern gradient treatment |

### Missing Features (Code Level)
1. **Mode selector UI** — no toggle between "Send by Link" (guest) vs "Send by Email" (OTP login)
2. **OTP flow screens** — email input → OTP input → verified state
3. **History page** — list of past transfers with status, expiry, download count
4. **Login/logout state in nav** — nav doesn't reflect auth state properly
5. **Hero section** — no headline communicating the value ("Share large video files instantly")
6. **Features/How it works section** — no marketing content on the home page
7. **Transfer limit/size indicator** — users don't know max file size
8. **Link copy UI** — after upload, no clear "copy link" interaction

---

## 2. Design Reference (WeTransfer / Smash / Filemail)

### WeTransfer (wetransfer.com)
- Full-viewport background (artwork/gradient changes daily)
- Centered upload card, very minimal
- Clear toggle: "Email" vs "Link" at top of card
- Progress fills the entire background during upload
- Post-upload: Large link copy area, share options

### Smash (fromsmash.com)
- Dark mode, gradient purple/blue
- Full-screen drag zone
- Animated upload progress
- Feature sections below fold: "No size limit", "Preview before download"

### Filemail (filemail.com)
- Video-focused, calls out "Send large video files"
- Prominent file size (50GB free)
- How it works: 3 steps with icons
- Dashboard for history after login

### Key Patterns to Adopt
1. **Full-viewport upload zone** — not a small card
2. **Clear mode toggle** — Link / Email as first decision
3. **Animated progress** — background changes during upload
4. **Post-upload link screen** — big, obvious copy button
5. **Minimal nav** — logo + login/account only
6. **Landing sections below fold** — features, how it works, stats

---

## 3. New Design Architecture

### Page Structure (Single Page)

```
┌─────────────────────────────────────────────────────┐
│  NAVBAR: Logo | [History] [Login/Account]            │
├─────────────────────────────────────────────────────┤
│                                                      │
│  HERO SECTION                                        │
│  "Share large video files — instantly."              │
│  "Up to Xgb free. No account needed."               │
│                                                      │
│  ┌────────────────────────────────────┐              │
│  │  MODE TOGGLE: [ By Link ] [By Email]│             │
│  │                                    │              │
│  │  DROP ZONE (full width)            │              │
│  │  + / drag files here               │              │
│  │                                    │              │
│  │  [Email fields — only if By Email] │              │
│  │                                    │              │
│  │  [  Transfer  ]                    │              │
│  └────────────────────────────────────┘              │
│                                                      │
├─────────────────────────────────────────────────────┤
│  HOW IT WORKS (3 steps)                              │
│  1. Select files  2. Choose method  3. Share         │
├─────────────────────────────────────────────────────┤
│  FEATURES (3 cards)                                  │
│  • No account needed  • End-to-end  • Auto-expires   │
├─────────────────────────────────────────────────────┤
│  FOOTER: Terms | About | Language                    │
└─────────────────────────────────────────────────────┘
```

### Upload Flow States

```
State 1: IDLE         → Drop zone + mode toggle visible
State 2: FILES ADDED  → File list + email fields (if email mode)
State 3: OTP REQUIRED → Email OTP input screen (if email mode)
State 4: UPLOADING    → Progress bar, background animation
State 5: COMPLETE     → Big link + copy button + share options
```

---

## 4. Color & Typography System

### Color Palette
```
Primary:    #5C6FE8   (modern indigo-blue)
Secondary:  #E85C8A   (pink accent for CTAs)
Dark BG:    #0F0F1A   (near-black)
Card BG:    rgba(255,255,255,0.06)  (glassmorphism)
Text:       #FFFFFF   (primary) / #A0A0B8 (secondary)
Success:    #2DD4BF
Error:      #F87171
Border:     rgba(255,255,255,0.1)
```

### Typography
```
Headings:  "Inter" (700/800 weight) — modern, clean
Body:      "Inter" (400/500 weight)
Mono:      "JetBrains Mono" — for link display
```

### Design Style: Glassmorphism + Dark Mode
- Dark background with subtle gradient mesh
- Upload card: frosted glass (backdrop-filter: blur)
- Animated gradient background during upload
- Smooth transitions between states

---

## 5. Component Breakdown

### 5.1 Navbar
```
[Envento Logo]                    [History] [Login / Account ▾]
```
- Logo links to home
- "History" visible only to logged-in users
- "Login" → triggers OTP flow modal
- "Account" dropdown: My Transfers, Settings, Logout

### 5.2 Mode Toggle (NEW)
```
┌─────────────────┬─────────────────┐
│  🔗 Get a Link  │  📧 Send Email  │
└─────────────────┴─────────────────┘
```
- Default: "Get a Link" (guest mode — no login required)
- "Send Email" → requires OTP verification before upload

### 5.3 Upload Card (redesigned)
- Full-width drop zone with dashed animated border
- File list with size, type icon, remove button
- Total size indicator with limit bar
- Email fields (animated slide-in when "Send Email" selected)
- Big "Transfer" CTA button

### 5.4 OTP Flow (NEW — modal)
```
Step 1: Enter email → "Send code"
Step 2: 6-digit OTP input (auto-advance between digits)
Step 3: Verified ✓ → continue to upload
```

### 5.5 Upload Progress (redesigned)
- Full-screen overlay with animated gradient
- Circular or linear progress with percentage
- File-by-file status list
- Cancel button

### 5.6 Transfer Complete (NEW)
```
┌──────────────────────────────────────────┐
│  ✅ Transfer ready!                       │
│                                           │
│  https://envento.com/t/abc123            │
│  [  Copy Link  ]  [ Share via Email ]    │
│                                           │
│  Expires in: 7 days  •  0 downloads      │
│  [ Send another ]                         │
└──────────────────────────────────────────┘
```

### 5.7 History / Dashboard (NEW page)
```
[My Transfers]                    [Search] [Filter ▾]

┌─────────────────────────────────────────────────┐
│ 📁 Project_Final_v3.mp4 (2.3 GB)               │
│ Shared by link • 12 downloads • Expires in 3d   │
│ https://envento.com/t/xyz   [Copy] [Delete]      │
└─────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────┐
│ 📁 Wedding_Video_4K.mov (8.1 GB)                │
│ Sent to: client@example.com • 1 download • Expired│
│ [Resend] [Delete]                                │
└─────────────────────────────────────────────────┘
```

### 5.8 How It Works Section (NEW)
```
1. 📂 Select your files
   Drop video files up to Xgb

2. 🔗 Choose how to share
   Get a link or send directly to email

3. ✅ They download instantly
   Files auto-delete after expiry
```

### 5.9 Features Section (NEW)
```
[🎬 Built for video]    [👤 No account needed]    [🔒 Auto-expires]
Large files, fast        Anyone gets a link         Set expiry time
transfers                instantly                  for security
```

---

## 6. New PHP View Files Required

| File | Action | Description |
|---|---|---|
| `_elem/header.php` | **MODIFY** | New font (Inter), new CSS, new navbar HTML |
| `_elem/footer.php` | **MODIFY** | Add features + how it works sections |
| `upload.php` | **MODIFY** | Mode toggle, redesigned card, OTP modal |
| `download.php` | **MODIFY** | Cleaner download page, video preview |
| `login.php` | **MODIFY** | Redirect to OTP flow, remove old login form |
| `history.php` | **CREATE** | New page — transfer history dashboard |
| `assets/themes/modern/css/style.scss` | **MODIFY** | Full redesign |
| `assets/themes/modern/js/script.js` | **MODIFY** | Mode toggle, OTP flow, copy link |

---

## 7. Missing Code Functionality (Must Implement)

### 7.1 Mode Toggle Logic (JS)
```javascript
// When user selects "By Email":
// 1. Show email fields
// 2. On submit → check if OTP verified
// 3. If not → open OTP modal
// 4. After OTP → proceed with upload + email send
```

### 7.2 OTP Modal (JS + PHP endpoint)
- `POST /handler/request_otp` → generates OTP, stores in `droppy_otp`, sends email
- `POST /handler/verify_otp` → validates code, sets session flag
- Front-end: 6 separate digit inputs, auto-tab, paste support, countdown timer

### 7.3 History Controller/View (PHP)
- New route: `GET /history` → requires OTP session
- Loads user's uploads by email from `droppy_uploads` WHERE `email_from = session_email`
- Shows: upload_id, files count, size, expiry, download count, share type, link

### 7.4 Copy Link Interaction (JS)
```javascript
// After upload complete:
// Show full-screen success state
// Auto-copy link to clipboard
// Show "Copied!" toast notification
```

### 7.5 Transfer Complete Screen
- Replace current redirect with in-page success state
- Show link prominently
- Email share option (sends link to recipient without re-uploading)

---

## 8. Implementation Order

```
Phase A — Foundation (Design)
├── Update Inter font + CSS variables
├── Redesign navbar
├── Redesign upload card (mode toggle + glassmorphism)
└── Update footer with features + how it works

Phase B — New Flows
├── OTP modal (JS + PHP handler endpoints)
├── Mode toggle logic (Link vs Email)
├── Transfer complete screen (replace old flow)
└── Copy link functionality

Phase C — History Dashboard
├── History controller + view
├── Transfer card component
└── Filter/search

Phase D — Polish
├── Upload progress animation
├── Mobile responsiveness
├── Micro-animations
└── Dark mode refinements
```

---

## 9. Estimated Effort

| Phase | Effort |
|---|---|
| Phase A — Foundation | 2–3 days |
| Phase B — New Flows | 3–4 days |
| Phase C — History | 2 days |
| Phase D — Polish | 1–2 days |
| **Total** | **8–11 days** |
