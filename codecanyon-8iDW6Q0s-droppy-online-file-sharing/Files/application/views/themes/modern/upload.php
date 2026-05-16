<?php
// Compute display values for hero copy
$ev_max_size_mb     = isset($settings['max_size']) ? (int) $settings['max_size'] : 0;
$ev_max_size_label  = $ev_max_size_mb >= 1024
                        ? round($ev_max_size_mb / 1024, $ev_max_size_mb % 1024 === 0 ? 0 : 1) . ' GB'
                        : $ev_max_size_mb . ' MB';
$ev_max_files       = isset($settings['max_files']) ? (int) $settings['max_files'] : 0;
$ev_default_share   = isset($settings['default_sharetype']) ? $settings['default_sharetype'] : 'link';
?>

<main class="slvf-shell slvf-shell--hero">
<section class="slvf-hero slvf-hero--split">

    <!-- ========== 2-column grid ========== -->
    <div class="slvf-hero__grid">

    <!-- ─── LEFT: copy + trust ─── -->
    <div class="slvf-hero__col slvf-hero__col--copy">

        <span class="slvf-hero__eyebrow slvf-reveal" data-d="0"><?php echo lang('hero_eyebrow') ?: 'Built for video creators'; ?></span>

        <h1 class="slvf-hero__title slvf-reveal" data-d="80">
            <span><?php echo lang('hero_title_lead') ?: 'Send heavy files'; ?></span>
            <em><?php echo lang('hero_title_emph') ?: 'instantly.'; ?></em>
        </h1>

        <p class="slvf-hero__sub slvf-reveal" data-d="140">
            <?php echo lang('hero_sub') ?: 'Drop any file, get a shareable link in seconds. No account, no compression, no waiting.'; ?>
        </p>

        <!-- Benefit list -->
        <ul class="slvf-hero__benefits slvf-reveal" data-d="180">
            <li>
                <span class="slvf-hero__benefit-icon"><i class="lni lni-checkmark"></i></span>
                <div>
                    <strong><?php echo lang('benefit_size_title') ?: 'Up to '.htmlspecialchars($ev_max_size_label); ?></strong>
                    <span><?php echo lang('benefit_size_sub') ?: 'per transfer, free'; ?></span>
                </div>
            </li>
            <li>
                <span class="slvf-hero__benefit-icon"><i class="lni lni-user"></i></span>
                <div>
                    <strong><?php echo lang('benefit_account_title') ?: 'No sign-up required'; ?></strong>
                    <span><?php echo lang('benefit_account_sub') ?: 'send as a guest instantly'; ?></span>
                </div>
            </li>
            <li>
                <span class="slvf-hero__benefit-icon"><i class="lni lni-lock-alt"></i></span>
                <div>
                    <strong><?php echo lang('benefit_expire_title') ?: 'Auto-expires'; ?></strong>
                    <span><?php echo lang('benefit_expire_sub') ?: 'files self-delete after expiry'; ?></span>
                </div>
            </li>
            <li>
                <span class="slvf-hero__benefit-icon"><i class="lni lni-video"></i></span>
                <div>
                    <strong><?php echo lang('benefit_video_title') ?: 'Built for video'; ?></strong>
                    <span><?php echo lang('benefit_video_sub') ?: 'MP4, MOV, MKV and more'; ?></span>
                </div>
            </li>
        </ul>

        <!-- Stat bar -->
        <div class="slvf-hero__stat-bar slvf-reveal" data-d="240">
            <div class="slvf-hero__stat-item">
                <strong><?php echo htmlspecialchars($ev_max_size_label); ?></strong>
                <span><?php echo lang('hero_meta_size') ?: 'max size'; ?></span>
            </div>
            <div class="slvf-hero__stat-div" aria-hidden="true"></div>
            <div class="slvf-hero__stat-item">
                <strong><?php echo $ev_max_files > 0 ? number_format($ev_max_files) : '∞'; ?></strong>
                <span><?php echo lang('hero_meta_files') ?: 'files at once'; ?></span>
            </div>
            <div class="slvf-hero__stat-div" aria-hidden="true"></div>
            <div class="slvf-hero__stat-item">
                <strong><?php echo lang('hero_meta_cost_value') ?: 'Free'; ?></strong>
                <span><?php echo lang('hero_meta_cost') ?: 'to start'; ?></span>
            </div>
        </div>

        <!-- Scroll cue (desktop only) -->
        <a class="slvf-hero__scroll-hint slvf-reveal" data-d="300" href="#how-it-works">
            <i class="lni lni-arrow-down"></i>
            <span><?php echo lang('hero_scroll') ?: 'See how it works'; ?></span>
        </a>

    </div><!-- /.slvf-hero__col--copy -->

    <!-- ─── RIGHT: upload card ─── -->
    <div class="slvf-hero__col slvf-hero__col--card">
    <div class="slvf-hero__card slvf-reveal" data-d="60">

