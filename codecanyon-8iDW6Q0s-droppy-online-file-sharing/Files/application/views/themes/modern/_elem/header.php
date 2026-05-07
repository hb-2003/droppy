<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

    <title><?php echo $settings['site_title']; ?></title>

    <base href="<?php echo $settings['site_url'] ?>">

    <!-- Favicon -->
    <link href="<?php echo $settings['site_url'] . $settings['favicon_path']; ?>" rel="shortcut icon" type="image/png">

    <!-- Search engine tags -->
    <meta name="description" content="<?php echo $settings['site_desc']; ?>">
    <meta name="author" content="<?php echo $settings['site_name']; ?>">
    <meta name="keywords" content="<?php echo $settings['site_keywords']; ?>"/>

    <meta property="og:title" content="<?= $settings['site_title'] ?>" />
    <meta property="og:description" content="<?= $settings['site_desc'] ?>" />
    <meta property="og:url" content="<?= $settings['site_url'] ?>" />
    <meta property="og:image" itemprop="image" content="<?php echo $settings['social_meta_tag_image']; ?>" />

    <!-- Google Fonts: Bricolage Grotesque (display + UI) · Instrument Serif (italic accent) · JetBrains Mono -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,400;12..96,500;12..96,600;12..96,700;12..96,800&family=Instrument+Serif:ital@0;1&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link href="https://cdn.lineicons.com/3.0/lineicons.css" rel="stylesheet">

    <!-- Vegas background -->
    <link href="assets/css/vegas.min.css?v=<?php echo $settings['version']; ?>" rel="stylesheet">

    <!-- Preload lottie icons (mecwbjnp = legacy empty-state plus, replaced by .slvf-drop SVG) -->
    <link rel="preload" href="assets/themes/<?php echo $settings['theme'] ?>/lupuorrc.json" as="fetch">
    <link rel="preload" href="assets/themes/<?php echo $settings['theme'] ?>/yyecauzv.json" as="fetch">

    <!-- Video.js -->
    <link href="assets/css/video-js.css" rel="stylesheet">

    <!-- Legacy theme stylesheet (Bulma + base theme) -->
    <link rel="stylesheet" href="assets/themes/<?php echo $settings['theme'] ?>/css/style.css?v=<?php echo rand() . $settings['version']; ?>">

    <!-- Share Large Video Files — Cinematic Studio design layer -->
    <link rel="stylesheet" href="assets/themes/<?php echo $settings['theme'] ?>/css/slvf.css?v=<?php echo rand() . $settings['version']; ?>">

    <?php if(!empty($settings['theme_color'])): ?>
    <style>
        :root {
            --slvf-primary: <?php echo $settings['theme_color'] ?>;
            --slvf-primary-text: <?php echo (!empty($settings['theme_color_text']) ? $settings['theme_color_text'] : '#fff'); ?>;
        }
    </style>
    <?php endif; ?>

    <?php
    if(isset($custom_css) && count($custom_css) > 0) {
        foreach ($custom_css as $css) {
            echo '<link href="' . $css . '" rel="stylesheet">';
        }
    }
    ?>

    <?php if(!empty($settings['custom_css_code'])): ?>
    <style><?= $settings['custom_css_code'] ?></style>
    <?php endif; ?>

    <!-- jQuery -->
    <script src="assets/js/jquery-3.6.0.min.js"></script>
</head>
<body>

<!-- Background mesh -->
<div class="background" id="background"></div>
<div class="slvf-bg-mesh"></div>

<!-- Global drop overlay -->
<div class="drop-overlay" id="drop-overlay">
    <p><?php echo lang('drop_files_here'); ?></p>
</div>

<!-- =============================================
     NAVBAR
     ============================================= -->
