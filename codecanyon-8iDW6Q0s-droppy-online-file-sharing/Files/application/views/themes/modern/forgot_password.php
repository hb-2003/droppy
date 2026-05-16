<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo htmlspecialchars($settings['site_name']); ?> | <?php echo lang('forgot_password_title') ?: 'Reset password'; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="<?php echo $settings['site_url'] . $settings['favicon_path']; ?>" rel="shortcut icon" type="image/png">
    <base href="<?php echo $settings['site_url'] ?>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,400;12..96,500;12..96,600;12..96,700&display=swap" rel="stylesheet">
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <style>
        :root {
            --a-bg: #0A0C14; --a-card: rgba(255,255,255,0.05); --a-border: rgba(255,255,255,0.12);
            --a-text: #F2F1EB; --a-muted: #8A8E9E; --a-dim: #5A5E70; --a-accent: #D4FF3A;
            --a-aink: #0A0C14; --a-aglow: rgba(212,255,58,0.28); --a-rose: #F47B7B;
            --a-success: #5BE9B9; --a-r8: 8px; --a-r22: 22px; --a-rpill: 999px;
            --a-font: "Bricolage Grotesque", system-ui, sans-serif;
        }
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html, body { min-height: 100vh; }
        body {
            background: radial-gradient(circle at 15% 12%, rgba(212,255,58,0.13), transparent 38%),
                radial-gradient(circle at 88% 18%, rgba(244,123,123,0.10), transparent 42%), #0A0C14;
            font-family: var(--a-font); color: var(--a-text);
            display: flex; align-items: center; justify-content: center; padding: 24px 20px;
        }
        .auth-wrap { width: 100%; max-width: 440px; }
        .auth-wordmark { display: flex; align-items: center; gap: 10px; text-decoration: none; margin-bottom: 36px; justify-content: center; }
        .auth-wordmark__dot { width: 10px; height: 10px; background: var(--a-accent); border-radius: 50%; box-shadow: 0 0 10px var(--a-aglow); }
        .auth-wordmark__text { font-size: 11px; font-weight: 600; letter-spacing: 0.07em; text-transform: uppercase; color: rgba(242,241,235,0.7); line-height: 1.35; }
        .auth-wordmark__text span { display: block; }
        .auth-wordmark__text span.acc { color: var(--a-accent); font-size: 13px; }
        .auth-card { background: var(--a-card); border: 1px solid var(--a-border); border-radius: var(--a-r22); padding: 40px 36px 36px; backdrop-filter: blur(20px); }
        .auth-icon { width: 56px; height: 56px; background: rgba(212,255,58,0.10); border: 1px solid rgba(212,255,58,0.20); border-radius: 14px; display: flex; align-items: center; justify-content: center; margin: 0 auto 22px; }
        .auth-icon i { font-size: 22px; color: var(--a-accent); }
        .auth-title { font-size: 28px; font-weight: 700; text-align: center; margin-bottom: 6px; }
        .auth-subtitle { font-size: 13px; color: var(--a-muted); text-align: center; margin-bottom: 28px; line-height: 1.5; }
        .auth-step--hidden { display: none; }
        .auth-field { margin-bottom: 18px; }
        .auth-label { display: block; font-size: 11px; font-weight: 600; letter-spacing: 0.08em; text-transform: uppercase; color: var(--a-muted); margin-bottom: 8px; }
        .auth-input { width: 100%; padding: 13px 16px; background: rgba(255,255,255,0.04); border: 1px solid rgba(255,255,255,0.12); border-radius: var(--a-r8); color: var(--a-text); font-family: var(--a-font); font-size: 15px; outline: none; }
        .auth-input:focus { border-color: var(--a-accent); box-shadow: 0 0 0 3px rgba(212,255,58,0.10); }
        .auth-input--code { text-align: center; letter-spacing: 0.5em; font-size: 22px; font-weight: 700; }
        .auth-alert { background: rgba(244,123,123,0.10); border: 1px solid rgba(244,123,123,0.25); color: var(--a-rose); border-radius: var(--a-r8); padding: 10px 14px; font-size: 13px; margin-bottom: 16px; display: none; }
        .auth-alert.is-shown { display: block; }
        .auth-btn { width: 100%; padding: 14px 20px; background: var(--a-accent); color: var(--a-aink); border: none; border-radius: var(--a-rpill); font-family: var(--a-font); font-size: 15px; font-weight: 700; cursor: pointer; margin-top: 4px; }
        .auth-btn:disabled { opacity: 0.6; cursor: not-allowed; }
        .auth-btn--ghost { background: transparent; color: var(--a-muted); border: 1px solid var(--a-border); margin-top: 12px; }
        .auth-footer { text-align: center; margin-top: 24px; font-size: 13px; color: var(--a-muted); }
        .auth-footer a { color: var(--a-accent); text-decoration: none; font-weight: 600; }
    </style>
    <?php if(!empty($settings['theme_color'])): ?>
    <style>:root { --a-accent: <?php echo $settings['theme_color']; ?>; --a-aink: <?php echo !empty($settings['theme_color_text']) ? $settings['theme_color_text'] : '#0A0C14'; ?>; }</style>
    <?php endif; ?>
