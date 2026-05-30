<?php
/**
 * SLVF — Standalone Terms of Service / Legal page
 *
 * When the DB row (type = terms_page) has body HTML, it renders that.
 * When no DB content exists, a full hardcoded Terms of Service is shown.
 *
 * TOC sidebar lists 15 standard SaaS section anchors (id="s-1" … "s-15").
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

$ev_h1      = isset($page_title) && $page_title !== '' ? htmlspecialchars($page_title) : 'Terms of service';
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
            Legal terms for using <?php echo $ev_company; ?>.
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

            <?php if ($has_terms): ?>
                <?php echo $page_content; ?>
            <?php else: ?>

            <!-- Section 1 -->
            <div class="slvf-legal-section" id="s-1">
                <span class="slvf-legal-section__num">01</span>
                <h2>Acceptance of Terms</h2>
                <p>By accessing or using <?php echo $ev_company; ?> (the "Service"), you agree to be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not use the Service.</p>
                <p>These Terms apply to all visitors, users, and others who access or use the Service. We reserve the right to update these Terms at any time. Your continued use of the Service after any changes constitutes your acceptance of the new Terms.</p>
            </div>

            <!-- Section 2 -->
            <div class="slvf-legal-section" id="s-2">
                <span class="slvf-legal-section__num">02</span>
                <h2>Description of Service</h2>
                <p><?php echo $ev_company; ?> is an online file transfer service that allows users to upload files and share them with others via a link or by email. Key features include:</p>
                <ul>
                    <li>Uploading files and generating shareable download links.</li>
                    <li>Sending transfers directly to one or more email recipients.</li>
                    <li>Setting custom expiry periods and automatic file deletion.</li>
                    <li>Optional password protection for transfers.</li>
                    <li>Transfer history for signed-in users.</li>
                </ul>
                <p>The Service is provided "as is" and we reserve the right to modify, suspend, or discontinue any aspect of it at any time.</p>
            </div>

            <!-- Section 3 -->
            <div class="slvf-legal-section" id="s-3">
                <span class="slvf-legal-section__num">03</span>
                <h2>Eligibility</h2>
                <p>You must be at least 13 years of age to use this Service. By using the Service, you represent and warrant that you meet this age requirement. If you are using the Service on behalf of an organization, you represent that you have the authority to bind that organization to these Terms.</p>
            </div>

            <!-- Section 4 -->
            <div class="slvf-legal-section" id="s-4">
                <span class="slvf-legal-section__num">04</span>
                <h2>Account &amp; Passwordless Access</h2>
                <p>The Service supports passwordless sign-in via one-time passcodes (OTP) sent to your email address. You are responsible for maintaining access to the email account you use to sign in.</p>
                <p>You agree to:</p>
                <ul>
                    <li>Provide a valid email address.</li>
                    <li>Keep your sign-in credentials secure and not share them with others.</li>
                    <li>Notify us immediately of any unauthorized use of your account.</li>
                </ul>
                <p>We reserve the right to suspend or terminate accounts that violate these Terms.</p>
            </div>

            <!-- Section 5 -->
            <div class="slvf-legal-section" id="s-5">
                <span class="slvf-legal-section__num">05</span>
                <h2>Your Content (uploaded files)</h2>
                <p>You retain ownership of all files you upload to the Service. By uploading, you grant us a limited, non-exclusive, worldwide license to store, process, and transmit your files solely for the purpose of providing the Service.</p>
                <p>You represent and warrant that:</p>
                <ul>
                    <li>You own or have the right to share all files you upload.</li>
                    <li>Your files do not infringe any third-party intellectual property rights.</li>
                    <li>Your files comply with all applicable laws.</li>
                </ul>
                <p>We do not claim ownership of your content and will not use it for any purpose other than operating the Service.</p>
            </div>

            <!-- Section 6 -->
            <div class="slvf-legal-section" id="s-6">
                <span class="slvf-legal-section__num">06</span>
                <h2>Acceptable Use</h2>
                <p>You agree not to use the Service to upload, share, or transmit any content that:</p>
                <ul>
                    <li>Is illegal, harmful, threatening, abusive, or defamatory.</li>
                    <li>Infringes any patent, trademark, trade secret, copyright, or other intellectual property rights.</li>
                    <li>Contains viruses, malware, or any other malicious code.</li>
                    <li>Constitutes spam or unsolicited commercial communications.</li>
                    <li>Violates the privacy of any third party.</li>
                    <li>Depicts or promotes child sexual abuse material (CSAM) or any exploitation of minors.</li>
                </ul>
                <p>We reserve the right to remove any content and terminate any account that violates these rules, without notice.</p>
            </div>

            <!-- Section 7 -->
            <div class="slvf-legal-section" id="s-7">
                <span class="slvf-legal-section__num">07</span>
                <h2>File Retention &amp; Auto-Deletion</h2>
                <p>Files uploaded to the Service are subject to automatic deletion based on the expiry settings you choose or our default retention policy. You acknowledge and agree that:</p>
                <ul>
                    <li>We are not responsible for files that are deleted after their expiry period.</li>
                    <li>You should maintain your own copies of important files.</li>
                    <li>We may delete files earlier than scheduled if required for legal compliance, security, or operational reasons.</li>
                    <li>Files protected with "immediate destruction" mode are deleted upon first download.</li>
                </ul>
            </div>

            <!-- Section 8 -->
            <div class="slvf-legal-section" id="s-8">
                <span class="slvf-legal-section__num">08</span>
                <h2>Privacy</h2>
                <p>Your use of the Service is also governed by our <a href="<?php echo base_url('privacy'); ?>">Privacy Policy</a>, which is incorporated into these Terms by reference. Please review our Privacy Policy to understand our practices regarding the collection and use of your personal information.</p>
            </div>

            <!-- Section 9 -->
            <div class="slvf-legal-section" id="s-9">
                <span class="slvf-legal-section__num">09</span>
                <h2>Our Intellectual Property</h2>
                <p>The Service and its original content (excluding content provided by users), features, and functionality are and will remain the exclusive property of <?php echo $ev_company; ?> and its licensors. Our trademarks, logos, and service marks may not be used in connection with any product or service without our prior written consent.</p>
            </div>

            <!-- Section 10 -->
            <div class="slvf-legal-section" id="s-10">
                <span class="slvf-legal-section__num">10</span>
                <h2>Disclaimers</h2>
                <p>The Service is provided on an "AS IS" and "AS AVAILABLE" basis without any warranties of any kind, either express or implied, including but not limited to:</p>
                <ul>
                    <li>Warranties of merchantability or fitness for a particular purpose.</li>
                    <li>Warranties that the Service will be uninterrupted, error-free, or secure.</li>
                    <li>Warranties regarding the accuracy or reliability of any information obtained through the Service.</li>
                </ul>
                <p>We do not warrant that files uploaded to the Service will be retained for any specific period or that they will be available for download at any given time.</p>
            </div>

            <!-- Section 11 -->
            <div class="slvf-legal-section" id="s-11">
                <span class="slvf-legal-section__num">11</span>
                <h2>Limitation of Liability</h2>
                <p>To the maximum extent permitted by applicable law, in no event shall <?php echo $ev_company; ?>, its directors, employees, partners, agents, or suppliers be liable for any indirect, incidental, special, consequential, or punitive damages, including but not limited to loss of profits, data, use, or goodwill, arising out of or in connection with:</p>
                <ul>
                    <li>Your access to or use of (or inability to access or use) the Service.</li>
                    <li>Any content uploaded to or downloaded from the Service.</li>
                    <li>Unauthorized access to or alteration of your files or transmissions.</li>
                </ul>
            </div>

            <!-- Section 12 -->
            <div class="slvf-legal-section" id="s-12">
                <span class="slvf-legal-section__num">12</span>
                <h2>Indemnification</h2>
                <p>You agree to defend, indemnify, and hold harmless <?php echo $ev_company; ?> and its affiliates, officers, agents, and employees from and against any claims, liabilities, damages, losses, and expenses, including reasonable legal fees, arising out of or in any way connected with your access to or use of the Service, your violation of these Terms, or your violation of any third-party rights.</p>
            </div>

            <!-- Section 13 -->
            <div class="slvf-legal-section" id="s-13">
                <span class="slvf-legal-section__num">13</span>
                <h2>Termination</h2>
                <p>We may terminate or suspend your access to the Service immediately, without prior notice or liability, for any reason, including if you breach these Terms. Upon termination, your right to use the Service will immediately cease.</p>
                <p>All provisions of these Terms which by their nature should survive termination shall survive, including ownership provisions, warranty disclaimers, indemnity, and limitations of liability.</p>
            </div>

            <!-- Section 14 -->
            <div class="slvf-legal-section" id="s-14">
                <span class="slvf-legal-section__num">14</span>
                <h2>Changes to the Service or Terms</h2>
                <p>We reserve the right to modify or replace these Terms at any time. If a revision is material, we will make reasonable efforts to provide notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.</p>
                <p>By continuing to access or use the Service after any revisions become effective, you agree to be bound by the revised Terms.</p>
            </div>

            <!-- Section 15 -->
            <div class="slvf-legal-section" id="s-15">
                <span class="slvf-legal-section__num">15</span>
                <h2>Governing Law &amp; Contact</h2>
                <p>These Terms shall be governed by and construed in accordance with applicable laws, without regard to its conflict of law provisions.</p>
                <p>If you have any questions about these Terms, please contact us:</p>
                <ul>
                    <li><strong>Service:</strong> <?php echo $ev_company; ?></li>
                    <li><strong>Website:</strong> <a href="<?php echo $ev_url; ?>"><?php echo $ev_url; ?></a></li>
                </ul>
            </div>

            <?php endif; ?>

            <div class="slvf-legal__close">
                <p class="slvf-legal__close-meta">You read it all. We appreciate that.</p>
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