<nav class="slvf-nav" id="slvf-nav">
    <div class="slvf-nav__inner">

        <!-- Wordmark -->
        <a class="slvf-wordmark" href="<?php echo $settings['site_url'] ?>" aria-label="Share Large Video Files">
            <span class="slvf-wordmark__dot" aria-hidden="true"></span>
            <span class="slvf-wordmark__text">
                <span class="slvf-wordmark__line">Share</span>
                <span class="slvf-wordmark__line slvf-wordmark__line--accent">Large&nbsp;Video</span>
                <span class="slvf-wordmark__line">Files</span>
            </span>
        </a>

        <!-- Desktop right actions -->
        <div class="slvf-nav__actions">
            <?php if(is_array($extra_pages) && !empty($extra_pages)): ?>
                <?php foreach($extra_pages as $tab): ?>
                    <?php if($tab['type'] === 'about_page'): ?>
                        <a class="slvf-nav__link" href="<?php echo base_url('about'); ?>"><span><?php echo htmlspecialchars($tab['title']); ?></span></a>
                    <?php elseif($tab['type'] === 'terms_page'): ?>
                        <a class="slvf-nav__link" href="<?php echo base_url('terms'); ?>"><span><?php echo htmlspecialchars($tab['title']); ?></span></a>
                    <?php elseif($tab['type'] === 'link'): ?>
                        <?php $href = strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content']; ?>
                        <a class="slvf-nav__link" href="<?php echo $href; ?>" target="_blank"><span><?php echo htmlspecialchars($tab['title']); ?></span></a>
                    <?php endif; ?>
                <?php endforeach; ?>
            <?php endif; ?>
            <?php if(isset($_SESSION['otp_verified_email']) || (isset($session) && $session->has_userdata('user') && $session->userdata('user') == true)): ?>
                <!-- Logged-in: History + Account dropdown -->
                <a class="slvf-nav__link" href="<?php echo base_url('history') ?>">
                    <i class="lni lni-timer"></i>
                    <span><?php echo lang('history') ?: 'History'; ?></span>
                </a>
                <div class="slvf-nav__account" id="slvf-account-toggle">
                    <button class="slvf-btn slvf-btn--ghost slvf-btn--sm" id="slvf-account-btn">
                        <i class="lni lni-user"></i>
                        <span><?php echo isset($_SESSION['otp_verified_email']) ? explode('@', $_SESSION['otp_verified_email'])[0] : lang('account'); ?></span>
                        <i class="lni lni-chevron-down slvf-nav__caret"></i>
                    </button>
                    <div class="slvf-dropdown" id="slvf-account-menu">
                        <a class="slvf-dropdown__item" href="<?php echo base_url('history') ?>">
                            <i class="lni lni-files"></i> <?php echo lang('my_transfers') ?: 'My Transfers'; ?>
                        </a>
                        <div class="slvf-dropdown__divider"></div>
                        <?php if($session->has_userdata('user') && $session->userdata('user') == true): ?>
                            <a class="slvf-dropdown__item slvf-dropdown__item--danger" href="<?php echo base_url('login/logout') ?>">
                                <i class="lni lni-exit"></i> <?php echo lang('logout'); ?>
                            </a>
                        <?php elseif(isset($_SESSION['droppy_premium'])): ?>
                            <a class="slvf-dropdown__item slvf-dropdown__item--danger" href="<?php echo base_url('page/premium?action=logout') ?>">
                                <i class="lni lni-exit"></i> <?php echo lang('logout'); ?>
                            </a>
                        <?php else: ?>
                            <a class="slvf-dropdown__item slvf-dropdown__item--danger" href="#" onclick="OtpModal.logout(); return false;">
                                <i class="lni lni-exit"></i> <?php echo lang('logout') ?: 'Sign out'; ?>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>
            <?php else: ?>
                <!-- Guest: Login button -->
                <button class="slvf-btn slvf-btn--ghost slvf-btn--sm" id="slvf-login-btn" onclick="OtpModal.open()">
                    <i class="lni lni-user"></i>
                    <span><?php echo lang('login') ?: 'Sign in'; ?></span>
                </button>
            <?php endif; ?>

            <!-- Mobile hamburger -->
            <button class="slvf-nav__hamburger" id="slvf-hamburger" aria-label="Menu">
                <span></span><span></span><span></span>
            </button>
        </div>
    </div>

    <!-- Mobile menu -->
    <div class="slvf-nav__mobile-menu" id="slvf-mobile-menu">

        <?php if(isset($_SESSION['otp_verified_email'])): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('history') ?>">
            <i class="lni lni-timer"></i> History
        </a>
        <a class="slvf-nav__mobile-item" href="#" onclick="OtpModal.logout(); return false;">
            <i class="lni lni-exit"></i> Sign out
        </a>
        <?php elseif($session->has_userdata('user') && $session->userdata('user') == true): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('login/logout') ?>">
            <i class="lni lni-exit"></i> <?php echo lang('logout'); ?>
        </a>
        <?php elseif(isset($_SESSION['droppy_premium'])): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('page/premium?action=logout') ?>">
            <i class="lni lni-exit"></i> <?php echo lang('logout'); ?>
        </a>
        <?php else: ?>
        <a class="slvf-nav__mobile-item" href="#" onclick="OtpModal.open(); return false;">
            <i class="lni lni-user"></i> Sign in
        </a>
        <?php endif; ?>

        <?php if(is_array($extra_pages) && !empty($extra_pages)): ?>
            <div class="slvf-nav__mobile-divider"></div>
            <?php foreach($extra_pages as $tab): ?>
                <?php if($tab['type'] === 'about_page'): ?>
                <a class="slvf-nav__mobile-item" href="<?php echo base_url('about'); ?>">
                    <i class="lni lni-information"></i> <?php echo htmlspecialchars($tab['title']); ?>
                </a>
                <?php elseif($tab['type'] === 'terms_page'): ?>
                <a class="slvf-nav__mobile-item" href="<?php echo base_url('terms'); ?>">
                    <i class="lni lni-shield"></i> <?php echo htmlspecialchars($tab['title']); ?>
                </a>
                <?php elseif($tab['type'] === 'link'): ?>
                <?php $href = strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content']; ?>
                <a class="slvf-nav__mobile-item" href="<?php echo $href; ?>" target="_blank">
                    <i class="lni lni-link"></i> <?php echo htmlspecialchars($tab['title']); ?>
                </a>
                <?php endif; ?>
            <?php endforeach; ?>
        <?php endif; ?>

        <?php if($settings['contact_enabled'] == 'true'): ?>
        <div class="slvf-nav__mobile-divider"></div>
        <a class="slvf-nav__mobile-item" data-target="tab-contact" href="#">
            <i class="lni lni-envelope"></i> <?php echo lang('contact'); ?>
        </a>
        <?php endif; ?>

    </div>