<div class="upload-block">
    <div class="upload-block-inner">
        <?php if($settings['ad_1_enabled'] == 'true') : ?>
            <div class="mobile-ad-block">
                <?php echo $settings['ad_1_code']; ?>
            </div>
        <?php endif; ?>

        <!-- ========== Mode toggle (Link / Email) ========== -->
        <?php if($settings['share_enabled'] == 'true'): ?>
        <div class="slvf-mode-toggle <?php echo $ev_default_share === 'mail' ? 'is-mail' : 'is-link'; ?>" id="slvf-mode-toggle" role="tablist" aria-label="<?php echo lang('share_method') ?: 'Share method'; ?>">
            <span class="slvf-mode-toggle__pill" aria-hidden="true"></span>
            <button type="button" class="slvf-mode-toggle__btn <?php echo $ev_default_share !== 'mail' ? 'is-active' : ''; ?>" data-mode="link" role="tab" aria-selected="<?php echo $ev_default_share !== 'mail' ? 'true' : 'false'; ?>">
                <i class="lni lni-link"></i>
                <span><?php echo lang('mode_link') ?: 'Get a link'; ?></span>
            </button>
            <button type="button" class="slvf-mode-toggle__btn <?php echo $ev_default_share === 'mail' ? 'is-active' : ''; ?>" data-mode="mail" role="tab" aria-selected="<?php echo $ev_default_share === 'mail' ? 'true' : 'false'; ?>">
                <i class="lni lni-envelope"></i>
                <span><?php echo lang('mode_email') ?: 'Send by email'; ?></span>
            </button>
        </div>
        <?php endif; ?>

        <div class="upload-block-content start-top active" id="upload">
            <div class="upload-form">
                <div class="select-first-files">
                    <div class="outside-container">

                        <!-- Decorative scaffold corners — pure CSS, ties to the rest of the Cinematic Studio motif -->
                        <span class="slvf-drop__corner slvf-drop__corner--tl" aria-hidden="true"></span>
                        <span class="slvf-drop__corner slvf-drop__corner--tr" aria-hidden="true"></span>
                        <span class="slvf-drop__corner slvf-drop__corner--bl" aria-hidden="true"></span>
                        <span class="slvf-drop__corner slvf-drop__corner--br" aria-hidden="true"></span>

                        <!-- Custom illustration: three fanned media cards behind a central + (replaces the generic blue-circle Lordicon). -->
                        <button type="button" class="slvf-drop__illus" id="slvf-drop-pick" aria-label="<?php echo lang('lets_begin_files') ?>">
                            <span class="slvf-drop__card slvf-drop__card--back" aria-hidden="true">
                                <span class="slvf-drop__card-line"></span>
                                <span class="slvf-drop__card-line"></span>
                            </span>
                            <span class="slvf-drop__card slvf-drop__card--mid" aria-hidden="true">
                                <span class="slvf-drop__card-line"></span>
                                <span class="slvf-drop__card-line"></span>
                                <span class="slvf-drop__card-line"></span>
                            </span>
                            <span class="slvf-drop__card slvf-drop__card--front" aria-hidden="true">
                                <svg class="slvf-drop__plus" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.4" stroke-linecap="round">
                                    <path d="M12 5v14M5 12h14"></path>
                                </svg>
                            </span>
                            <span class="slvf-drop__pulse" aria-hidden="true"></span>
                        </button>

                        <!-- Headline + sub copy -->
                        <span class="description">Drop a heavy file <em>here.</em></span>
                        <span class="slvf-drop__sub">Up to <?php echo isset($settings['max_size']) ? ((int)$settings['max_size'] >= 1024 ? round((int)$settings['max_size']/1024, 1).' GB' : (int)$settings['max_size'].' MB') : '2 GB'; ?> &middot; no account &middot; auto-expires</span>

                        <!-- Filetype hint chips — communicates "tuned for heavy media" -->
                        <span class="slvf-drop__chips" aria-hidden="true">
                            <span>MP4</span>
                            <span>MOV</span>
                            <span>ZIP</span>
                            <span>PSD</span>
                            <span>WAV</span>
                        </span>

                        <!-- Folder picker — subtle inline text link.
                             Kept tiny so it doesn't compete with the main "+"
                             card illustration; folder upload is a niche path. -->
                        <span class="folder-select"><?php echo lang('or_select_folder') ?></span>
                    </div>
                </div>
                <div class="selected-files" id="selected-files">
                    <ul></ul>

                    <div class="bottom">
                        <div class="stats">
                            <span><b id="stats-total"></b><br>
                                <?php echo lang('files_selected') ?></span>
                            <span><b id="stats-selected"></b><br>
                                <?php echo lang('selected') ?></span>
                            <span><b id="stats-remaining"></b><br>
                                <?php echo lang('remaining') ?></span>
                        </div>
                        <div class="add-buttons">
                            <button class="button is-small is-info" id="add-files"><?php echo lang('add_more_files') ?></button>
                            <button class="button is-small is-info" id="add-folders"><?php echo lang('add_folders') ?></button>
                        </div>
                    </div>
                </div>

                <form enctype="multipart/form-data" id="upload-form" class="uploadForm">
                    <input type="hidden" name="share" id="share" value="<?php echo $settings['default_sharetype'] ?>">
                    <input type="hidden" name="destruct" id="destruct" value="<?php echo $settings['default_destruct'] ?>">
                    <input type="file" name="files[]" id="file-selector" multiple="multiple">
                    <input type="file" name="files[]" id="folder-selector" multiple="multiple" webkitdirectory="true" directory>

                    <div id="email-fields">
                        <div class="input-group">
                            <div class="recipients"></div>
                            <?php
                            if(empty($settings['default_email_to']) || ($session->has_userdata('user_email') && $session->userdata('user_email'))) {
                                echo '<input class="input" type="text" name="email_to[]" id="email-to" placeholder="'.lang('email_to').'" autocomplete="none" onfocus="this.setAttribute(\'autocomplete\', \'none\');">';
                            } else {
                                $emails_to = explode(',', $settings['default_email_to']);

                                if(count($emails_to) > 1) {
                                    echo '<select name="email_to[]"><option selected disabled>'.lang('select_recipient').'</option>';
                                    foreach ($emails_to as $email_to) {
                                        $email_to_label = explode(']', (explode('[', $email_to)[1]))[0];
                                        $email_to = str_replace('['.$email_to_label.']', '', $email_to);

                                        echo "<option value='$email_to'>".(empty($email_to_label) ? $email_to : $email_to_label)."</option>";
                                    }
                                    echo '</select>';
                                }
                                else
                                {
                                    if(strpos($settings['default_email_to'], '[')) {
                                        $email_to_label = explode(']', (explode('[', $settings['default_email_to'])[1]))[0];
                                        $email_to = str_replace('['.$email_to_label.']', '', $settings['default_email_to']);

                                        echo '<select name="email_to[]" required="required" readonly="readonly"><option value='.$email_to.' selected>'.(empty($email_to_label) ? $email_to : $email_to_label).'</option></select>';
                                    } else {
                                        echo '<input class="input" type="text" name="email_to[]" placeholder="' . lang('email_to') . '" value="' . $settings['default_email_to'] . '" readonly="readonly">';
                                    }
                                }
                            }
                            ?>
                        </div>
                        <div class="input-group">
                            <?php if($session->has_userdata('user_email') && $session->userdata('user_email')) : ?>
                                <input class="input" type="text" name="email_from" id="email-from" placeholder="<?php echo lang('email_from') ?>" value="<?php echo $session->userdata('user_email'); ?>" required="required" readonly>
                            <?php elseif(isset($_SESSION['droppy_premium'])): ?>
                                <input class="input" type="text" name="email_from" id="email-from" placeholder="<?php echo lang('email_from') ?>" value="<?php echo $_SESSION['droppy_premium_email']; ?>" required="required" readonly>
                            <?php elseif($settings['enable_sender_cookie'] == 'true' && isset($sender_cookie) && !empty($sender_cookie)): ?>
                                <input class="input" type="text" name="email_from" id="email-from" placeholder="<?php echo lang('email_from') ?>" value="<?php echo $sender_cookie; ?>" required="required">
                            <?php else:?>
                                <input class="input" type="text" name="email_from" id="email-from" placeholder="<?php echo lang('email_from') ?>" required="required">
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="input-group">
                        <textarea class="input" name="message" placeholder="<?php echo lang('message') ?>"></textarea>
                    </div>

                    <div class="advanced-options">
                        <?php if($settings['share_enabled'] == 'true'): ?>
                        <div class="input-group" data-help="<?php echo lang('share_type_text') ?>">
                            <span class="label"><?php echo lang('how_to_share_file') ?> <i class="lni lni-question-circle"></i></span>
                            <div class="radio-group share-options">
                                <label class="radio <?php if($settings['default_sharetype'] == 'mail') { echo 'selected'; } ?>" id="mail">
                                    <?php echo lang('send_using_email') ?>
                                </label>
                                <label class="radio <?php if($settings['default_sharetype'] == 'link') { echo 'selected'; } ?>" id="link">
                                    <?php echo lang('get_sharable_link') ?>
                                </label>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if($settings['destruct_enabled'] == 'true'): ?>
                        <div class="input-group" data-help="<?php echo lang('destruct_text') ?>">
                            <span class="label"><?php echo lang('enable_destuct') ?> <i class="lni lni-question-circle"></i></span>
                            <div class="radio-group destruct-options">
                                <label class="radio <?php if($settings['default_destruct'] == 'no') { echo 'selected'; } ?>" id="no">
                                    <?php echo lang('no') ?>
                                </label>
                                <label class="radio <?php if($settings['default_destruct'] == 'yes') { echo 'selected'; } ?>" id="yes">
                                    <?php echo lang('yes') ?>
                                </label>
                            </div>
                        </div>
                        <?php endif; ?>
                        <?php if((isset($settings['pm_pass_enabled']) && $settings['pm_pass_enabled'] == 'true') || $settings['password_enabled'] == 'true') : ?>
                            <div class="input-group" data-help="<?php echo lang('password_text') ?>">
                                <span class="label"><?php echo lang('protect_upload_password') ?> <i class="lni lni-question-circle"></i></span>
                                <input class="input" type="text" name="password" placeholder="<?php echo lang('password') ?>" autocomplete="off" autofill="no">
                            </div>
                        <?php else: ?>
                            <div class="input-group" data-help="<?php echo lang('password_text') ?>">
                                <span class="label"><?php echo lang('protect_upload_password') ?> <i class="lni lni-question-circle"></i></span>
                                <input class="input" type="text" name="password" placeholder="<?php echo lang('not_available_pass') ?>" readonly="readonly" autocomplete="off"  autofill="no">
                            </div>
                        <?php endif; ?>
                        <?php if(strpos($settings['expire'], ',') !== false): ?>
                            <div class="input-group">
                                <span class="label"><?php echo lang('when_file_expire') ?></span>
                                <select name="expire">
                                    <?php
                                    $times = explode(',',$settings['expire']);
                                    foreach ($times AS $time) {
                                        echo "<option value='$time'>".secondsToTime($time)."</option>";
                                    }
                                    ?>
                                </select>
                                <?php if(!empty($settings['default_expire']) && $settings['default_expire'] != 0): ?><script>$('select[name="expire"]').val("<?php echo $settings['default_expire'] ?>");</script><?php endif; ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </form>
            </div>
            <div class="button-block">
                <button class="button is-info is-rounded" id="submit-upload"><?php echo lang('upload') ?></button>
                <button class="button is-info is-rounded options"><i class="lni lni-more-alt"></i></button>
            </div>
        </div>

        <div class="upload-block-content" id="upload-verify">
            <lord-icon
                    src="assets/themes/<?php echo $settings['theme'] ?>/rhvddzym.json"
                    trigger="loop"
                    colors="primary:<?php echo (!empty($settings['theme_color']) ? $settings['theme_color'] : '#121331'); ?>,<?php echo (!empty($settings['theme_color_secondary']) ? $settings['theme_color_secondary'] : '#3e8ed0'); ?>"
                    style="width:180px;height:180px">
            </lord-icon>

            <div class="upload-verify-details">
                <h1><?php echo lang('verify_email_title') ?></h1>

                <p><?php echo lang('verify_email_desc') ?> <span id="email-to-verify"></span></p>

                <input type="number" class="input is-normal" placeholder="<?php echo lang('enter_verify_code') ?>">
            </div>

            <div class="button-block">
                <button class="button is-info is-rounded"><?php echo lang('verify') ?></button>
            </div>
        </div>

        <div class="upload-block-content" id="upload-progress">
            <div class="upload-progress-bar" id="progress-bar"></div>

            <div class="upload-progress-details">
                <span class="size"></span>
                <span class="time"></span>
            </div>

            <div class="button-block">
                <button class="button is-info is-rounded" id="cancel-upload"><?php echo lang('cancel') ?></button>
            </div>
        </div>
        <div class="upload-block-content" id="upload-finished">

            <!-- Link-share success -->
            <div class="upload-finished-message slvf-complete" id="link">
                <div class="slvf-complete__icon">
                    <i class="lni lni-checkmark-circle"></i>
                </div>
                <h2 class="slvf-complete__title"><?php echo lang('success') ?: 'Transfer ready!'; ?></h2>
                <p class="slvf-complete__sub"><?php echo lang('success_link') ?: 'Your files are ready to share. Copy the link below.'; ?></p>

                <div class="slvf-complete__link-row">
                    <input type="text" class="slvf-complete__link-input" id="slvf-transfer-link" value="" readonly aria-label="Transfer link">
                    <button class="slvf-btn slvf-btn--primary" id="slvf-copy-btn" type="button">
                        <i class="lni lni-copy"></i> <?php echo lang('copy_url') ?: 'Copy link'; ?>
                    </button>
                </div>

                <div class="slvf-complete__qr" id="slvf-complete-qr-wrap" hidden>
                    <canvas id="slvf-qr-canvas" width="160" height="160" aria-label="<?php echo lang('scan_qr') ?: 'QR code'; ?>"></canvas>
                    <p class="slvf-complete__qr-label"><?php echo lang('scan_qr') ?: 'Scan to download'; ?></p>
                    <button type="button" class="slvf-btn slvf-btn--ghost slvf-btn--sm" id="slvf-qr-download">
                        <i class="lni lni-download"></i> <?php echo lang('share_qr_code') ?: 'Download QR image'; ?>
                    </button>
                </div>

                <div class="slvf-complete__meta">
                    <span><i class="lni lni-timer"></i> <?php echo lang('expires_in') ?: 'Auto-expires'; ?></span>
                    <span><i class="lni lni-eye"></i> <span id="slvf-dl-count">0</span> <?php echo lang('downloads') ?: 'downloads'; ?></span>
                </div>

                <button class="slvf-btn slvf-btn--ghost slvf-btn--sm" id="slvf-send-another" type="button">
                    <i class="lni lni-reload"></i> <?php echo lang('upload_more') ?: 'Send another'; ?>
                </button>
            </div>

            <!-- Email-share success -->
            <div class="upload-finished-message slvf-complete" id="mail">
                <div class="slvf-complete__icon slvf-complete__icon--mail">
                    <i class="lni lni-envelope"></i>
                </div>
                <h2 class="slvf-complete__title"><?php echo lang('success') ?: 'Email sent!'; ?></h2>
                <p class="slvf-complete__sub"><?php echo lang('success_email') ?: 'Your transfer has been sent to the recipient.'; ?></p>

                <button class="slvf-btn slvf-btn--ghost slvf-btn--sm" id="slvf-send-another" type="button">
                    <i class="lni lni-reload"></i> <?php echo lang('upload_more') ?: 'Send another'; ?>
                </button>
            </div>

        </div>
    </div>

    <div class="upload-block-tooltip">
        <div class="content error">
            <img src="assets/themes/<?php echo $settings['theme'] ?>/img/icons/error-icon-white.png">
            <p></p>
        </div>
        <div class="content help">
            <img src="assets/themes/<?php echo $settings['theme'] ?>/img/icons/question.png">
            <p></p>
        </div>
    </div>
