<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $settings['site_name']; ?> | Create account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="<?php echo $settings['site_url'] . $settings['favicon_path']; ?>" rel="shortcut icon" type="image/png">
    <base href="<?php echo $settings['site_url'] ?>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,400;12..96,500;12..96,600;12..96,700&display=swap" rel="stylesheet">
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
    <style>
        :root {
            --a-bg:      #0A0C14;
            --a-card:    rgba(255,255,255,0.05);
            --a-border:  rgba(255,255,255,0.12);
            --a-text:    #F2F1EB;
            --a-muted:   #8A8E9E;
            --a-dim:     #5A5E70;
            --a-accent:  #D4FF3A;
            --a-aink:    #0A0C14;
            --a-aglow:   rgba(212,255,58,0.28);
            --a-asoft:   rgba(212,255,58,0.10);
            --a-aborder: rgba(212,255,58,0.20);
            --a-rose:    #F47B7B;
            --a-r8:      8px;
            --a-r14:     14px;
            --a-r22:     22px;
            --a-rpill:   999px;
            --a-font:    "Bricolage Grotesque", system-ui, sans-serif;
        }
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html, body { min-height: 100vh; }

        body {
            background:
                radial-gradient(circle at 15% 12%, rgba(212,255,58,0.13), transparent 38%),
                radial-gradient(circle at 88% 18%, rgba(244,123,123,0.10), transparent 42%),
                radial-gradient(circle at 50% 85%, rgba(91,233,185,0.08), transparent 50%),
                radial-gradient(circle at 80% 95%, rgba(244,184,96,0.07), transparent 45%),
                #0A0C14;
            font-family: var(--a-font);
            color: var(--a-text);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px 20px;
            -webkit-font-smoothing: antialiased;
            position: relative;
            overflow-x: hidden;
        }

        body::after {
            content: "";
            position: fixed; inset: -10%;
            z-index: 0;
            pointer-events: none;
            background:
                radial-gradient(ellipse 65% 45% at 28% 18%, rgba(212,255,58,0.12), transparent 60%),
                radial-gradient(ellipse 55% 55% at 72% 82%, rgba(91,233,185,0.08), transparent 60%);
            filter: blur(50px) saturate(1.3);
            animation: mesh-drift 38s ease-in-out infinite alternate;
        }
        @keyframes mesh-drift {
            0%   { transform: translate(0,0)    scale(1); }
            50%  { transform: translate(-3%,4%) scale(1.08); }
            100% { transform: translate(4%,-3%) scale(1.04); }
        }

        body::before {
            content: "";
            position: fixed; inset: 0;
            z-index: 9999;
            pointer-events: none;
            opacity: 0.05;
            mix-blend-mode: overlay;
            background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='160' height='160'><filter id='n'><feTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/></filter><rect width='100%25' height='100%25' filter='url(%23n)' opacity='0.85'/></svg>");
        }

        .auth-wrap { width: 100%; max-width: 440px; position: relative; z-index: 1; }

        .auth-wordmark {
            display: flex; align-items: center; gap: 10px;
            text-decoration: none;
            margin-bottom: 36px;
            justify-content: center;
        }
        .auth-wordmark__dot {
            width: 10px; height: 10px;
            background: var(--a-accent);
            border-radius: 50%;
            box-shadow: 0 0 10px var(--a-aglow);
            flex-shrink: 0;
        }
        .auth-wordmark__text {
            font-size: 11px; font-weight: 600;
            letter-spacing: 0.07em; text-transform: uppercase;
            color: rgba(242,241,235,0.7);
            line-height: 1.35;
        }
        .auth-wordmark__text span { display: block; }
        .auth-wordmark__text span.acc { color: var(--a-accent); font-size: 13px; }

        .auth-card {
            background: var(--a-card);
            border: 1px solid var(--a-border);
            border-radius: var(--a-r22);
            padding: 40px 36px 36px;
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .auth-icon {
            width: 56px; height: 56px;
            background: var(--a-asoft);
            border: 1px solid var(--a-aborder);
            border-radius: var(--a-r14);
            display: flex; align-items: center; justify-content: center;
            margin: 0 auto 22px;
        }
        .auth-icon i { font-size: 22px; color: var(--a-accent); }

        .auth-title {
            font-size: 28px; font-weight: 700;
            color: var(--a-text);
            text-align: center;
            letter-spacing: -0.02em;
            line-height: 1.1;
            margin-bottom: 6px;
        }
        .auth-subtitle {
            font-size: 13px; color: var(--a-muted);
            text-align: center; margin-bottom: 32px;
        }

        .auth-alert {
            background: rgba(244,123,123,0.10);
            border: 1px solid rgba(244,123,123,0.25);
            color: var(--a-rose);
            border-radius: var(--a-r8);
            padding: 10px 14px; font-size: 13px;
            margin-bottom: 20px;
            display: flex; align-items: center; gap: 8px;
        }

        .auth-field { margin-bottom: 18px; }
        .auth-label {
            display: block;
            font-size: 11px; font-weight: 600;
            letter-spacing: 0.08em; text-transform: uppercase;
            color: var(--a-muted);
            margin-bottom: 8px;
        }
        .auth-input {
            width: 100%;
            padding: 13px 16px;
            background: rgba(255,255,255,0.04);
            border: 1px solid rgba(255,255,255,0.12);
            border-radius: var(--a-r8);
            color: var(--a-text);
            font-family: var(--a-font);
            font-size: 15px;
            outline: none;
            transition: border-color .2s, box-shadow .2s;
            -webkit-appearance: none;
        }
        .auth-input::placeholder { color: var(--a-dim); }
        .auth-input:focus {
            border-color: var(--a-accent);
            background: rgba(212,255,58,0.04);
            box-shadow: 0 0 0 3px rgba(212,255,58,0.10);
        }
        .auth-hint {
            font-size: 11px; color: var(--a-dim); margin-top: 5px;
        }

        .auth-btn {
            width: 100%; padding: 14px 20px;
            background: var(--a-accent);
            color: var(--a-aink);
            border: none;
            border-radius: var(--a-rpill);
            font-family: var(--a-font);
            font-size: 15px; font-weight: 700;
            letter-spacing: -0.01em;
            cursor: pointer; margin-top: 4px;
            display: flex; align-items: center; justify-content: center; gap: 8px;
            transition: background .2s, box-shadow .2s, transform .15s;
        }
        .auth-btn:hover {
            background: #e4ff6e;
            box-shadow: 0 12px 40px var(--a-aglow);
            transform: translateY(-1px);
        }
        .auth-btn:active { transform: translateY(0); }

        .auth-footer {
            text-align: center; margin-top: 24px;
            font-size: 13px; color: var(--a-muted);
        }
        .auth-footer a { color: var(--a-accent); text-decoration: none; font-weight: 600; }
        .auth-footer a:hover { color: #e4ff6e; }

        @media (max-width: 480px) {
            .auth-card { padding: 28px 20px 24px; border-radius: var(--a-r22); }
            .auth-title { font-size: 24px; }
        }
    </style>
    <?php if(!empty($settings['theme_color'])): ?>
    <style>
        :root {
            --a-accent: <?php echo $settings['theme_color'] ?>;
            --a-aink:   <?php echo (!empty($settings['theme_color_text']) ? $settings['theme_color_text'] : '#0A0C14'); ?>;
        }
    </style>
    <?php endif; ?>
</head>
<body>
    <div class="auth-wrap">

        <a class="auth-wordmark" href="<?php echo $settings['site_url'] ?>">
            <span class="auth-wordmark__dot"></span>
            <div class="auth-wordmark__text">
                <span>Share</span>
                <span class="acc">Large Video</span>
                <span>Files</span>
            </div>
        </a>

        <div class="auth-card">
            <div class="auth-icon"><i class="lni lni-user"></i></div>
            <div class="auth-title">Create account</div>
            <div class="auth-subtitle"><?php echo htmlspecialchars($settings['site_name']); ?></div>

            <?php if(!empty($error)): ?>
                <div class="auth-alert"><i class="lni lni-warning"></i> <?php echo htmlspecialchars($error); ?></div>
            <?php endif; ?>

            <form method="post" autocomplete="on">
                <div class="auth-field">
                    <label class="auth-label">Email address</label>
                    <input class="auth-input" type="email" name="email"
                        placeholder="you@example.com" autocomplete="email" required
                        value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>">
                </div>
                <div class="auth-field">
                    <label class="auth-label">Password</label>
                    <input class="auth-input" type="password" name="password"
                        placeholder="Min. 8 characters" autocomplete="new-password" required minlength="8">
                    <div class="auth-hint">Must be at least 8 characters</div>
                </div>
                <div class="auth-field">
                    <label class="auth-label">Confirm password</label>
                    <input class="auth-input" type="password" name="confirm_password"
                        placeholder="Repeat your password" autocomplete="new-password" required>
                </div>
                <?php if(!empty($settings['recaptcha_key'])): ?>
                    <div class="g-recaptcha" data-sitekey="<?php echo $settings['recaptcha_key']; ?>" style="margin-bottom:16px;"></div>
                <?php endif; ?>
                <button class="auth-btn" type="submit">Create account <i class="lni lni-arrow-right"></i></button>
            </form>

            <div class="auth-footer">
                Already have an account? <a href="<?php echo base_url('login'); ?>">Sign in</a>
            </div>
        </div>
    </div>

    <?php if(!empty($settings['recaptcha_key'])): ?>
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <?php endif; ?>
</body>
</html>