</nav>
<!-- END NAVBAR -->


<!-- =============================================
     OTP MODAL
     ============================================= -->
<div class="slvf-otp-overlay" id="slvf-otp-overlay">
    <div class="slvf-otp-modal" id="slvf-otp-modal" role="dialog" aria-modal="true" aria-labelledby="slvf-otp-title">

        <button class="slvf-otp-modal__close" onclick="OtpModal.close()" aria-label="Close">
            <i class="lni lni-close"></i>
        </button>

        <!-- Step 1: Email input -->
        <div class="slvf-otp-step" id="slvf-otp-step-1">
            <div class="slvf-otp-modal__icon">
                <i class="lni lni-lock-alt"></i>
            </div>
            <h2 class="slvf-otp-modal__title" id="slvf-otp-title">Sign in to <?php echo htmlspecialchars($settings['site_name']); ?></h2>
            <p class="slvf-otp-modal__sub">Enter your email and we'll send you a one-time code — no password needed.</p>

            <div class="slvf-otp-modal__field">
                <label class="slvf-label" for="slvf-otp-email">Email address</label>
                <input class="slvf-input" type="email" id="slvf-otp-email" placeholder="you@example.com" autocomplete="email">
                <span class="slvf-input-error" id="slvf-otp-email-error"></span>
            </div>

            <button class="slvf-btn slvf-btn--primary slvf-btn--full" id="slvf-otp-send-btn" onclick="OtpModal.sendCode()">
                <span>Send code</span>
                <i class="lni lni-arrow-right"></i>
            </button>
        </div>

        <!-- Step 2: OTP input -->
        <div class="slvf-otp-step slvf-otp-step--hidden" id="slvf-otp-step-2">
            <div class="slvf-otp-modal__icon slvf-otp-modal__icon--sent">
                <i class="lni lni-envelope"></i>
            </div>
            <h2 class="slvf-otp-modal__title">Check your email</h2>
            <p class="slvf-otp-modal__sub">We sent a 6-digit code to <strong id="slvf-otp-sent-to"></strong></p>

            <div class="slvf-otp-digits" id="slvf-otp-digits">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]" autocomplete="one-time-code">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]">
                <input class="slvf-otp-digit" type="text" maxlength="1" inputmode="numeric" pattern="[0-9]">
            </div>
            <span class="slvf-input-error" id="slvf-otp-code-error"></span>

            <div class="slvf-otp-modal__timer">
                Code expires in <span id="slvf-otp-countdown">5:00</span>
            </div>

            <button class="slvf-btn slvf-btn--primary slvf-btn--full" id="slvf-otp-verify-btn" onclick="OtpModal.verify()">
                <span>Verify</span>
                <i class="lni lni-checkmark"></i>
            </button>

            <button class="slvf-btn slvf-btn--ghost slvf-btn--full slvf-otp-modal__resend" onclick="OtpModal.resend()">
                Resend code
            </button>
        </div>

        <!-- Step 3: Verified -->
        <div class="slvf-otp-step slvf-otp-step--hidden" id="slvf-otp-step-3">
            <div class="slvf-otp-modal__icon slvf-otp-modal__icon--success">
                <i class="lni lni-checkmark-circle"></i>
            </div>
            <h2 class="slvf-otp-modal__title">You're signed in!</h2>
            <p class="slvf-otp-modal__sub">Welcome back. Your transfers will now be saved to your history.</p>
            <button class="slvf-btn slvf-btn--primary slvf-btn--full" onclick="OtpModal.close()">Continue</button>
        </div>

    </div>
</div>
<!-- END OTP MODAL -->


<!-- =============================================
     VIDEO MODAL
     ============================================= -->
<div class="slvf-video-modal" id="videoModal">
    <div class="slvf-video-modal__backdrop" onclick="closeVideoModal()"></div>
    <div class="slvf-video-modal__content">
        <button class="slvf-video-modal__close" onclick="closeVideoModal()" aria-label="Close">
            <i class="lni lni-close"></i>
        </button>
        <video id="videoPlayer" class="video-js vjs-default-skin vjs-fill" autoplay controls></video>
    </div>
</div>
<!-- END VIDEO MODAL -->
