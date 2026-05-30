<?php
/**
 * SLVF — Standalone Privacy Policy page
 *
 * When the DB row (type = privacy_page) has body HTML, it renders that.
 * When no DB content exists, a full hardcoded Privacy Policy is shown.
 */

$ev_company = htmlspecialchars(isset($settings['site_name']) ? $settings['site_name'] : 'Share Large Video Files');
$ev_url     = htmlspecialchars(isset($settings['site_url']) ? $settings['site_url'] : base_url());
$has_content = isset($page_content) && trim((string) $page_content) !== '';

$ev_sections = array(
    array('id' => 'p-1',  'num' => '01', 'label' => 'Information We Collect'),
    array('id' => 'p-2',  'num' => '02', 'label' => 'How We Use Your Information'),
    array('id' => 'p-3',  'num' => '03', 'label' => 'File Transfers & Storage'),
    array('id' => 'p-4',  'num' => '04', 'label' => 'Cookies & Tracking'),
    array('id' => 'p-5',  'num' => '05', 'label' => 'Third-Party Services'),
    array('id' => 'p-6',  'num' => '06', 'label' => 'Data Retention'),
    array('id' => 'p-7',  'num' => '07', 'label' => 'Your Rights'),
    array('id' => 'p-8',  'num' => '08', 'label' => 'Data Security'),
    array('id' => 'p-9',  'num' => '09', 'label' => 'Children\'s Privacy'),
    array('id' => 'p-10', 'num' => '10', 'label' => 'Changes to This Policy'),
    array('id' => 'p-11', 'num' => '11', 'label' => 'Contact Us'),
);

$ev_h1 = isset($page_title) && $page_title !== '' ? htmlspecialchars($page_title) : 'Privacy Policy';
$ev_updated = date('F j, Y');
?>

