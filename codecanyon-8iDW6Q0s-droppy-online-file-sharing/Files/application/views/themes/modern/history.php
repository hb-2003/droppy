<?php
/**
 * SLVF — Transfer History page.
 * Shows all uploads linked to the OTP-verified email in session.
 * If not signed in, shows a prompt to authenticate via the OTP modal.
 */
$site_url  = rtrim($settings['site_url'], '/');
$theme_url = $site_url . '/assets/themes/' . $settings['theme'];
?>

<main class="slvf-page slvf-page--history">

    <!-- ========== Page header ========== -->
    <section class="slvf-page__hero slvf-page__hero--sm">
        <div class="slvf-page__hero-inner">
            <h1 class="slvf-page__title">Transfer History</h1>
            <?php if (!empty($otp_email)): ?>
                <p class="slvf-page__sub">Transfers sent from <strong><?php echo htmlspecialchars($otp_email); ?></strong></p>
            <?php else: ?>
                <p class="slvf-page__sub">Sign in to view your past transfers.</p>
            <?php endif; ?>
        </div>
    </section>

    <!-- ========== Content ========== -->
    <section class="slvf-history">
        <div class="slvf-history__inner">

            <div id="slvf-guest-history-section" class="slvf-history__guest-section" style="display:none;">
                <h2 class="slvf-history__guest-title"><?php echo lang('guest_history_title') ?: 'Recent transfers on this device'; ?></h2>
                <div class="slvf-history__list" id="slvf-guest-history-list"></div>
            </div>

            <?php if (empty($otp_email)): ?>
            <!-- ── Not signed in ── -->
            <div class="slvf-history__empty slvf-history__empty--auth" id="slvf-history-auth-empty">
                <div class="slvf-history__empty-icon">
                    <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                        <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                    </svg>
                </div>
                <h2 class="slvf-history__empty-title">Sign in to see your transfers</h2>
                <p class="slvf-history__empty-sub">Sign in with your account to view transfers linked to your email.</p>
                <button type="button" class="slvf-btn slvf-btn--primary slvf-history__signin-btn" id="slvf-history-signin">
                    <?php echo lang('sign_in_otp') ?: 'Sign in with email'; ?>
                </button>
                <a class="slvf-btn slvf-btn--ghost slvf-btn--sm" href="<?php echo base_url('login'); ?>" style="margin-top:12px;display:inline-flex;">
                    <?php echo lang('login') ?: 'Password sign in'; ?>
                </a>
            </div>

            <?php elseif (empty($uploads)): ?>
            <!-- ── Signed in but no transfers ── -->
            <div class="slvf-history__empty">
                <div class="slvf-history__empty-icon">
                    <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                        <polyline points="22 12 16 12 14 15 10 15 8 12 2 12"/>
                        <path d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z"/>
                    </svg>
                </div>
                <h2 class="slvf-history__empty-title">No transfers yet</h2>
                <p class="slvf-history__empty-sub">Once you send a file, it will appear here.</p>
                <a class="slvf-btn slvf-btn--primary" href="<?php echo $site_url; ?>">Send a file</a>
            </div>

            <?php else: ?>
            <!-- ── Transfer list ── -->
            <div class="slvf-history__list">
                <?php foreach ($uploads as $upload):
                    $files      = is_array($upload['files']) ? $upload['files'] : [];
                    $file_count = count($files);
                    $first_file = $file_count > 0 ? $files[0] : null;
                    $label      = $first_file
                                    ? (strlen(basename($first_file['original_path'])) > 36
                                        ? substr(basename($first_file['original_path']), 0, 33) . '…'
                                        : basename($first_file['original_path']))
                                    : 'Transfer';
                    if ($file_count > 1) $label .= ' +' . ($file_count - 1) . ' more';

                    // Format size
                    $bytes = (int) $upload['size'];
                    if ($bytes >= 1073741824)      $size_label = round($bytes / 1073741824, 1) . ' GB';
                    elseif ($bytes >= 1048576)     $size_label = round($bytes / 1048576, 1) . ' MB';
                    elseif ($bytes >= 1024)        $size_label = round($bytes / 1024, 0) . ' KB';
                    else                           $size_label = $bytes . ' B';

                    // Expiry
                    $expired   = $upload['time_expire'] > 0 && $upload['time_expire'] < time();
                    $expire_ts = $upload['time_expire'];
                    if ($expire_ts <= 0)           $expire_label = 'No expiry';
                    elseif ($expired)              $expire_label = 'Expired';
                    else                           $expire_label = 'Expires ' . date('M j, Y', $expire_ts);

                    $access_token = '';
                    if (($upload['share'] ?? '') === 'mail' && !empty($upload['secret_code'])) {
                        $access_token = $upload['secret_code'];
                    }
                    $transfer_url = droppy_share_url($settings['site_url'], $upload['upload_id'], $access_token);
                    $not_ready = (($upload['status'] ?? '') !== 'ready');
                ?>
                <div class="slvf-history__item <?php echo $expired ? 'slvf-history__item--expired' : ''; ?><?php echo $not_ready ? ' slvf-history__item--pending' : ''; ?>"
                     data-upload-id="<?php echo htmlspecialchars($upload['upload_id']); ?>"
                     data-url="<?php echo htmlspecialchars($transfer_url); ?>"
                     data-private-id="<?php echo htmlspecialchars($access_token); ?>"
                     data-expired="<?php echo $expired ? '1' : '0'; ?>"
                     data-not-ready="<?php echo $not_ready ? '1' : '0'; ?>"
                     role="button" tabindex="0">

                    <!-- Icon -->
                    <div class="slvf-history__item-icon" aria-hidden="true">
                        <?php if ($expired): ?>
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="15" y1="9" x2="9" y2="15"/><line x1="9" y1="9" x2="15" y2="15"/></svg>
                        <?php else: ?>
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
                        <?php endif; ?>
                    </div>

                    <!-- Info -->
                    <div class="slvf-history__item-info">
                        <span class="slvf-history__item-name"><?php echo htmlspecialchars($label); ?></span>
                        <span class="slvf-history__item-meta">
                            <?php echo $size_label; ?> &middot;
                            <?php echo date('M j, Y', $upload['time']); ?> &middot;
                            <span class="<?php echo $expired ? 'slvf-history__item-expired' : 'slvf-history__item-expiry'; ?>"><?php echo $expire_label; ?></span>
                        </span>
                    </div>

                    <!-- Actions -->
                    <div class="slvf-history__item-actions">
                        <?php if ($not_ready): ?>
                        <span class="slvf-history__badge slvf-history__badge--pending">Processing</span>
                        <?php elseif (!$expired): ?>
                        <button class="slvf-history__copy-btn slvf-btn slvf-btn--ghost slvf-btn--sm"
                                data-url="<?php echo htmlspecialchars($transfer_url); ?>"
                                title="Copy link">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="9" y="9" width="13" height="13" rx="2" ry="2"/><path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"/></svg>
                            Copy
                        </button>
                        <a class="slvf-btn slvf-btn--ghost slvf-btn--sm" href="<?php echo htmlspecialchars($transfer_url); ?>" target="_blank" title="Open transfer">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/><polyline points="15 3 21 3 21 9"/><line x1="10" y1="14" x2="21" y2="3"/></svg>
                            Open
                        </a>
                        <?php else: ?>
                        <span class="slvf-history__badge slvf-history__badge--expired">Expired</span>
                        <?php endif; ?>
                    </div>

                </div>
                <?php endforeach; ?>
            </div><!-- /.slvf-history__list -->

            <?php endif; ?>

        </div><!-- /.slvf-history__inner -->
    </section>