</div>

    </div><!-- /.slvf-hero__card -->
    </div><!-- /.slvf-hero__col--card -->

    </div><!-- /.slvf-hero__grid -->

</section><!-- /.slvf-hero -->
</main><!-- /.slvf-shell -->


<!-- =============================================================
     HOW IT WORKS
     ============================================================= -->
<section class="slvf-section" id="how-it-works">
    <span class="slvf-section__eyebrow slvf-rise"><?php echo lang('how_it_works_eyebrow') ?: 'How it works'; ?></span>
    <h2 class="slvf-section__title slvf-rise">
        <?php echo lang('how_it_works_title_lead') ?: 'Three steps.'; ?>
        <em><?php echo lang('how_it_works_title_emph') ?: 'No friction.'; ?></em>
    </h2>
    <p class="slvf-section__lead slvf-rise">
        <?php echo lang('how_it_works_lead') ?: 'Built so anyone — clients, collaborators, your mum — can receive heavy footage without installing anything.'; ?>
    </p>

    <div class="slvf-steps">
        <article class="slvf-step slvf-rise">
            <div class="slvf-step__icon"><i class="lni lni-cloud-upload"></i></div>
            <h3 class="slvf-step__title"><?php echo lang('step_1_title') ?: 'Drop the files'; ?></h3>
            <p class="slvf-step__desc"><?php echo lang('step_1_desc') ?: 'Drag a folder, a single 4K master, or a stack of takes. Up to '.htmlspecialchars($ev_max_size_label).' per transfer.'; ?></p>
        </article>
        <article class="slvf-step slvf-rise">
            <div class="slvf-step__icon"><i class="lni lni-shuffle"></i></div>
            <h3 class="slvf-step__title"><?php echo lang('step_2_title') ?: 'Pick how to share'; ?></h3>
            <p class="slvf-step__desc"><?php echo lang('step_2_desc') ?: 'Generate a public link, or send straight to a recipient\'s inbox with a verified sender.'; ?></p>
        </article>
        <article class="slvf-step slvf-rise">
            <div class="slvf-step__icon"><i class="lni lni-checkmark-circle"></i></div>
            <h3 class="slvf-step__title"><?php echo lang('step_3_title') ?: 'They download'; ?></h3>
            <p class="slvf-step__desc"><?php echo lang('step_3_desc') ?: 'Files self-destruct after the expiry you choose. Nothing lingers, nothing leaks.'; ?></p>
        </article>
    </div>
