<?php
/**
 * SLVF — Standalone Terms of Service / Legal page
 *
 * All legal body copy comes from droppy_pages (type = terms_page) only.
 * When the row has no body HTML, the page shows the title + a home link only.
 *
 * Optional TOC + scroll-spy: when content is present, the sidebar lists the
 * standard 15 SaaS section anchors (id="s-1" … "s-15") expected from the seed.
 */

$ev_company = htmlspecialchars(isset($settings['site_name']) ? $settings['site_name'] : 'Share Large Video Files');
$ev_url     = htmlspecialchars(isset($settings['site_url']) ? $settings['site_url'] : base_url());
$has_terms  = isset($page_content) && trim((string) $page_content) !== '';

$ev_sections = array(
    array('id' => 's-1',  'num' => '01', 'label' => 'Acceptance of Terms'),
    array('id' => 's-2',  'num' => '02', 'label' => 'Description of Service'),
    array('id' => 's-3',  'num' => '03', 'label' => 'Eligibility'),
    array('id' => 's-4',  'num' => '04', 'label' => 'Account & Passwordless Access'),
    array('id' => 's-5',  'num' => '05', 'label' => 'Your Content (uploaded files)'),
    array('id' => 's-6',  'num' => '06', 'label' => 'Acceptable Use'),
    array('id' => 's-7',  'num' => '07', 'label' => 'File Retention & Auto-Deletion'),
    array('id' => 's-8',  'num' => '08', 'label' => 'Privacy'),
    array('id' => 's-9',  'num' => '09', 'label' => 'Our Intellectual Property'),
    array('id' => 's-10', 'num' => '10', 'label' => 'Disclaimers'),
    array('id' => 's-11', 'num' => '11', 'label' => 'Limitation of Liability'),
    array('id' => 's-12', 'num' => '12', 'label' => 'Indemnification'),
    array('id' => 's-13', 'num' => '13', 'label' => 'Termination'),
    array('id' => 's-14', 'num' => '14', 'label' => 'Changes to the Service or Terms'),
    array('id' => 's-15', 'num' => '15', 'label' => 'Governing Law & Contact'),
);

$ev_h1 = isset($page_title) && $page_title !== '' ? htmlspecialchars($page_title) : 'Terms of service';
?>

<main class="slvf-page slvf-page--legal">

    <section class="slvf-page__hero slvf-page__hero--legal">
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tl" aria-hidden="true"></span>
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tr" aria-hidden="true"></span>

        <span class="slvf-hero__eyebrow slvf-reveal" data-d="100">Legal</span>

        <h1 class="slvf-page__title slvf-reveal" data-d="200">
            <?php echo $ev_h1; ?>
        </h1>

        <?php if ($has_terms): ?>
        <p class="slvf-page__lead slvf-reveal" data-d="300">
            Legal terms for using <?php echo $ev_company; ?>.
        </p>
        <?php endif; ?>
    </section>

    <?php if ($has_terms): ?>
    <section class="slvf-legal">

        <aside class="slvf-toc" aria-label="Table of contents">
            <div class="slvf-toc__sticky">
                <span class="slvf-toc__label">On this page</span>
                <nav class="slvf-toc__nav" id="slvf-legal-toc">
                    <?php foreach ($ev_sections as $i => $sec): ?>
                        <a class="slvf-toc__link<?php echo $i === 0 ? ' is-active' : ''; ?>" href="#<?php echo $sec['id']; ?>">
                            <span class="slvf-toc__num"><?php echo $sec['num']; ?></span>
                            <span class="slvf-toc__text"><?php echo htmlspecialchars($sec['label']); ?></span>
                        </a>
                    <?php endforeach; ?>
                </nav>
            </div>
        </aside>

        <article class="slvf-legal__body slvf-prose">
            <?php echo $page_content; ?>

            <div class="slvf-legal__close">
                <p class="slvf-legal__close-meta">You read it all. We appreciate that.</p>
                <a class="slvf-btn slvf-btn--ghost" href="<?php echo $ev_url; ?>">
                    <i class="lni lni-arrow-left"></i>
                    <span>Back to send a transfer</span>
                </a>
            </div>
        </article>
    </section>
    <?php else: ?>
    <section class="slvf-legal slvf-legal--empty" aria-label="Terms">
        <div class="slvf-page-empty">
            <a class="slvf-btn slvf-btn--outline" href="<?php echo $ev_url; ?>">Back to home</a>
        </div>
    </section>
    <?php endif; ?>

</main>
