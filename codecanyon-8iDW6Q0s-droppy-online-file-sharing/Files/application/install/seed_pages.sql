-- ============================================================================
--  SLVF — Seed real draft copy for the About + Terms pages
-- ----------------------------------------------------------------------------
--  This script is safe to re-run. It will:
--    1. Convert any legacy `About us` row from type='page' to type='about_page'
--    2. Convert any legacy `Terms of service` row from type='page' to
--       type='terms_page'
--    3. Replace the placeholder body with proper draft copy authored as HTML
--       so it renders inside the new `.slvf-prose` container.
--    4. Insert fresh rows if the legacy rows are missing (e.g. on a fresh
--       install where this seed runs after droppy.sql).
--
--  The Terms body is structured as <section id="s-N"><h2>...</h2>...</section>
--  blocks so the on-page sticky-TOC scroll-spy in slvf.js can hook the
--  <section> ids directly.
--
--  Apply manually via mysql / phpMyAdmin AFTER droppy.sql, or include this
--  file in any future updatev2.sql release.
-- ============================================================================

-- ---------------------------------------------------------------------------
-- 1. Promote the legacy `page`-typed rows to the new typed rows.
--    We match on the seeded English title (idempotent — no-op on re-run once
--    the type has been changed because the WHERE clause requires type='page').
-- ---------------------------------------------------------------------------

UPDATE `droppy_pages`
SET `type` = 'about_page'
WHERE `type` = 'page' AND `title` = 'About us';

UPDATE `droppy_pages`
SET `type` = 'terms_page'
WHERE `type` = 'page' AND `title` = 'Terms of service';

-- ---------------------------------------------------------------------------
-- 2. Inject draft About-page body (HTML, renders inside .slvf-prose).
--    Replaces the placeholder copy so the page is never empty out of the box.
-- ---------------------------------------------------------------------------

UPDATE `droppy_pages`
SET `content` = '<p>We started with a simple frustration. A 4K master export. A client across an ocean. An email bouncing back with a 25 MB cap. A &quot;free&quot; alternative that compressed the audio to mush.</p>\n<p>So we built a transfer service tuned for the way creators actually work. Big files move at full speed. Recipients don\'t sign up for anything. Links die when you say they should. The page you upload from looks like something you\'d want to use, not a 2008 web form.</p>\n<p>Today the same product moves wedding rushes, indie film cuts, photographer raw bundles, and the occasional podcast multitrack. We\'re proud of the boring parts &mdash; the resumable chunks, the auto-expiry, the privacy-first defaults. Creators have enough to think about. Sending the file shouldn\'t be one of them.</p>'
WHERE `type` = 'about_page';

-- ---------------------------------------------------------------------------
-- 3. Inject draft Terms-page body — 15 numbered <section> blocks with stable
--    ids (`s-1` … `s-15`) so the LegalToc scroll-spy in slvf.js can attach.
-- ---------------------------------------------------------------------------

