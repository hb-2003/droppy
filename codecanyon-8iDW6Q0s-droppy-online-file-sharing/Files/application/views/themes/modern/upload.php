<?php
// Compute display values for hero copy
$ev_max_size_mb     = isset($settings['max_size']) ? (int) $settings['max_size'] : 0;
$ev_max_size_label  = $ev_max_size_mb >= 1024
                        ? round($ev_max_size_mb / 1024, $ev_max_size_mb % 1024 === 0 ? 0 : 1) . ' GB'
                        : $ev_max_size_mb . ' MB';
$ev_max_files       = isset($settings['max_files']) ? (int) $settings['max_files'] : 0;
$ev_default_share   = isset($settings['default_sharetype']) ? $settings['default_sharetype'] : 'link';
?>

<main class="slvf-shell">
<section class="slvf-hero">

    <!-- Decorative scaffold marks -->
    <span class="slvf-hero__scaffold slvf-hero__scaffold--tl" aria-hidden="true"></span>
    <span class="slvf-hero__scaffold slvf-hero__scaffold--tr" aria-hidden="true"></span>

    <!-- ========== Intro ========== -->
    <header class="slvf-hero__head">
        <span class="slvf-hero__eyebrow slvf-reveal" data-d="100"><?php echo lang('hero_eyebrow') ?: 'Built for video creators'; ?></span>

        <h1 class="slvf-hero__title slvf-reveal" data-d="200">
            <span><?php echo lang('hero_title_lead') ?: 'Send heavy files'; ?></span>
            <em><?php echo lang('hero_title_emph') ?: 'instantly.'; ?></em>
        </h1>

        <p class="slvf-hero__sub slvf-reveal" data-d="300">
            <?php echo lang('hero_sub') ?: 'Drop a folder, generate a link, share it anywhere. No accounts, no compression, no waiting. Up to '.htmlspecialchars($ev_max_size_label).' per transfer.'; ?>
        </p>

        <ul class="slvf-hero__chips slvf-reveal" data-d="350">
            <li><i class="lni lni-checkmark"></i> <?php echo lang('chip_no_account') ?: 'No account needed'; ?></li>
            <li><i class="lni lni-checkmark"></i> <?php echo lang('chip_resumable') ?: 'Resumable uploads'; ?></li>
            <li><i class="lni lni-checkmark"></i> <?php echo lang('chip_expires') ?: 'Auto-expires'; ?></li>
        </ul>
    </header>

    <!-- ========== Upload card ========== -->
    <div class="slvf-hero__card slvf-reveal" data-d="450">

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
                        <lord-icon
                                src="assets/themes/<?php echo $settings['theme'] ?>/mecwbjnp.json"
                                trigger="click"
                                colors="primary:<?php echo (!empty($settings['theme_color']) ? $settings['theme_color'] : '#3e8ed0'); ?>,secondary:<?php echo (!empty($settings['theme_color']) ? $settings['theme_color'] : '#3e8ed0'); ?>"
                                scale="100"
                                style="width:120px;height:120px;min-width:100%;">
                        </lord-icon>
                        <span class="description"><?php echo lang('lets_begin_files') ?></span>
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
            <lord-icon
                    src="assets/themes/<?php echo $settings['theme'] ?>/lupuorrc.json"
                    trigger="loop"
                    colors="primary:<?php echo (!empty($settings['theme_color']) ? $settings['theme_color'] : '#121331'); ?>,secondary:<?php echo (!empty($settings['theme_color_secondary']) ? $settings['theme_color_secondary'] : '#3e8ed0'); ?>"
                    style="width:180px;height:180px">
            </lord-icon>

            <div class="upload-finished-details">
                <h1><?php echo lang('success') ?></h1>

                <div class="upload-finished-message" id="link">
                    <p><?php echo lang('success_link') ?></p>
                    <input type="text" class="input is-normal" value="" readonly="readonly">
                </div>
                <div class="upload-finished-message" id="mail">
                    <p><?php echo lang('success_email') ?></p>
                </div>
            </div>

            <div class="button-block">
                <button class="button is-info is-rounded"><?php echo lang('copy_url') ?></button>
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

    <!-- ========== Stat strip below the card ========== -->
    <div class="slvf-hero__stats slvf-reveal" data-d="600">
        <div class="slvf-hero__stat">
            <span class="slvf-hero__stat-key"><?php echo lang('hero_meta_size') ?: 'Per transfer'; ?></span>
            <strong class="slvf-hero__stat-val"><?php echo htmlspecialchars($ev_max_size_label); ?></strong>
        </div>
        <div class="slvf-hero__stat">
            <span class="slvf-hero__stat-key"><?php echo lang('hero_meta_files') ?: 'Files at once'; ?></span>
            <strong class="slvf-hero__stat-val"><?php echo $ev_max_files > 0 ? number_format($ev_max_files) : '∞'; ?></strong>
        </div>
        <div class="slvf-hero__stat">
            <span class="slvf-hero__stat-key"><?php echo lang('hero_meta_account') ?: 'Account needed'; ?></span>
            <strong class="slvf-hero__stat-val"><?php echo lang('hero_meta_account_value') ?: 'None'; ?></strong>
        </div>
        <div class="slvf-hero__stat">
            <span class="slvf-hero__stat-key"><?php echo lang('hero_meta_cost') ?: 'Cost'; ?></span>
            <strong class="slvf-hero__stat-val"><?php echo lang('hero_meta_cost_value') ?: 'Free'; ?></strong>
        </div>
    </div>

    <!-- ========== Scroll cue ========== -->
    <a class="slvf-scroll-cue slvf-reveal" data-d="800" href="#how-it-works" aria-label="Scroll to learn more">
        <span><?php echo lang('hero_scroll') ?: 'How it works'; ?></span>
        <i class="lni lni-arrow-down"></i>
    </a>

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
                <div class="slvf-feature__icon"><i class="lni lni-film-play"></i></div>
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
                    echo '<a '.($tab['type'] == 'link' ? 'href="'.(strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content']).'" target="_blank"' : '') . ' data-target="tab-' . ($tab['type'] == 'terms_page' ? 'terms' : $key) . '">' . htmlspecialchars($tab['title']) . '</a>';
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