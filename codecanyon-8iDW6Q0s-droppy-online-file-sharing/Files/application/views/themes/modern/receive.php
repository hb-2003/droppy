<?php
$site_url = rtrim($settings['site_url'], '/');
?>
<main class="slvf-page slvf-page--receive">
    <section class="slvf-page__hero slvf-page__hero--sm">
        <div class="slvf-page__hero-inner">
            <h1 class="slvf-page__title"><?php echo lang('receive_title') ?: 'Receive files'; ?></h1>
            <p class="slvf-page__sub"><?php echo lang('receive_subtitle') ?: 'Paste a transfer link or ID to download shared files.'; ?></p>
        </div>
    </section>

    <section class="slvf-receive">
        <div class="slvf-receive__inner slvf-receive__card">
            <div class="slvf-receive__field">
                <label class="slvf-label" for="slvf-receive-input"><?php echo lang('receive_link_label') ?: 'Transfer link or ID'; ?></label>
                <input class="slvf-input" type="text" id="slvf-receive-input"
                    placeholder="<?php echo lang('receive_link_placeholder') ?: 'https://… or upload ID'; ?>"
                    value="<?php echo !empty($prefill_id) ? htmlspecialchars($prefill_id . (!empty($prefill_pid) ? '/' . $prefill_pid : '')) : ''; ?>">
            </div>
            <div class="slvf-receive__field">
                <label class="slvf-label" for="slvf-receive-pid"><?php echo lang('receive_private_id') ?: 'Private ID (optional)'; ?></label>
                <input class="slvf-input" type="text" id="slvf-receive-pid"
                    placeholder="<?php echo lang('receive_private_placeholder') ?: 'For email shares'; ?>"
                    value="<?php echo !empty($prefill_pid) ? htmlspecialchars($prefill_pid) : ''; ?>">
            </div>
            <div class="slvf-receive__actions">
                <button type="button" class="slvf-btn slvf-btn--primary slvf-btn--lg slvf-btn--full" id="slvf-receive-load">
                    <i class="lni lni-download"></i>
                    <span><?php echo lang('receive_load') ?: 'Load transfer'; ?></span>
                </button>
                <button type="button" class="slvf-btn slvf-btn--ghost slvf-btn--lg slvf-btn--full" id="slvf-receive-scan">
                    <i class="lni lni-camera"></i>
                    <span><?php echo lang('receive_scan_qr') ?: 'Scan QR code'; ?></span>
                </button>
            </div>
            <p class="slvf-receive__error" id="slvf-receive-error" role="alert"></p>
        </div>

        <div class="slvf-receive__steps">
            <h2 class="slvf-receive__steps-title"><?php echo lang('how_to_receive') ?: 'How to receive'; ?></h2>
            <ol class="slvf-receive__step-list">
                <li>
                    <strong><?php echo lang('receive_step_1_title') ?: 'Get the link'; ?></strong>
                    <span><?php echo lang('receive_step_1_body') ?: 'Ask the sender for their share link or QR code.'; ?></span>
                </li>
                <li>
                    <strong><?php echo lang('receive_step_2_title') ?: 'Paste or scan'; ?></strong>
                    <span><?php echo lang('receive_step_2_body') ?: 'Enter the link above or scan the QR code.'; ?></span>
                </li>
                <li>
                    <strong><?php echo lang('receive_step_3_title') ?: 'Download'; ?></strong>
                    <span><?php echo lang('receive_step_3_body') ?: 'Unlock with a password if needed, then download your files.'; ?></span>
                </li>
            </ol>
        </div>
    </section>
</main>

<footer class="slvf-footer">
    <div class="slvf-footer__inner">
        <div class="slvf-footer__brand"><?php echo htmlspecialchars($settings['site_name']); ?></div>
        <nav class="slvf-footer__links">
            <?php
            $has_terms_in_pages = false;
            if(is_array($extra_pages) && !empty($extra_pages)) {
                foreach ($extra_pages AS $key => $tab) {
                    if ($tab['type'] === 'about_page') {
                        echo '<a href="' . base_url('about') . '">' . htmlspecialchars($tab['title']) . '</a>';
                    } elseif ($tab['type'] === 'terms_page') {
                        $has_terms_in_pages = true;
                        echo '<a href="' . base_url('terms') . '">' . htmlspecialchars($tab['title']) . '</a>';
                    } elseif ($tab['type'] === 'link') {
                        $href = strpos($tab['content'], 'http') === false ? base_url($tab['content']) : $tab['content'];
                        echo '<a href="' . $href . '" target="_blank">' . htmlspecialchars($tab['title']) . '</a>';
                    } else {
                        echo '<a href="' . base_url('page/' . rawurlencode($tab['title'])) . '">' . htmlspecialchars($tab['title']) . '</a>';
                    }
                }
            }
            if (!$has_terms_in_pages): ?>
            <a href="<?php echo base_url('terms'); ?>">Terms of service</a>
            <?php endif; ?>
            <a href="<?php echo base_url('privacy'); ?>">Privacy policy</a>
            <?php if($settings['contact_enabled'] == 'true'): ?>
            <a data-target="tab-contact"><?php echo lang('contact'); ?></a>
            <?php endif; ?>
        </nav>
        <div class="slvf-footer__copy">© <?php echo date('Y'); ?> · <?php echo htmlspecialchars($settings['site_name']); ?></div>
    </div>
</footer>

<!-- QR scanner modal -->
<div class="slvf-qr-overlay" id="slvf-qr-overlay" aria-hidden="true">
    <div class="slvf-qr-modal" role="dialog" aria-modal="true" aria-labelledby="slvf-qr-title">
        <button type="button" class="slvf-qr-modal__close" id="slvf-qr-close" aria-label="Close">
            <i class="lni lni-close"></i>
        </button>
        <h2 id="slvf-qr-title" class="slvf-qr-modal__title"><?php echo lang('receive_scan_qr') ?: 'Scan QR code'; ?></h2>
        <div id="slvf-qr-reader" class="slvf-qr-modal__reader"></div>
        <p class="slvf-qr-modal__hint"><?php echo lang('receive_scan_hint') ?: 'Point your camera at the transfer QR code.'; ?></p>
    </div>
</div>