UPDATE `droppy_pages`
SET `content` = '<section id="s-1" class="slvf-legal-section"><span class="slvf-legal-section__num">01</span><h2>Acceptance of Terms</h2><p>By accessing or using our service (the <strong>&quot;Service&quot;</strong>) you agree to be bound by these Terms of Service (the <strong>&quot;Terms&quot;</strong>). If you do not agree, do not use the Service. These Terms form a binding agreement between you and the operator of the Service.</p><p>If you accept these Terms on behalf of an organisation, you represent that you have the authority to bind that organisation, and &quot;you&quot; refers to that organisation.</p></section>\n\n<section id="s-2" class="slvf-legal-section"><span class="slvf-legal-section__num">02</span><h2>Description of Service</h2><p>The Service is a file-transfer product that lets you upload files and share them with recipients via a unique link or by email. We may add, modify, or remove features at any time without prior notice.</p><p>The Service is offered on an &quot;as available&quot; basis. We do not guarantee that the Service will be uninterrupted, error-free, or always accessible.</p></section>\n\n<section id="s-3" class="slvf-legal-section"><span class="slvf-legal-section__num">03</span><h2>Eligibility</h2><p>You must be at least 16 years old, or the age of digital consent in your jurisdiction (whichever is higher), to use the Service. By using the Service you confirm that you meet this requirement and that you are legally capable of entering into a binding contract.</p></section>\n\n<section id="s-4" class="slvf-legal-section"><span class="slvf-legal-section__num">04</span><h2>Account &amp; Passwordless Access</h2><p>Most uses of the Service do not require an account. When an account is required &mdash; for example to manage transfer history &mdash; we authenticate you using a one-time code sent to your email address (passwordless sign-in). You agree to:</p><ul><li>Provide an email address you control;</li><li>Keep your access to that email address secure;</li><li>Notify us immediately if you suspect unauthorised use of your account.</li></ul><p>You are responsible for all activity that occurs under your account.</p></section>\n\n<section id="s-5" class="slvf-legal-section"><span class="slvf-legal-section__num">05</span><h2>Your Content</h2><p>You retain all rights in the files, text, and other material you upload (<strong>&quot;Your Content&quot;</strong>). We do not claim ownership of Your Content.</p><p>You grant us a limited, worldwide, royalty-free licence to host, store, transmit, and display Your Content solely as necessary to provide the Service to you and your recipients. This licence ends when Your Content is deleted from our systems.</p><p>You are solely responsible for Your Content and for ensuring that you have the rights necessary to upload it and share it with your recipients.</p></section>\n\n<section id="s-6" class="slvf-legal-section"><span class="slvf-legal-section__num">06</span><h2>Acceptable Use</h2><p>You agree not to use the Service to upload, store, or transmit any content that:</p><ul><li>Infringes intellectual-property or privacy rights of any third party;</li><li>Is unlawful, defamatory, harassing, abusive, or otherwise objectionable;</li><li>Contains malware, viruses, or any code intended to disrupt or damage software, hardware, or networks;</li><li>Contains child sexual abuse material or any content that exploits minors;</li><li>Violates any applicable law or regulation.</li></ul><p>You also agree not to attempt to gain unauthorised access to the Service, probe it for vulnerabilities, or use it to send unsolicited bulk communications.</p></section>\n\n<section id="s-7" class="slvf-legal-section"><span class="slvf-legal-section__num">07</span><h2>File Retention &amp; Auto-Deletion</h2><p>Files are stored only for the period you select at upload (or the platform default if you do not specify). Once that period elapses, files are permanently deleted from our active systems.</p><p>You can also delete a transfer manually at any time before its expiry. We are not responsible for any loss caused by the auto-deletion of expired files; you should keep your own copy of any file you upload.</p></section>\n\n<section id="s-8" class="slvf-legal-section"><span class="slvf-legal-section__num">08</span><h2>Privacy</h2><p>We process personal data in accordance with our Privacy Policy. By using the Service, you consent to that processing. We do not sell your personal data, and we do not access the contents of your files except where required to operate the Service or to comply with applicable law.</p></section>\n\n<section id="s-9" class="slvf-legal-section"><span class="slvf-legal-section__num">09</span><h2>Our Intellectual Property</h2><p>The Service, including its software, design, brand, and content (other than Your Content), is owned by us or our licensors and is protected by intellectual-property law. We grant you a limited, non-exclusive, non-transferable licence to use the Service in accordance with these Terms. You may not copy, modify, reverse-engineer, or create derivative works of the Service without our prior written consent.</p></section>\n\n<section id="s-10" class="slvf-legal-section"><span class="slvf-legal-section__num">10</span><h2>Disclaimers</h2><p>The Service is provided <strong>&quot;as is&quot;</strong> and <strong>&quot;as available&quot;</strong>, without warranties of any kind, whether express or implied, including the implied warranties of merchantability, fitness for a particular purpose, and non-infringement.</p><p>We do not warrant that the Service will meet your requirements, that it will be uninterrupted or error-free, or that any data you transmit through it will be transmitted accurately or securely.</p></section>\n\n<section id="s-11" class="slvf-legal-section"><span class="slvf-legal-section__num">11</span><h2>Limitation of Liability</h2><p>To the maximum extent permitted by law, we shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits, revenue, data, or goodwill, arising out of or in connection with your use of the Service.</p><p>Our total aggregate liability arising out of or in connection with the Service shall not exceed the amount you paid us in the twelve months preceding the event giving rise to the claim, or one hundred US dollars (US$100), whichever is greater.</p></section>\n\n<section id="s-12" class="slvf-legal-section"><span class="slvf-legal-section__num">12</span><h2>Indemnification</h2><p>You agree to defend, indemnify, and hold harmless the operator of the Service, its affiliates, and personnel from and against any claims, damages, losses, liabilities, costs, and expenses (including reasonable attorneys\' fees) arising out of or in connection with: (a) Your Content; (b) your breach of these Terms; or (c) your violation of any law or third-party right.</p></section>\n\n<section id="s-13" class="slvf-legal-section"><span class="slvf-legal-section__num">13</span><h2>Termination</h2><p>We may suspend or terminate your access to the Service at any time, with or without cause and with or without notice, including if we reasonably believe you have violated these Terms. On termination, your right to use the Service ends immediately, and we may delete any associated data.</p><p>You may stop using the Service at any time. The provisions of these Terms that by their nature should survive termination (including IP, disclaimers, limitations of liability, indemnification, and governing law) will survive.</p></section>\n\n<section id="s-14" class="slvf-legal-section"><span class="slvf-legal-section__num">14</span><h2>Changes to the Service or Terms</h2><p>We may update these Terms from time to time. When we do, we will revise the <em>Effective date</em> at the top of this page. If the changes are material, we will take reasonable steps to notify you (for example, via a banner on the Service or an email).</p><p>Your continued use of the Service after the updated Terms take effect constitutes your acceptance of the new Terms. If you do not agree to the updated Terms, you must stop using the Service.</p></section>\n\n<section id="s-15" class="slvf-legal-section"><span class="slvf-legal-section__num">15</span><h2>Governing Law &amp; Contact</h2><p>These Terms are governed by the laws of the jurisdiction in which the operator of the Service is established, without regard to its conflict-of-laws principles. Any dispute arising out of or in connection with these Terms shall be subject to the exclusive jurisdiction of the competent courts of that jurisdiction.</p><p>Questions about these Terms? Reach the operator using the contact details published on the site.</p></section>'
WHERE `type` = 'terms_page';

-- ---------------------------------------------------------------------------
-- 4. Fresh-install fallback — if the legacy `page` rows never existed (some
--    installs may have already been wiped) and no typed rows exist either,
--    insert minimal seeds so the routes are never blank. Wrapped in
--    INSERT … SELECT … WHERE NOT EXISTS so it stays idempotent.
-- ---------------------------------------------------------------------------

INSERT INTO `droppy_pages` (`type`, `title`, `content`, `lang`, `order`)
SELECT 'about_page', 'About us', 'See the page for full content. Edit this row in the admin Pages CMS.', 'english', 100
WHERE NOT EXISTS (SELECT 1 FROM `droppy_pages` WHERE `type` = 'about_page');

INSERT INTO `droppy_pages` (`type`, `title`, `content`, `lang`, `order`)
SELECT 'terms_page', 'Terms of service', '<section id="s-1" class="slvf-legal-section"><span class="slvf-legal-section__num">01</span><h2>Acceptance of Terms</h2><p>Edit this row in the admin Pages CMS to populate the full 15-section legal copy.</p></section>', 'english', 101
WHERE NOT EXISTS (SELECT 1 FROM `droppy_pages` WHERE `type` = 'terms_page');