</main>

<script>
(function () {
    // Copy link buttons on history page
    document.querySelectorAll('.slvf-history__copy-btn').forEach(function (btn) {
        btn.addEventListener('click', function () {
            var url = btn.getAttribute('data-url');
            if (!url) return;
            if (navigator.clipboard && navigator.clipboard.writeText) {
                navigator.clipboard.writeText(url).then(function () { flash(btn); });
            } else {
                var ta = document.createElement('textarea');
                ta.value = url;
                ta.style.cssText = 'position:fixed;opacity:0';
                document.body.appendChild(ta);
                ta.select();
                document.execCommand('copy');
                document.body.removeChild(ta);
                flash(btn);
            }
        });
    });

    function flash(btn) {
        var orig = btn.innerHTML;
        btn.innerHTML = '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="20 6 9 17 4 12"/></svg> Copied!';
        btn.style.color = 'var(--slvf-accent)';
        setTimeout(function () { btn.innerHTML = orig; btn.style.color = ''; }, 2000);
    }

    // Sign-in button triggers the OTP modal
    var signinBtn = document.getElementById('slvf-history-signin');
    if (signinBtn) {
        signinBtn.addEventListener('click', function () {
            if (typeof OtpModal !== 'undefined') {
                OtpModal.open();
            } else {
                var overlay = document.getElementById('slvf-otp-overlay');
                if (overlay) overlay.classList.add('is-open');
            }
        });
    }
})();
</script>
