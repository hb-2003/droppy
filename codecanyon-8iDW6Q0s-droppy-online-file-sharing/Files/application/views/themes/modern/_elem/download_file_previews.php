<?php
/**
 * File list on the download page (no inline image thumbnails).
 * Requires: $files, $settings
 */
if (empty($files) || !is_array($files)) {
    return;
}

$video_ext = array('mp4', 'mov', 'mkv', 'webm', 'm4v', 'avi', 'wmv');
?>
<div class="slvf-dl-preview" id="slvf-dl-preview">
    <div class="slvf-dl-preview__grid">
        <?php foreach ($files as $file):
            $file_url = $settings['site_url'] . 'handler/file?file_id=' . $file['id'] . '&file_secret=' . $file['secret_code'];
            $download_url = $file_url . '&download=true';
            $ext = strtolower(pathinfo($file['file'], PATHINFO_EXTENSION));
            $is_video = in_array($ext, $video_ext, true);
        ?>
        <article class="slvf-dl-preview-card">
            <div class="slvf-dl-preview-card__media">
                <?php if ($is_video): ?>
                    <button
                        type="button"
                        class="slvf-dl-preview-card__play"
                        data-video-url="<?php echo htmlspecialchars($file_url, ENT_QUOTES); ?>"
                        aria-label="<?php echo htmlspecialchars((lang('preview_files') ?: 'Preview') . ' ' . $file['file'], ENT_QUOTES); ?>"
                    >
                        <span class="slvf-dl-preview-card__play-icon" aria-hidden="true">
                            <svg width="28" height="28" viewBox="0 0 24 24" fill="currentColor"><path d="M8 5v14l11-7z"/></svg>
                        </span>
                        <span class="slvf-dl-preview-card__play-label"><?php echo strtoupper($ext ?: 'VIDEO'); ?></span>
                    </button>
                <?php else: ?>
                    <div class="slvf-dl-preview-card__icon" aria-hidden="true">
                        <svg width="36" height="36" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                            <polyline points="14 2 14 8 20 8"/>
                        </svg>
                        <?php if ($ext !== ''): ?>
                            <span class="slvf-dl-preview-card__ext"><?php echo strtoupper(htmlspecialchars($ext, ENT_QUOTES)); ?></span>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
            </div>
            <div class="slvf-dl-preview-card__meta">
                <span class="slvf-dl-preview-card__name" title="<?php echo htmlspecialchars($file['file'], ENT_QUOTES); ?>">
                    <?php echo htmlspecialchars($file['file']); ?>
                </span>
                <span class="slvf-dl-preview-card__size"><?php echo byte_format($file['size']); ?></span>
                <a class="slvf-dl-preview-card__download" href="<?php echo htmlspecialchars($download_url, ENT_QUOTES); ?>" download>
                    <?php echo lang('download') ?: 'Download'; ?>
                </a>
            </div>
        </article>
        <?php endforeach; ?>
    </div>
</div>