</head>
<body>
<div class="auth-wrap">
    <a class="auth-wordmark" href="<?php echo $settings['site_url'] ?>">
        <span class="auth-wordmark__dot"></span>
        <div class="auth-wordmark__text">
            <span>Share</span><span class="acc">Large Video</span><span>Files</span>
        </div>
    </a>
    <div class="auth-card">
        <div class="auth-icon"><i class="lni lni-key"></i></div>

        <div id="fp-step-1" class="auth-step">
            <h1 class="auth-title"><?php echo lang('forgot_password_title') ?: 'Reset password'; ?></h1>
            <p class="auth-subtitle"><?php echo lang('forgot_password_body') ?: 'Enter your account email and we will send a reset code.'; ?></p>
            <div class="auth-alert" id="fp-alert-1"></div>
            <div class="auth-field">
                <label class="auth-label" for="fp-email"><?php echo lang('login_email') ?: 'Email'; ?></label>
                <input class="auth-input" type="email" id="fp-email" placeholder="you@example.com" autocomplete="email">
            </div>
            <button type="button" class="auth-btn" id="fp-send-btn"><?php echo lang('forgot_password_submit') ?: 'Send reset code'; ?></button>
        </div>

        <div id="fp-step-2" class="auth-step auth-step--hidden">
            <h1 class="auth-title"><?php echo lang('reset_password_title') ?: 'Set new password'; ?></h1>
            <p class="auth-subtitle"><?php echo lang('reset_password_body') ?: 'Enter the code from your email and choose a new password.'; ?></p>
            <div class="auth-alert" id="fp-alert-2"></div>
            <div class="auth-field">
                <label class="auth-label" for="fp-code"><?php echo lang('otp_digit_label') ?: 'Reset code'; ?></label>
                <input class="auth-input auth-input--code" type="text" id="fp-code" maxlength="6" inputmode="numeric" pattern="[0-9]*" autocomplete="one-time-code">
            </div>
            <div class="auth-field">
                <label class="auth-label" for="fp-password"><?php echo lang('login_password') ?: 'Password'; ?></label>
                <input class="auth-input" type="password" id="fp-password" placeholder="Min. 8 characters" autocomplete="new-password">
            </div>
            <div class="auth-field">
                <label class="auth-label" for="fp-confirm"><?php echo lang('confirm_password') ?: 'Confirm password'; ?></label>
                <input class="auth-input" type="password" id="fp-confirm" placeholder="Repeat password" autocomplete="new-password">
            </div>
            <button type="button" class="auth-btn" id="fp-reset-btn"><?php echo lang('reset_password_submit') ?: 'Reset password'; ?></button>
            <button type="button" class="auth-btn auth-btn--ghost" id="fp-back-btn"><?php echo lang('back') ?: 'Back'; ?></button>
        </div>
    </div>
    <div class="auth-footer"><a href="<?php echo base_url('login'); ?>"><?php echo lang('back_to_login') ?: 'Back to sign in'; ?></a></div>