<script>history.scrollRestoration='manual';</script>
<main class="slvf-page slvf-page--legal">

    <section class="slvf-page__hero slvf-page__hero--legal">
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tl" aria-hidden="true"></span>
        <span class="slvf-hero__scaffold slvf-hero__scaffold--tr" aria-hidden="true"></span>

        <span class="slvf-hero__eyebrow slvf-reveal" data-d="100">Legal</span>

        <h1 class="slvf-page__title slvf-reveal" data-d="200">
            <?php echo $ev_h1; ?>
        </h1>

        <p class="slvf-page__lead slvf-reveal" data-d="300">
            How <?php echo $ev_company; ?> collects, uses, and protects your information.
        </p>

        <p class="slvf-page__meta slvf-reveal" data-d="400">
            Last updated: <?php echo $ev_updated; ?>
        </p>
    </section>

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

            <?php if ($has_content): ?>
                <?php echo $page_content; ?>
            <?php else: ?>

            <!-- Section 1 -->
            <div class="slvf-legal-section" id="p-1">
                <span class="slvf-legal-section__num">01</span>
                <h2>Information We Collect</h2>
                <p>We collect information you provide directly to us when you use <?php echo $ev_company; ?>. This includes:</p>
                <ul>
                    <li><strong>Email address</strong> — when you register an account, sign in, or send/receive a transfer.</li>
                    <li><strong>Files you upload</strong> — the files and their metadata (name, size, type) that you transfer through our service.</li>
                    <li><strong>Transfer metadata</strong> — sender email, recipient emails, upload timestamps, expiry settings, and download activity.</li>
                    <li><strong>Log data</strong> — IP address, browser type, referring URL, and pages visited, collected automatically when you access the service.</li>
                </ul>
                <p>We do not collect payment information, and we do not require you to create an account to send or receive files.</p>
            </div>

            <!-- Section 2 -->
            <div class="slvf-legal-section" id="p-2">
                <span class="slvf-legal-section__num">02</span>
                <h2>How We Use Your Information</h2>
                <p>We use the information we collect to:</p>
                <ul>
                    <li>Deliver, maintain, and improve the file transfer service.</li>
                    <li>Send account, password-reset, and transfer notification emails.</li>
                    <li>Show you your transfer history when you're signed in.</li>
                    <li>Monitor and prevent abuse, fraud, and violations of our Terms of Service.</li>
                    <li>Comply with legal obligations.</li>
                </ul>
                <p>We do <strong>not</strong> sell your personal data to third parties or use it for targeted advertising.</p>
            </div>

            <!-- Section 3 -->
            <div class="slvf-legal-section" id="p-3">
                <span class="slvf-legal-section__num">03</span>
                <h2>File Transfers &amp; Storage</h2>
                <p>Files you upload are stored temporarily on our servers to facilitate transfers. Key points:</p>
                <ul>
                    <li>Files are automatically deleted after the expiry period you set (or our default retention window).</li>
                    <li>If you enable <em>immediate file destruction</em>, files are deleted as soon as the recipient downloads them.</li>
                    <li>We do not read, scan, or process the contents of your files except where required for security checks (e.g., malware scanning).</li>
                    <li>Files shared via link are accessible to anyone with the link during the retention period.</li>
                </ul>
                <p>You are responsible for ensuring you have the right to share any files you upload through our service.</p>
            </div>

            <!-- Section 4 -->
            <div class="slvf-legal-section" id="p-4">
                <span class="slvf-legal-section__num">04</span>
                <h2>Cookies &amp; Tracking</h2>
                <p>We use a small number of cookies that are strictly necessary to operate the service:</p>
                <ul>
                    <li><strong>Session cookie</strong> — keeps you signed in during your browser session.</li>
                    <li><strong>Terms acceptance cookie</strong> — remembers that you've accepted our terms so you're not shown the prompt repeatedly.</li>
                    <li><strong>Sender cookie</strong> — pre-fills your email address on the upload form for convenience.</li>
                </ul>
                <p>We do not use advertising cookies or third-party tracking pixels. If analytics are enabled on this installation, they are disclosed in the site's configuration.</p>
            </div>

            <!-- Section 5 -->
            <div class="slvf-legal-section" id="p-5">
                <span class="slvf-legal-section__num">05</span>
                <h2>Third-Party Services</h2>
                <p>We may use third-party services to help operate <?php echo $ev_company; ?>. These may include:</p>
                <ul>
                    <li><strong>Email providers</strong> — used to send account, password-reset, and transfer notification emails.</li>
                    <li><strong>Cloud storage providers</strong> — if the installation uses S3-compatible or similar remote storage for file uploads.</li>
                    <li><strong>Google reCAPTCHA</strong> — if enabled, used to prevent automated abuse of upload forms.</li>
                    <li><strong>Analytics services</strong> — if configured by the site administrator.</li>
                </ul>
                <p>These third parties have their own privacy policies and we encourage you to review them.</p>
            </div>

            <!-- Section 6 -->
            <div class="slvf-legal-section" id="p-6">
                <span class="slvf-legal-section__num">06</span>
                <h2>Data Retention</h2>
                <p>We retain different categories of data for different periods:</p>
                <ul>
                    <li><strong>Uploaded files</strong> — deleted automatically when the transfer expires or is manually deleted by the sender.</li>
                    <li><strong>Transfer records</strong> — metadata about transfers may be retained in logs for a limited period for security and abuse-prevention purposes.</li>
                    <li><strong>Account data</strong> — if you have a registered account, your email and account details are retained until you delete your account.</li>
                    <li><strong>Log data</strong> — server logs are retained for a limited time in accordance with our hosting provider's policies.</li>
                </ul>
            </div>

            <!-- Section 7 -->
            <div class="slvf-legal-section" id="p-7">
                <span class="slvf-legal-section__num">07</span>
                <h2>Your Rights</h2>
                <p>Depending on your location, you may have certain rights regarding your personal data, including:</p>
                <ul>
                    <li><strong>Access</strong> — request a copy of the personal data we hold about you.</li>
                    <li><strong>Correction</strong> — ask us to correct inaccurate or incomplete data.</li>
                    <li><strong>Deletion</strong> — request that we delete your personal data.</li>
                    <li><strong>Portability</strong> — receive your data in a structured, machine-readable format.</li>
                    <li><strong>Objection</strong> — object to certain types of processing.</li>
                </ul>
                <p>To exercise any of these rights, please contact us using the details in Section 11.</p>
            </div>

            <!-- Section 8 -->
            <div class="slvf-legal-section" id="p-8">
                <span class="slvf-legal-section__num">08</span>
                <h2>Data Security</h2>
                <p>We implement reasonable technical and organizational measures to protect your information against unauthorized access, loss, or misuse. These include:</p>
                <ul>
                    <li>HTTPS encryption for all data in transit.</li>
                    <li>Access controls limiting who can access stored files and databases.</li>
                    <li>Automatic deletion of expired files to minimize data retention.</li>
                    <li>Optional password protection for individual transfers.</li>
                </ul>
                <p>No method of transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security, but we strive to use commercially acceptable means to protect your data.</p>
            </div>

            <!-- Section 9 -->
            <div class="slvf-legal-section" id="p-9">
                <span class="slvf-legal-section__num">09</span>
                <h2>Children's Privacy</h2>
                <p><?php echo $ev_company; ?> is not directed to children under the age of 13. We do not knowingly collect personal information from children under 13. If you become aware that a child has provided us with personal information, please contact us and we will take steps to delete such information.</p>
            </div>

            <!-- Section 10 -->
            <div class="slvf-legal-section" id="p-10">
                <span class="slvf-legal-section__num">10</span>
                <h2>Changes to This Policy</h2>
                <p>We may update this Privacy Policy from time to time. When we do, we will update the "Last updated" date at the top of this page. We encourage you to review this policy periodically to stay informed about how we protect your information.</p>
                <p>Your continued use of <?php echo $ev_company; ?> after any changes take effect constitutes your acceptance of the revised policy.</p>
            </div>

            <!-- Section 11 -->
            <div class="slvf-legal-section" id="p-11">
                <span class="slvf-legal-section__num">11</span>
                <h2>Contact Us</h2>
                <p>If you have any questions about this Privacy Policy or how we handle your data, please contact us:</p>
                <ul>
                    <li><strong>Service:</strong> <?php echo $ev_company; ?></li>
                    <li><strong>Website:</strong> <a href="<?php echo $ev_url; ?>"><?php echo $ev_url; ?></a></li>
                </ul>
                <p>We will do our best to respond to your enquiry within 30 days.</p>
            </div>

            <?php endif; ?>

            <div class="slvf-legal__close">
                <p class="slvf-legal__close-meta">Thanks for reading our Privacy Policy.</p>
                <a class="slvf-btn slvf-btn--ghost" href="<?php echo $ev_url; ?>">
                    <i class="lni lni-arrow-left"></i>
                    <span>Back to send a transfer</span>
                </a>
            </div>

        </article>
    </section>

</main>

<footer class="slvf-footer slvf-footer--legal">
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


