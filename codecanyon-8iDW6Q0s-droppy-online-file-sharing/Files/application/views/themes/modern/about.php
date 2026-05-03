<?php
/**
 * SLVF — About page view
 * Renders inside the standard header/footer shell. Body content is editable
 * via the admin CMS (droppy_pages WHERE type='about_page'); falls back to a
 * built-in story block if the row is empty.
 */

$ev_max_size_mb    = isset($settings['max_size']) ? (int) $settings['max_size'] : 0;
$ev_max_size_label = $ev_max_size_mb >= 1024
                        ? round($ev_max_size_mb / 1024, $ev_max_size_mb % 1024 === 0 ? 0 : 1) . ' GB'
                        : $ev_max_size_mb . ' MB';
?>

<main class="slvf-page slvf-page--about">

    <!-- ========== Hero ========== -->
    <section class="slvf-page__hero">
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tl" aria-hidden="true"></span>
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tr" aria-hidden="true"></span>

        <span class="slvf-hero__eyebrow slvf-reveal" data-d="100">About</span>

        <h1 class="slvf-page__title slvf-reveal" data-d="200">
            We move heavy files.
            <em>So you can stay in flow.</em>
        </h1>

        <p class="slvf-page__lead slvf-reveal" data-d="300">
            <?php echo htmlspecialchars($settings['site_name']); ?> exists for the moment a video editor, a photographer, or a producer realises the file they need to send is too big for email. We built a tool that gets out of the way: drop, generate, share. No accounts to make, no apps to install, no compression eating your masters.
        </p>
    </section>

    <!-- ========== Numbers strip ========== -->
    <section class="slvf-numbers slvf-rise">
        <div class="slvf-number">
            <span class="slvf-number__key">Per transfer</span>
            <strong class="slvf-number__val"><?php echo htmlspecialchars($ev_max_size_label); ?></strong>
            <span class="slvf-number__sub">Free, no account needed.</span>
        </div>
        <div class="slvf-number">
            <span class="slvf-number__key">Auto-expiry</span>
            <strong class="slvf-number__val">7 days</strong>
            <span class="slvf-number__sub">Files self-destruct on schedule.</span>
        </div>
        <div class="slvf-number">
            <span class="slvf-number__key">Resumable</span>
            <strong class="slvf-number__val">100%</strong>
            <span class="slvf-number__sub">Wi-Fi drops, your upload doesn't.</span>
        </div>
        <div class="slvf-number">
            <span class="slvf-number__key">Direct to cloud</span>
            <strong class="slvf-number__val">0 hops</strong>
            <span class="slvf-number__sub">Streams straight from you to storage.</span>
        </div>
    </section>

    <?php if (!empty($page_content)): ?>
    <!-- ========== Story (CMS only — no hardcoded fallback) ========== -->
    <section class="slvf-story">
        <div class="slvf-story__head slvf-rise">
            <span class="slvf-section__eyebrow">Our story</span>
            <h2 class="slvf-section__title">Built by people who waited for renders.</h2>
        </div>

        <div class="slvf-story__body slvf-prose slvf-rise">
            <?php echo $page_content; ?>
        </div>
    </section>
    <?php endif; ?>

    <!-- ========== Values bento ========== -->
    <section class="slvf-section slvf-section--values">
        <span class="slvf-section__eyebrow slvf-rise">What we believe</span>
        <h2 class="slvf-section__title slvf-rise">
            Four <em>non-negotiables.</em>
        </h2>

        <div class="slvf-values">
            <article class="slvf-value slvf-value--wide slvf-rise">
                <span class="slvf-feature__tag"><i class="lni lni-video"></i> Video first</span>
                <div class="slvf-feature__icon"><i class="lni lni-film-play"></i></div>
                <h3 class="slvf-feature__title">Tuned for the heavy stuff.</h3>
                <p class="slvf-feature__desc">Most file-share tools were built for documents. We built ours for masters and rushes. Chunked uploads, parallel streams, no codec re-encoding, and previews that handle 4K on the download page.</p>
            </article>

            <article class="slvf-value slvf-rise">
                <div class="slvf-feature__icon"><i class="lni lni-lock-alt"></i></div>
                <h3 class="slvf-feature__title">Privacy by default.</h3>
                <p class="slvf-feature__desc">Files auto-expire. Links can be password-protected. We don't read what you send.</p>
            </article>

            <article class="slvf-value slvf-rise">
                <div class="slvf-feature__icon"><i class="lni lni-bolt"></i></div>
                <h3 class="slvf-feature__title">No friction.</h3>
                <p class="slvf-feature__desc">No account. No app. No tutorial. If you need a manual to send a file, the tool failed.</p>
            </article>

            <article class="slvf-value slvf-rise">
                <div class="slvf-feature__icon"><i class="lni lni-cloud-upload"></i></div>
                <h3 class="slvf-feature__title">Direct to the cloud.</h3>
                <p class="slvf-feature__desc">Your upload streams straight to storage &mdash; no slow middle hop through our server.</p>
            </article>

            <article class="slvf-value slvf-rise">
                <div class="slvf-feature__icon"><i class="lni lni-eye"></i></div>
                <h3 class="slvf-feature__title">Recipients first.</h3>
                <p class="slvf-feature__desc">Whoever you send to gets a clean download page with previews &mdash; not a sign-up wall.</p>
            </article>
        </div>
    </section>

    <!-- ========== Final CTA ========== -->
    <section class="slvf-cta slvf-rise">
        <div class="slvf-cta__inner">
            <h2 class="slvf-cta__title">
                Ready to send something <em>heavy?</em>
            </h2>
            <p class="slvf-cta__sub">No sign-up. Free up to <?php echo htmlspecialchars($ev_max_size_label); ?>. Your first transfer takes about a minute.</p>
            <a class="slvf-btn slvf-btn--primary slvf-btn--lg" href="<?php echo htmlspecialchars(isset($settings['site_url']) ? $settings['site_url'] : base_url()); ?>">
                <span>Send your first transfer</span>
                <i class="lni lni-arrow-right"></i>
            </a>
        </div>
    </section>

</main>