</div>
<script>
(function ($) {
    var email = '';
    function showAlert($el, msg) { $el.text(msg).addClass('is-shown'); }
    function hideAlerts() { $('#fp-alert-1, #fp-alert-2').removeClass('is-shown').text(''); }

    $('#fp-send-btn').on('click', function () {
        hideAlerts();
        email = $.trim($('#fp-email').val());
        if (!email) { showAlert($('#fp-alert-1'), '<?php echo addslashes(lang('fill_fields') ?: 'Please enter your email.'); ?>'); return; }
        var $btn = $(this).prop('disabled', true);
        $.post('handler/request_password_reset', { email: email }, function (data) {
            if (data.result === 'sent') {
                $('#fp-step-1').addClass('auth-step--hidden');
                $('#fp-step-2').removeClass('auth-step--hidden');
                $('#fp-code').focus();
            } else if (data.result === 'invalid_email') {
                showAlert($('#fp-alert-1'), '<?php echo addslashes(lang('invalid_email') ?: 'No account found for this email.'); ?>');
            } else {
                showAlert($('#fp-alert-1'), '<?php echo addslashes(lang('error') ?: 'Something went wrong. Try again.'); ?>');
            }
        }, 'json').fail(function () {
            showAlert($('#fp-alert-1'), '<?php echo addslashes(lang('internet_down') ?: 'Unable to reach the server.'); ?>');
        }).always(function () { $btn.prop('disabled', false); });
    });

    $('#fp-back-btn').on('click', function () {
        hideAlerts();
        $('#fp-step-2').addClass('auth-step--hidden');
        $('#fp-step-1').removeClass('auth-step--hidden');
    });

    $('#fp-reset-btn').on('click', function () {
        hideAlerts();
        var code = $.trim($('#fp-code').val());
        var pass = $('#fp-password').val();
        var confirm = $('#fp-confirm').val();
        if (!code || code.length < 6) { showAlert($('#fp-alert-2'), '<?php echo addslashes(lang('enter_verify_code') ?: 'Enter the 6-digit code.'); ?>'); return; }
        if (pass.length < 8) { showAlert($('#fp-alert-2'), '<?php echo addslashes(lang('password_min') ?: 'Password must be at least 8 characters.'); ?>'); return; }
        if (pass !== confirm) { showAlert($('#fp-alert-2'), '<?php echo addslashes(lang('password_mismatch') ?: 'Passwords do not match.'); ?>'); return; }
        var $btn = $(this).prop('disabled', true);
        $.post('handler/reset_password', { email: email, code: code, password: pass }, function (data) {
            if (data.result === 'ok') {
                window.location.href = '<?php echo base_url('login'); ?>?registered=1';
                return;
            }
            var msg = '<?php echo addslashes(lang('incorrect_verify') ?: 'Invalid or expired code.'); ?>';
            if (data.result === 'expired') msg = '<?php echo addslashes(lang('code_expired') ?: 'Code expired. Request a new one.'); ?>';
            if (data.result === 'weak_password') msg = '<?php echo addslashes(lang('password_min') ?: 'Password must be at least 8 characters.'); ?>';
            showAlert($('#fp-alert-2'), msg);
        }, 'json').fail(function () {
            showAlert($('#fp-alert-2'), '<?php echo addslashes(lang('internet_down') ?: 'Unable to reach the server.'); ?>');
        }).always(function () { $btn.prop('disabled', false); });
    });
})(jQuery);
</script>
</body>
</html>