</section>


<!-- =============================================================
     FEATURES (bento)
     ============================================================= -->
<section class="slvf-section">
    <span class="slvf-section__eyebrow slvf-rise"><?php echo lang('features_eyebrow') ?: 'Why it works'; ?></span>
    <h2 class="slvf-section__title slvf-rise">
        <?php echo lang('features_title_lead') ?: 'Made for'; ?>
        <em><?php echo lang('features_title_emph') ?: 'big files,'; ?></em>
        <?php echo lang('features_title_tail') ?: 'small patience.'; ?>
    </h2>

    <div class="slvf-features">
        <article class="slvf-feature slvf-feature--wide slvf-rise">
            <div>
                <span class="slvf-feature__tag"><i class="lni lni-video"></i> <?php echo lang('feature_video_tag') ?: 'Tuned for video'; ?></span>
                <div class="slvf-feature__icon"><i class="lni lni-video"></i></div>
                <h3 class="slvf-feature__title"><?php echo lang('feature_video_title') ?: 'Heavy footage moves at full speed.'; ?></h3>
                <p class="slvf-feature__desc"><?php echo lang('feature_video_desc') ?: 'Chunked uploads, parallel streams and resumable transfers mean a dropped Wi-Fi doesn\'t cost you the upload.'; ?></p>
            </div>
            <div class="slvf-hero__meta" style="margin-top: 32px; padding-top: 24px;">
                <div><strong><?php echo htmlspecialchars($ev_max_size_label); ?></strong>Max size</div>
                <div><strong>4K · 8K</strong>Resolutions</div>
                <div><strong>MP4 · MOV · MKV</strong>Containers</div>
            </div>
        </article>

        <article class="slvf-feature slvf-rise">
            <div class="slvf-feature__icon"><i class="lni lni-user"></i></div>
            <h3 class="slvf-feature__title"><?php echo lang('feature_noaccount_title') ?: 'No account required.'; ?></h3>
            <p class="slvf-feature__desc"><?php echo lang('feature_noaccount_desc') ?: 'Recipients tap the link and download. That\'s the whole flow.'; ?></p>
        </article>

        <article class="slvf-feature slvf-rise">
            <div class="slvf-feature__icon"><i class="lni lni-lock-alt"></i></div>
            <h3 class="slvf-feature__title"><?php echo lang('feature_expire_title') ?: 'Self-destructs.'; ?></h3>
            <p class="slvf-feature__desc"><?php echo lang('feature_expire_desc') ?: 'Set an expiry. Add a password. Files vanish on schedule.'; ?></p>
        </article>

        <article class="slvf-feature slvf-rise">
            <div class="slvf-feature__icon"><i class="lni lni-bolt"></i></div>
            <h3 class="slvf-feature__title"><?php echo lang('feature_fast_title') ?: 'Direct to cloud.'; ?></h3>
            <p class="slvf-feature__desc"><?php echo lang('feature_fast_desc') ?: 'Uploads stream straight to storage — no slow middle hops.'; ?></p>
        </article>

        <article class="slvf-feature slvf-rise">
            <div class="slvf-feature__icon"><i class="lni lni-eye"></i></div>
            <h3 class="slvf-feature__title"><?php echo lang('feature_preview_title') ?: 'Preview in browser.'; ?></h3>
            <p class="slvf-feature__desc"><?php echo lang('feature_preview_desc') ?: 'Recipients can scrub video right on the download page before pulling the file.'; ?></p>
        </article>
    </div>
