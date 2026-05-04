<?php
/**
 * SLVF — Download page (Cinematic Studio redesign).
 * All original JS hooks (IDs / form actions) are preserved exactly.
 */
?>

<main class="slvf-dl-shell">
    <div class="slvf-dl-card">

        <?php if (isset($data) && is_array($data)): ?>

            <?php if ($data['status'] == 'ready'): ?>

                <!-- ════════════════════════════════════════
                     STATE 1 — Download ready / password gate
                     ════════════════════════════════════════ -->
                <div id="download-form"
                     class="slvf-dl-state slvf-dl-state--ready <?php echo (($data['password'] != 'EMPTY' && !empty($data['password']) && $this->session->userdata('download_password') != $upload_id) ? 'slvf-dl-state--locked' : ''); ?>">

                    <form action="handler/<?php echo (($data['password'] != 'EMPTY' && !empty($data['password']) && $this->session->userdata('download_password') != $upload_id) ? 'password' : 'download'); ?>" method="get">
                        <input type="hidden" name="action"      id="action"      value="download">
                        <input type="hidden" name="download_id" id="download_id" value="<?php echo $upload_id; ?>">
                        <input type="hidden" name="private_id"  id="private_id"  value="<?php echo $unique_id; ?>">
                        <input type="hidden" name="url"                           value="<?php echo urlencode(current_url()); ?>">

                        <?php if ($data['password'] != 'EMPTY' && !empty($data['password']) && $this->session->userdata('download_password') != $upload_id): ?>

                            <!-- ── Password gate ── -->
                            <div class="slvf-dl-hero">
                                <div class="slvf-dl-hero__icon slvf-dl-hero__icon--lock">
                                    <svg width="36" height="36" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                                        <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                    </svg>
                                </div>
                                <h1 class="slvf-dl-hero__title"><?php echo lang('fill_password') ?: 'This transfer is password-protected'; ?></h1>
                                <p class="slvf-dl-hero__sub">Enter the password to access your files.</p>
                            </div>

                            <div class="slvf-dl-password-field">
                                <input class="slvf-dl-input" type="password" name="password"
                                       placeholder="<?php echo lang('password') ?: 'Password'; ?>"
                                       autocomplete="off">
                            </div>

                            <div class="slvf-dl-actions">
                                <button class="slvf-btn slvf-btn--primary slvf-btn--full" type="submit">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
                                    <?php echo lang('unlock_download') ?: 'Unlock'; ?>
                                </button>
                            </div>

                        <?php else: ?>

                            <!-- ── Ready to download ── -->
                            <div class="slvf-dl-hero">
                                <div class="slvf-dl-hero__icon slvf-dl-hero__icon--ready">
                                    <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="8 17 12 21 16 17"/>
                                        <line x1="12" y1="12" x2="12" y2="21"/>
                                        <path d="M20.88 18.09A5 5 0 0 0 18 9h-1.26A8 8 0 1 0 3 16.29"/>
                                    </svg>
                                </div>
                                <h1 class="slvf-dl-hero__title"><?php echo lang('download_is_ready') ?: 'Your download is ready'; ?></h1>
                                <?php if ($data['time_expire'] > $data['time']): ?>
                                    <p class="slvf-dl-hero__expiry">
                                        <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                                        <?php echo lang('download_will_be_deleted') ?: 'Expires'; ?> <?php echo date($settings['date_format'], $data['time_expire']); ?>
                                    </p>
                                <?php endif; ?>
                            </div>

                            <!-- Message -->
                            <?php if (!empty($data['message'])): ?>
                                <div class="slvf-dl-message"><?php echo htmlspecialchars($data['message']); ?></div>
                            <?php endif; ?>

                            <!-- File list -->
                            <div class="slvf-dl-files" id="selected-files">
                                <div class="slvf-dl-files__header">
                                    <span class="slvf-dl-files__stat">
                                        <strong><?php echo $data['count']; ?></strong>
                                        <?php echo strtoupper(lang('files') ?: 'FILES'); ?>
                                    </span>
                                    <span class="slvf-dl-files__divider"></span>
                                    <span class="slvf-dl-files__stat">
                                        <strong><?php echo byte_format($data['size']); ?></strong>
                                        <?php echo strtoupper(lang('total_size') ?: 'TOTAL SIZE'); ?>
                                    </span>
                                    <?php if ($data['file_previews'] == 'true'): ?>
                                        <a href="#" class="slvf-dl-files__preview-link"
                                           onclick="Tabs.open('tab-files');return false;">
                                            <?php echo lang('preview_files') ?: 'Preview'; ?>
                                        </a>
                                    <?php endif; ?>
                                </div>

                                <?php if ($data['file_previews'] != 'true'): ?>
                                    <ul class="slvf-dl-files__list">
                                        <?php foreach ($files as $file): ?>
                                            <li class="slvf-dl-files__item">
                                                <span class="slvf-dl-files__item-icon" aria-hidden="true">
                                                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
                                                </span>
                                                <span class="slvf-dl-files__item-name"><?php echo htmlspecialchars($file['file']); ?></span>
                                                <span class="slvf-dl-files__item-size"><?php echo byte_format($file['size']); ?></span>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                <?php endif; ?>
                            </div>

                            <!-- CTA buttons -->
                            <div class="slvf-dl-actions">
                                <?php if ($settings['download_report'] == 'true'): ?>
                                    <button class="slvf-btn slvf-btn--ghost slvf-dl-report-btn" id="report-button" type="button" title="<?php echo lang('report') ?: 'Report'; ?>">
                                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z"/><line x1="4" y1="22" x2="4" y2="15"/></svg>
                                    </button>
                                <?php endif; ?>
                                <button class="slvf-btn slvf-btn--primary slvf-btn--full" type="submit">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><polyline points="8 17 12 21 16 17"/><line x1="12" y1="12" x2="12" y2="21"/><path d="M20.88 18.09A5 5 0 0 0 18 9h-1.26A8 8 0 1 0 3 16.29"/></svg>
                                    <?php echo lang('download') ?: 'Download'; ?>
                                </button>
                            </div>

                        <?php endif; ?>
                    </form>
                </div><!-- /#download-form -->


                <!-- ════════════════════════════════════════
                     STATE 2 — Download started
                     ════════════════════════════════════════ -->
                <div id="download-started" class="slvf-dl-state slvf-dl-state--started">
                    <div class="slvf-dl-hero">
                        <div class="slvf-dl-hero__icon slvf-dl-hero__icon--success">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="20 6 9 17 4 12"/>
                            </svg>
                        </div>
                        <h1 class="slvf-dl-hero__title"><?php echo lang('download_started') ?: 'Download started!'; ?></h1>
                        <p class="slvf-dl-hero__sub">Your file is on its way.</p>
                    </div>
                    <div class="slvf-dl-actions">
                        <?php if ($data['destruct'] != 'yes'): ?>
                            <button class="slvf-btn slvf-btn--ghost" id="back-button" type="button">
                                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round"><polyline points="15 18 9 12 15 6"/></svg>
                                Back
                            </button>
                        <?php endif; ?>
                        <?php if ($settings['lock_page'] == 'upload'): ?>
                            <button class="slvf-btn slvf-btn--primary" id="done-button" onclick="window.location.reload();" disabled><?php echo lang('ok') ?: 'OK'; ?></button>
                        <?php else: ?>
                            <button class="slvf-btn slvf-btn--primary" id="done-button" onclick="window.location.href = siteUrl;" disabled><?php echo lang('ok') ?: 'OK'; ?></button>
                        <?php endif; ?>
                    </div>
                </div><!-- /#download-started -->


            <?php elseif ($data['status'] == 'processing'): ?>

                <!-- ════════════════════════════════════════
                     STATE — Processing
                     ════════════════════════════════════════ -->
                <div class="slvf-dl-state slvf-dl-state--processing">
                    <div class="slvf-dl-hero">
                        <div class="slvf-dl-hero__icon slvf-dl-hero__icon--pulse">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/>
                            </svg>
                        </div>
                        <h1 class="slvf-dl-hero__title"><?php echo lang('upload_processing') ?: 'Processing…'; ?></h1>
                        <p class="slvf-dl-hero__sub">The files are still being prepared. Check back in a moment.</p>
                    </div>
                    <div class="slvf-dl-actions">
                        <button class="slvf-btn slvf-btn--primary" onclick="location.reload();">
                            <?php echo lang('refresh') ?: 'Refresh'; ?>
                        </button>
                    </div>
                </div>

            <?php else: ?>

                <!-- ════════════════════════════════════════
                     STATE — Not found / destroyed
                     ════════════════════════════════════════ -->
                <div class="slvf-dl-state slvf-dl-state--notfound">
                    <div class="slvf-dl-hero">
                        <div class="slvf-dl-hero__icon slvf-dl-hero__icon--error">
                            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="12" r="10"/>
                                <line x1="15" y1="9" x2="9" y2="15"/>
                                <line x1="9" y1="9" x2="15" y2="15"/>
                            </svg>
                        </div>
                        <h1 class="slvf-dl-hero__title"><?php echo lang('upload_not_found') ?: 'Transfer not found'; ?></h1>
                        <p class="slvf-dl-hero__sub">This link may have expired or been deleted.</p>
                    </div>
                    <div class="slvf-dl-actions">
                        <button class="slvf-btn slvf-btn--primary" onclick="window.location.href = siteUrl;">
                            <?php echo lang('ok') ?: 'Go home'; ?>
                        </button>
                    </div>
                </div>

            <?php endif; ?>

        <?php else: ?>

            <!-- ════════════════════════════════════════
                 STATE — No data (404 / bad ID)
                 ════════════════════════════════════════ -->
            <div class="slvf-dl-state slvf-dl-state--notfound">
                <div class="slvf-dl-hero">
                    <div class="slvf-dl-hero__icon slvf-dl-hero__icon--error">
                        <svg width="38" height="38" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"/>
                            <line x1="15" y1="9" x2="9" y2="15"/>
                            <line x1="9" y1="9" x2="15" y2="15"/>
                        </svg>
                    </div>
                    <h1 class="slvf-dl-hero__title"><?php echo lang('upload_not_found') ?: 'Transfer not found'; ?></h1>
                    <p class="slvf-dl-hero__sub">This link may have expired or been deleted.</p>
                </div>
                <div class="slvf-dl-actions">
                    <button class="slvf-btn slvf-btn--primary" onclick="window.location.href = siteUrl;">
                        <?php echo lang('ok') ?: 'Go home'; ?>
                    </button>
                </div>
            </div>

        <?php endif; ?>

    </div><!-- /.slvf-dl-card -->

    <!-- Legacy tooltip block — kept for JS error/help popups -->
    <div class="upload-block-tooltip" style="display:none">
        <div class="content error"><p></p></div>
        <div class="content help"><p></p></div>
    </div>
</main>

<?php
if (isset($_GET['error'])) {
    echo '<script>$(document).ready(function() { General.errorMsg("' . lang($_GET['error']) . '"); setTimeout(function() { General.clearError(); }, 3000) });</script>';
}
?>
