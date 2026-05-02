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

    <!-- Preload lottie icons -->
    <link rel="preload" href="assets/themes/<?php echo $settings['theme'] ?>/mecwbjnp.json" as="fetch">
    <link rel="preload" href="assets/themes/<?php echo $settings['theme'] ?>/lupuorrc.json" as="fetch">
    <link rel="preload" href="assets/themes/<?php echo $settings['theme'] ?>/yyecauzv.json" as="fetch">

    <!-- Video.js -->
    <link href="assets/css/video-js.css" rel="stylesheet">

    <!-- Legacy theme stylesheet (Bulma + Droppy) -->
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

            <!-- Extra page tabs (Terms, About, etc.) -->
            <?php
            if(is_array($custom_tabs) && !empty($custom_tabs)) {
                foreach ($custom_tabs AS $key => $tab) {
                    if(in_array($key, array('uploads','logout'))) continue;
                    echo '<a class="slvf-nav__link slvf-nav__link--minor" '.($tab['type'] == 'url' ? 'href="'.base_url($tab['url']).'" '. ($tab['new_tab'] ? 'target="_blank"' : '') : '').'data-target="tab-' . $key . '">' . lang($tab['translation']) . '</a>';
                }
            }
            if(is_array($extra_pages) && !empty($extra_pages)) {
                foreach ($extra_pages AS $key => $tab) {
                    echo '<a class="slvf-nav__link slvf-nav__link--minor" '.($tab['type'] == 'link' ? 'href="'.(strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content']).'" target="_blank"' : '') . ' data-target="tab-' . ($tab['type'] == 'terms_page' ? 'terms' : $key) . '">' . $tab['title'] . '</a>';
                }
            }
            ?>
            <?php if(count($language_list) > 1): ?>
            <a class="slvf-nav__link slvf-nav__link--minor" data-target="tab-language">
                <i class="lni lni-world"></i>
            </a>
            <?php endif; ?>
            <?php if($settings['contact_enabled'] == 'true'): ?>
            <a class="slvf-nav__link slvf-nav__link--minor" data-target="tab-contact">
                <?php echo lang('contact'); ?>
            </a>
            <?php endif; ?>

            <!-- Mobile hamburger -->
            <button class="slvf-nav__hamburger" id="slvf-hamburger" aria-label="Menu">
                <span></span><span></span><span></span>
            </button>
        </div>
    </div>

    <!-- Mobile menu -->
    <div class="slvf-nav__mobile-menu" id="slvf-mobile-menu">
        <?php
        if(is_array($custom_tabs) && !empty($custom_tabs)) {
            foreach ($custom_tabs AS $key => $tab) {
                if(in_array($key, array('uploads','logout'))) continue;
                echo '<a class="slvf-nav__mobile-item" '.($tab['type'] == 'url' ? 'href="'.base_url($tab['url']).'"' : '').' data-target="tab-' . $key . '">' . lang($tab['translation']) . '</a>';
            }
        }
        if(is_array($extra_pages) && !empty($extra_pages)) {
            foreach ($extra_pages AS $key => $tab) {
                echo '<a class="slvf-nav__mobile-item" '.($tab['type'] == 'link' ? 'href="'.(strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content']).'" target="_blank"' : '') . ' data-target="tab-' . ($tab['type'] == 'terms_page' ? 'terms' : $key) . '">' . $tab['title'] . '</a>';
            }
        }
        ?>
        <?php if(count($language_list) > 1): ?>
        <a class="slvf-nav__mobile-item" data-target="tab-language"><?php echo lang('change_language'); ?></a>
        <?php endif; ?>
        <?php if($settings['contact_enabled'] == 'true'): ?>
        <a class="slvf-nav__mobile-item" data-target="tab-contact"><?php echo lang('contact'); ?></a>
        <?php endif; ?>
        <?php if(isset($_SESSION['otp_verified_email'])): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('history') ?>">History</a>
        <a class="slvf-nav__mobile-item" href="#" onclick="OtpModal.logout(); return false;">Sign out</a>
        <?php elseif($session->has_userdata('user') && $session->userdata('user') == true): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('login/logout') ?>"><?php echo lang('logout'); ?></a>
        <?php elseif(isset($_SESSION['droppy_premium'])): ?>
        <a class="slvf-nav__mobile-item" href="<?php echo base_url('page/premium?action=logout') ?>"><?php echo lang('logout'); ?></a>
        <?php else: ?>
        <a class="slvf-nav__mobile-item" href="#" onclick="OtpModal.open(); return false;">Sign in</a>
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
     TAB WINDOW (slide-in panel for terms, language, contact, etc.)
     ============================================= -->
<div class="slvf-tab-window" id="slvf-tab-window">
    <div class="slvf-tab-window__header">
        <span class="slvf-wordmark slvf-wordmark--inline">
            <span class="slvf-wordmark__dot" aria-hidden="true"></span>
            <span class="slvf-wordmark__inline-text">Share Large Video Files</span>
        </span>
        <button class="slvf-tab-window__close" id="slvf-tab-close" aria-label="Close panel">
            <i class="lni lni-close"></i>
        </button>
    </div>

    <!-- Language selector tab -->
    <div class="slvf-tab" id="tab-language">
        <h2 class="slvf-tab__title"><?php echo lang('change_language'); ?></h2>
        <label class="slvf-label"><?php echo lang('select_pref_lang'); ?></label>
        <div class="slvf-select-wrap">
            <select class="slvf-select" onchange="General.changeLanguage()" id="languagePicker">
                <option disabled selected> -- <?php echo lang('select_language'); ?> -- </option>
                <?php
                foreach($language_list as $row) {
                    echo '<option value="' . $row->path . '">' . $row->name . '</option>';
                }
                ?>
            </select>
            <i class="lni lni-world slvf-select-wrap__icon"></i>
        </div>
        <?php if($settings['ad_1_enabled'] == 'true'): ?>
        <div class="slvf-ad-slot" style="margin-top: 40px;">
            <?php echo $settings['ad_1_code']; ?>
        </div>
        <?php endif; ?>
    </div>

    <!-- Contact tab -->
    <?php if($settings['contact_enabled'] == 'true'): ?>
    <div class="slvf-tab" id="tab-contact">
        <h2 class="slvf-tab__title"><?php echo lang('contact'); ?></h2>
        <form class="slvf-contact-form contact-form">
            <div class="slvf-field">
                <label class="slvf-label"><?php echo lang('email'); ?></label>
                <input class="slvf-input" type="email" name="contact_email" placeholder="<?php echo lang('contact_email_description'); ?>">
            </div>
            <div class="slvf-field">
                <label class="slvf-label"><?php echo lang('subject'); ?></label>
                <input class="slvf-input" type="text" name="contact_subject" placeholder="<?php echo lang('contact_subject_description'); ?>">
            </div>
            <div class="slvf-field">
                <label class="slvf-label"><?php echo lang('message'); ?></label>
                <textarea class="slvf-textarea" name="contact_message" placeholder="<?php echo lang('contact_message_description'); ?>"></textarea>
            </div>
            <?php if(!empty($settings['recaptcha_key'])): ?>
            <div class="g-recaptcha" data-sitekey="<?php echo $settings['recaptcha_key']; ?>" style="margin-bottom: 20px;"></div>
            <?php endif; ?>
            <button class="slvf-btn slvf-btn--primary">
                <?php echo lang('send'); ?>
            </button>
        </form>
    </div>
    <?php endif; ?>

    <!-- File preview tab (download page) -->
    <?php if(isset($page) && $page == 'download' && isset($data) && $data['file_previews'] == 'true'): ?>
    <div class="slvf-tab slvf-tab--large" id="tab-files">
        <div class="slvf-file-list">
            <?php foreach ($files as $file): ?>
            <div class="slvf-file-card">
                <a href="<?php echo $settings['site_url'].'handler/file?file_id='.$file['id'].'&file_secret='.$file['secret_code'] ?>&download=true" class="slvf-file-card__inner" download>
                    <div class="slvf-file-card__thumb">
                        <?php
                        if(count($files) == 1) {
                            $file_path = $settings['upload_dir'] . $file['secret_code'] . '-' . $file['file'];
                        } else {
                            $file_path = $settings['upload_dir'] . $upload_id . '/' . $file['secret_code'] . '-' . $file['file'];
                        }
                        $ext = pathinfo($file_path, PATHINFO_EXTENSION);

                        if($file['thumb'] == 1): ?>
                            <img data-src="<?php echo $settings['site_url'].'handler/file?file_id='.$file['id'].'&file_secret='.$file['secret_code'].'&thumb=1' ?>" loading="lazy" class="lazyload">
                        <?php elseif(in_array($ext, array('jpg','JPG','jpeg','JPEG','png','PNG','gif','webp')) && $file['size'] < 500000): ?>
                            <img data-src="<?php echo $settings['site_url'].'handler/file?file_id='.$file['id'].'&file_secret='.$file['secret_code'] ?>" loading="lazy" class="lazyload">
                        <?php elseif(in_array(pathinfo($file['file'], PATHINFO_EXTENSION), ['mp4', 'webm', 'ogg', 'mkv', 'mov'])): ?>
                            <button class="slvf-file-card__play" onclick="event.preventDefault(); openVideoModal('<?php echo $settings['site_url'].'handler/file?file_id='.$file['id'].'&file_secret='.$file['secret_code'] ?>')">
                                <i class="lni lni-play"></i>
                            </button>
                        <?php else: ?>
                            <lord-icon
                                src="assets/themes/<?php echo $settings['theme'] ?>/nocovwne.json"
                                trigger="click"
                                colors="primary:#746e6e,secondary:#746e6e"
                                style="width:80px;height:80px; margin: 0 auto;">
                            </lord-icon>
                        <?php endif; ?>
                    </div>
                    <div class="slvf-file-card__details">
                        <span class="slvf-file-card__name"><?php echo htmlspecialchars($file['file']) ?></span>
                        <span class="slvf-file-card__size"><?php echo byte_format($file['size']) ?></span>
                    </div>
                    <div class="slvf-file-card__actions">
                        <span class="slvf-file-card__dl"><i class="lni lni-cloud-download"></i></span>
                        <?php if(in_array(pathinfo($file['file'], PATHINFO_EXTENSION), ['mp4', 'webm', 'ogg', 'mkv', 'mov'])): ?>
                        <span class="slvf-file-card__play-btn" onclick="event.preventDefault(); openVideoModal('<?php echo $settings['site_url'].'handler/file?file_id='.$file['id'].'&file_secret='.$file['secret_code'] ?>')">
                            <i class="lni lni-play"></i>
                        </span>
                        <?php endif; ?>
                    </div>
                </a>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
    <?php endif; ?>

    <!-- Extra pages (terms, custom pages) -->
    <?php
    if(is_array($extra_pages) && !empty($extra_pages)) {
        foreach ($extra_pages AS $key => $tab) {
            if ($tab['type'] != 'link') {
                echo '<div class="slvf-tab" id="tab-' . ($tab['type'] == 'terms_page' ? 'terms' : $key) . '"><div class="slvf-tab__prose">' . $tab['content'] . '</div></div>';
            }
        }
    }

    // Plugin inline tabs
    if(is_array($custom_tabs) && !empty($custom_tabs)) {
        foreach ($custom_tabs AS $key => $tab) {
            if ($tab['type'] == 'inline') {
                echo '<div class="slvf-tab" id="tab-'.$key.'">';
                require_once APPPATH . 'plugins/' . $tab['plugin'] . '/' . $tab['view'];
                echo '</div>';
            }
        }
    }
    ?>
</div>
<!-- END TAB WINDOW -->

<!-- Tab window backdrop -->
<div class="slvf-tab-backdrop" id="slvf-tab-backdrop"></div>


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