</section>


<!-- =============================================================
     FOOTER
     ============================================================= -->
<footer class="slvf-footer">
    <div class="slvf-footer__inner">
        <div class="slvf-footer__brand"><?php echo htmlspecialchars($settings['site_name']); ?></div>
        <nav class="slvf-footer__links">
            <?php
            if(is_array($extra_pages) && !empty($extra_pages)) {
                foreach ($extra_pages AS $key => $tab) {
                    if ($tab['type'] === 'about_page') {
                        echo '<a href="' . base_url('about') . '">' . htmlspecialchars($tab['title']) . '</a>';
                    } elseif ($tab['type'] === 'terms_page') {
                        echo '<a href="' . base_url('terms') . '">' . htmlspecialchars($tab['title']) . '</a>';
                    } elseif ($tab['type'] === 'link') {
                        $href = strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content'];
                        echo '<a href="' . $href . '" target="_blank">' . htmlspecialchars($tab['title']) . '</a>';
                    } else {
                        echo '<a href="' . base_url('page/' . urlencode($tab['title'])) . '">' . htmlspecialchars($tab['title']) . '</a>';
                    }
                }
            }
            ?>
            <?php if(count($language_list) > 1): ?>
            <a data-target="tab-language"><?php echo lang('change_language'); ?></a>
            <?php endif; ?>
            <?php if($settings['contact_enabled'] == 'true'): ?>
            <a data-target="tab-contact"><?php echo lang('contact'); ?></a>
            <?php endif; ?>
        </nav>
        <div class="slvf-footer__copy">© <?php echo date('Y'); ?> · <?php echo htmlspecialchars($settings['site_name']); ?></div>
    </div>
</footer>