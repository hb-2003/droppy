/* ============================================================================
   Share Large Video Files — Cinematic Studio interactions (Phase 1 + Phase B)
   Loads after script.js. Pure ES5+jQuery to match the existing codebase.
   ============================================================================ */
(function ($, w) {
    'use strict';

    /* ----------------------------------------------------------------------
       Account dropdown
       ---------------------------------------------------------------------- */

    /* ----------------------------------------------------------------------
       Legal pages — Mobile Accordion
       ---------------------------------------------------------------------- */
    var LegalAccordion = {
        init: function() {
            if (!$('.slvf-legal-section').length) return;
            
            // Transform sections for accordion behavior
            $('.slvf-legal-section').each(function() {
                var $section = $(this);
                var $num = $section.find('.slvf-legal-section__num');
                var $h2 = $section.find('h2');
                
                // Only wrap if not already wrapped
                if ($section.find('.slvf-legal-section__header').length === 0) {
                    var $header = $('<div class="slvf-legal-section__header"></div>');
                    var $body = $('<div class="slvf-legal-section__body"></div>');
                    
                    // Move num and h2 to header
                    $header.append($num).append($h2);
                    
                    // Add caret icon
                    $header.append('<i class="lni lni-chevron-down slvf-legal-section__caret"></i>');
                    
                    // Move everything else to body
                    var children = $section.children().not('.slvf-legal-section__header').detach();
                    var nodes = $section.contents().detach(); // get raw text nodes too
                    $body.append(children).append(nodes);
                    
                    $section.append($header).append($body);
                    
                    // On mobile, first section is open by default, others closed
                    if ($section.index() === 0) {
                        $section.addClass('is-open');
                    }
                }
            });
            
            // Handle click
            $(document).on('click', '.slvf-legal-section__header', function() {
                // Only act as accordion on mobile (when caret is visible)
                if ($('.slvf-legal-section__caret').is(':visible')) {
                    var $section = $(this).closest('.slvf-legal-section');
                    var wasOpen = $section.hasClass('is-open');
                    
                    // Close all
                    $('.slvf-legal-section').removeClass('is-open');
                    
                    // If it wasn't open, open it
                    if (!wasOpen) {
                        $section.addClass('is-open');
                    }
                }
            });
        }
    };

    var Account = {
        init: function () {
            $(document).on('click', '#slvf-account-btn', function (e) {
                e.preventDefault();
                e.stopPropagation();
                $('#slvf-account-menu').toggleClass('is-open');
            });
            $(document).on('click', function (e) {
                if (!$(e.target).closest('#slvf-account-toggle').length) {
                    $('#slvf-account-menu').removeClass('is-open');
                }
            });
        }
    };

    /* ----------------------------------------------------------------------
       Mobile hamburger
       ---------------------------------------------------------------------- */
    var SlvfNav = {
        open: function () {
            $('#slvf-hamburger').addClass('is-open');
            $('#slvf-mobile-menu').addClass('is-open');
            $('#slvf-mobile-backdrop').addClass('is-open');
            $('body').css('overflow', 'hidden');
        },
        close: function () {
            $('#slvf-hamburger').removeClass('is-open');
            $('#slvf-mobile-menu').removeClass('is-open');
            $('#slvf-mobile-backdrop').removeClass('is-open');
            $('body').css('overflow', '');
        },
        init: function () {
            $(document).on('click', '#slvf-hamburger', function () {
                if ($(this).hasClass('is-open')) { SlvfNav.close(); } else { SlvfNav.open(); }
            });
            $(document).on('click', '#slvf-mobile-close, #slvf-mobile-backdrop', function () {
                SlvfNav.close();
            });
            $(document).on('click', '#slvf-mobile-menu a', function () {
                SlvfNav.close();
            });
            $(document).on('keydown', function (e) {
                if (e.key === 'Escape') SlvfNav.close();
            });
        }
    };

    /* ----------------------------------------------------------------------
       Slide-in tab window (language, contact, terms, files, custom pages)
       Replaces the legacy Tabs.open behaviour for elements inside .slvf-tab-window.
       Triggered by any element with [data-target] pointing to a tab id.
       ---------------------------------------------------------------------- */
    var TabWindow = {
        init: function () {
            $(document).on('click', '[data-target]', function (e) {
                var target = $(this).data('target');
                if (!target) return;
                // Standalone pages (/about, /terms) don't ship the slide-in
                // window. Falling through silently leaves dead links, so we
                // bounce the user back to the homepage where the slide-in
                // lives. Anchor tags with an explicit href are exempt.
                if (!$('.slvf-tab-window').length) {
                    if (!$(this).attr('href')) {
                        e.preventDefault();
                        window.location.href = '/';
                    }
                    return;
                }
                if (!$('#' + target).length) return;
                e.preventDefault();
                TabWindow.open(target);
            });
            $(document).on('click', '#slvf-tab-close, .slvf-tab-backdrop', function () {
                TabWindow.close();
            });
            $(document).on('keydown', function (e) {
                if (e.key === 'Escape') TabWindow.close();
            });
        },
        open: function (target) {
            $('.slvf-tab.is-active').removeClass('is-active');
            $('#' + target).addClass('is-active');
            $('.slvf-tab-window').addClass('is-open');
            $('.slvf-tab-backdrop').addClass('is-open');
            // Mark "large" tab variant when previewing files list
            if (target === 'tab-files') {
                $('.slvf-tab-window').addClass('slvf-tab-window--large');
            } else {
                $('.slvf-tab-window').removeClass('slvf-tab-window--large');
            }
        },
        close: function () {
            $('.slvf-tab-window').removeClass('is-open');
            $('.slvf-tab-backdrop').removeClass('is-open');
        }
    };

    /* ----------------------------------------------------------------------
       Mode toggle (Link / Email)
       Visual toggle that drives the legacy Form.pickShareOption('link'|'mail').
       ---------------------------------------------------------------------- */
    var ModeToggle = {
        init: function () {
            $(document).on('click', '.slvf-mode-toggle__btn', function () {
                var $btn = $(this);
                var mode = $btn.data('mode');
                var $wrap = $btn.closest('.slvf-mode-toggle');

                $wrap.find('.slvf-mode-toggle__btn').removeClass('is-active').attr('aria-selected', 'false');
                $btn.addClass('is-active').attr('aria-selected', 'true');

                $wrap.removeClass('is-link is-mail').addClass(mode === 'mail' ? 'is-mail' : 'is-link');

                // Drive the legacy form
                if (w.Form && typeof w.Form.pickShareOption === 'function') {
                    w.Form.pickShareOption(mode);
                }
                // Show/hide the email fields explicitly (legacy markup uses inline style)
                if (mode === 'mail') {
                    $('#email-fields').show();
                } else {
                    $('#email-fields').hide();
                }
            });
        }
    };

    /* ----------------------------------------------------------------------
       Selected files visibility hook — show the .selected-files panel
       once the legacy uploader appends an <li>.
       ---------------------------------------------------------------------- */
    var SelectedFiles = {
        init: function () {
            var $panel = $('#selected-files');
            if (!$panel.length) return;
            var $list  = $panel.find('ul');
            var $dropZone = $('.upload-form .select-first-files');
            var observer = new MutationObserver(function () {
                var hasFiles = $list.children().length > 0;
                $panel.toggleClass('is-shown', hasFiles);
                $panel.toggleClass('active', hasFiles);
                $dropZone.toggleClass('is-hidden', hasFiles);
            });
            observer.observe($list[0], { childList: true });
        }
    };

    /* ----------------------------------------------------------------------
       VerifyDigits — handles auto-advance, backspace, and paste for the 6-digit
       email verification code on the upload card.
       ---------------------------------------------------------------------- */
    var VerifyDigits = {
        init: function () {
            var $digits = $('#slvf-verify-digits .slvf-verify-digit');
            var $hidden = $('#verify-code-hidden');
            if (!$digits.length) return;

            function updateHidden() {
                var code = $digits.map(function () { return $(this).val(); }).get().join('');
                $hidden.val(code);
                return code;
            }

            $digits.on('input', function () {
                var $this = $(this);
                var v = $this.val().replace(/[^0-9]/g, '');
                $this.val(v);

                if (v) {
                    $this.addClass('is-filled');
                    $this.next('.slvf-verify-digit').focus();
                } else {
                    $this.removeClass('is-filled');
                }

                var code = updateHidden();
                if (code.length === 6) {
                    setTimeout(function () {
                        $('#upload-verify button').trigger('click');
                    }, 120);
                }
            });

            $digits.on('keydown', function (e) {
                var $this = $(this);
                if (e.key === 'Backspace' && !$this.val()) {
                    $this.prev('.slvf-verify-digit').focus();
                }
                if (e.key === 'ArrowLeft') $this.prev('.slvf-verify-digit').focus();
                if (e.key === 'ArrowRight') $this.next('.slvf-verify-digit').focus();
            });

            $digits.on('paste', function (e) {
                var clipboardData = e.originalEvent.clipboardData || w.clipboardData;
                if (!clipboardData) return;
                var data = clipboardData.getData('text');
                var digits = data.replace(/[^0-9]/g, '').slice(0, 6).split('');
                if (digits.length === 0) return;
                e.preventDefault();
                $digits.each(function (i) {
                    if (digits[i]) {
                        $(this).val(digits[i]).addClass('is-filled');
                    }
                });
                $digits.eq(Math.min(digits.length - 1, 5)).focus();
                var code = updateHidden();
                if (code.length === 6) {
                    setTimeout(function () {
                        $('#upload-verify button').trigger('click');
                    }, 120);
                }
            });
        }
    };

    /* ----------------------------------------------------------------------
       Scroll-reveal — adds .is-in to .slvf-rise elements when they enter view.
       ---------------------------------------------------------------------- */
    var Reveal = {
        init: function () {
            if (!('IntersectionObserver' in w)) {
                $('.slvf-rise').addClass('is-in');
                return;
            }
            var io = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        // Stagger by index within parent
                        var $el = $(entry.target);
                        var i = $el.parent().children('.slvf-rise').index(entry.target);
                        $el.css('transition-delay', (i * 100) + 'ms');
                        $el.addClass('is-in');
                        io.unobserve(entry.target);
                    }
                });
            }, { rootMargin: '0px 0px -10% 0px', threshold: 0.05 });

            $('.slvf-rise').each(function () { io.observe(this); });
        }
    };

    /* ----------------------------------------------------------------------
       Drop-zone illustration → triggers the legacy file picker.
       The legacy script.js binds the picker to `<lord-icon>`; we replaced
       the lord-icon with our custom button (#slvf-drop-pick), so we need to
       wire the click ourselves.
       ---------------------------------------------------------------------- */
    var DropPick = {
        init: function () {
            $(document).on('click', '#slvf-drop-pick', function (e) {
                e.preventDefault();
                $('#file-selector').trigger('click');
            });
        }
    };

    /* ----------------------------------------------------------------------
       Background mesh upload-pulse hook
       ---------------------------------------------------------------------- */
    var UploadPulse = {
        init: function () {
            // Toggle .is-uploading on body when the legacy progress view becomes active
            var $progress = $('#upload-progress');
            if (!$progress.length) return;
            var observer = new MutationObserver(function () {
                $('body').toggleClass('is-uploading', $progress.hasClass('active'));
            });
            observer.observe($progress[0], { attributes: true, attributeFilter: ['class'] });
        }
    };

    /* ----------------------------------------------------------------------
       LegalToc — sticky-TOC scroll-spy + smooth-scroll for /terms
       ---------------------------------------------------------------------- */
    var LegalToc = {
        init: function () {
            var $nav = $('#slvf-legal-toc');
            if (!$nav.length) return;

            var $links = $nav.find('.slvf-toc__link');
            var $sections = $('.slvf-legal-section');
            if (!$sections.length) return;

            // ---- Smooth-scroll on click (account for fixed nav height) ----
            $links.on('click', function (e) {
                var href = $(this).attr('href') || '';
                if (href.indexOf('#') !== 0) return;
                var $target = $(href);
                if (!$target.length) return;
                e.preventDefault();

                var navH = parseInt(getComputedStyle(document.documentElement)
                                    .getPropertyValue('--slvf-nav-h'), 10) || 72;
                var top = $target.offset().top - navH - 16;

                $('html, body').stop(true).animate({ scrollTop: top }, 520, 'swing', function () {
                    if (history.replaceState) history.replaceState(null, '', href);
                });

                $links.removeClass('is-active');
                $nav.find('.slvf-toc__link[href="' + href + '"]').addClass('is-active');
            });

            // ---- Scroll-spy via IntersectionObserver ----
            if (!('IntersectionObserver' in window)) return;

            var current = null;
            var setActive = function (id) {
                if (id === current) return;
                current = id;
                $links.removeClass('is-active');
                $nav.find('.slvf-toc__link[href="#' + id + '"]').addClass('is-active');
            };

            // Use the content panel as the scroll root when in split-panel mode,
            // otherwise fall back to the viewport (window).
            var contentPanel = document.querySelector('.slvf-page--legal .slvf-legal__body');
            var ioRoot = contentPanel || null;

            // Always start at the top — prevent browser from restoring a stale scroll position
            if (contentPanel) contentPanel.scrollTop = 0;

            var visible = {};
            var io = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    var id = entry.target.id;
                    if (!id) return;
                    if (entry.isIntersecting) {
                        visible[id] = entry.intersectionRatio;
                    } else {
                        delete visible[id];
                    }
                });

                // Pick the section highest in document order that is visible
                var ids = Object.keys(visible);
                if (ids.length) {
                    var ordered = $sections.toArray()
                                      .map(function (n) { return n.id; })
                                      .filter(function (i) { return visible[i] !== undefined; });
                    if (ordered.length) setActive(ordered[0]);
                }
            }, {
                root: ioRoot,
                rootMargin: '-10% 0px -45% 0px',
                threshold: [0, 0.1, 0.5, 1]
            });

            $sections.each(function () { io.observe(this); });

            // Fallback: scroll listener on the content panel (or window).
            var $scrollEl = contentPanel ? $(contentPanel) : $(w);
            $scrollEl.on('scroll.legaltoc', function () {
                if (Object.keys(visible).length) return;
                var scrollTop = contentPanel ? contentPanel.scrollTop : $(w).scrollTop();
                var best = null;
                $sections.each(function () {
                    var elTop = contentPanel
                        ? this.offsetTop
                        : $(this).offset().top;
                    if (elTop <= scrollTop + 80) best = this.id;
                });
                if (best) setActive(best);
            });
        }
    };

    /* ----------------------------------------------------------------------
       Toast — lightweight in-page notification
       ---------------------------------------------------------------------- */
    var Toast = {
        _el: null,
        _tid: null,

        _ensure: function () {
            if (Toast._el) return;
            var el = document.createElement('div');
            el.id = 'slvf-toast';
            el.className = 'slvf-toast';
            document.body.appendChild(el);
            Toast._el = el;
        },

        show: function (msg, type, ms) {
            Toast._ensure();
            if (Toast._tid) clearTimeout(Toast._tid);
            Toast._el.textContent = msg;
            Toast._el.className = 'slvf-toast slvf-toast--' + (type || 'info') + ' is-visible';
            Toast._tid = setTimeout(function () {
                Toast._el.classList.remove('is-visible');
            }, ms || 3000);
        }
    };
    w.Toast = Toast;

    /* ----------------------------------------------------------------------
       CopyLink — clipboard helper + copy button wiring
       ---------------------------------------------------------------------- */
    var CopyLink = {
        copy: function (text) {
            if (navigator.clipboard && w.isSecureContext) {
                navigator.clipboard.writeText(text).then(function () {
                    Toast.show('Link copied!', 'success');
                }).catch(function () { CopyLink._fallback(text); });
            } else {
                CopyLink._fallback(text);
            }
        },

        _fallback: function (text) {
            var ta = document.createElement('textarea');
            ta.value = text;
            ta.style.cssText = 'position:fixed;opacity:0;top:0;left:0;width:1px;height:1px;';
            document.body.appendChild(ta);
            ta.focus();
            ta.select();
            try { document.execCommand('copy'); Toast.show('Link copied!', 'success'); }
            catch (e) { Toast.show('Copy manually: ' + text, 'error', 6000); }
            document.body.removeChild(ta);
        },

        init: function () {
            // New SLVF copy button (#slvf-copy-btn)
            $(document).on('click', '#slvf-copy-btn', function () {
                var link = $('#slvf-transfer-link').val()
                        || $('#upload-finished .upload-finished-message#link input').val();
                if (!link) return;
                CopyLink.copy(link);
                var $b = $(this);
                var orig = $b.html();
                $b.html('<i class="lni lni-checkmark"></i> Copied!');
                setTimeout(function () { $b.html(orig); }, 2500);
            });

            // Click on link input → select all
            $(document).on('click', '#slvf-transfer-link', function () { this.select(); });

            // Legacy is-copy button (existing upload-finished markup)
            $(document).on('click', '#upload-finished .button.is-copy', function () {
                var link = $('#upload-finished .upload-finished-message#link input').val();
                if (!link) return;
                CopyLink.copy(link);
                var $b = $(this);
                var orig = $b.text();
                $b.text('Copied!');
                setTimeout(function () { $b.text(orig); }, 2500);
            });
        }
    };
    w.CopyLink = CopyLink;

    /* ----------------------------------------------------------------------
       SlvfComplete — "Send another" resets the upload card without page reload
       ---------------------------------------------------------------------- */
    var SlvfComplete = {
        init: function () {
            $(document).on('click', '#slvf-send-another', function () {
                if (w.Uploader) {
                    w.Uploader.executed      = false;
                    w.Uploader.done          = 0;
                    w.Uploader.uploadID      = null;
                    w.Uploader.fileView      = false;
                    w.Uploader.sizeLeft      = w.maxSizeBytes || 0;
                    w.Uploader.totalselected = 0;
                    w.Uploader.folders       = [];
                    if (w.Uploader.circle) {
                        w.Uploader.circle.set(0);
                        w.Uploader.circle.setText('');
                    }
                }
                $('#selected-files ul').empty();
                $('.upload-form .select-first-files').removeClass('is-hidden').show();
                $('.upload-form .selected-files').removeClass('active is-shown');
                $('.upload-block-content').removeClass('active');
                $('#upload').addClass('active');
                w.onbeforeunload = null;
            });
        }
    };

    /* ----------------------------------------------------------------------
       Navbar scroll shadow
       ---------------------------------------------------------------------- */
    var NavScroll = {
        init: function () {
            var $nav = $('#slvf-nav');
            if (!$nav.length) return;
            $(w).on('scroll.navscroll', function () {
                $nav.toggleClass('is-scrolled', $(w).scrollTop() > 8);
            });
        }
    };

    /* ----------------------------------------------------------------------
       Receive — paste link / ID and open transfer
       ---------------------------------------------------------------------- */
    var Receive = {
        parseReference: function (raw) {
            var v = (raw || '').trim();
            if (!v) return null;
            var looksUrl = v.indexOf('://') >= 0 || v.indexOf('/') >= 0 || v.indexOf('?') >= 0;
            if (looksUrl) {
                var normalized = v.indexOf('://') >= 0 ? v : 'https://' + v;
                try {
                    var u = new URL(normalized);
                    var segs = u.pathname.split('/').filter(function (s) { return s; });
                    if (!segs.length) return null;
                    return { id: segs[0], pid: segs.length > 1 ? segs[1] : '' };
                } catch (e) { return null; }
            }
            return { id: v, pid: '' };
        },
        go: function () {
            var raw = $('#slvf-receive-input').val();
            var pidManual = $.trim($('#slvf-receive-pid').val());
            var ref = Receive.parseReference(raw);
            if (!ref || !ref.id) {
                $('#slvf-receive-error').text('Enter a valid transfer link or ID.');
                return;
            }
            if (pidManual) ref.pid = pidManual;
            var url = (typeof siteUrl !== 'undefined' ? siteUrl : '/') + ref.id;
            if (ref.pid) url += '/' + ref.pid;
            w.location.href = url.replace(/([^:]\/)\/+/g, '$1');
        },
        init: function () {
            if (!$('#slvf-receive-load').length) return;
            $('#slvf-receive-load').on('click', Receive.go);
            $('#slvf-receive-input').on('keypress', function (e) {
                if (e.which === 13) Receive.go();
            });
            var q = w.location.search.match(/[?&]id=([^&]+)/);
            var qp = w.location.search.match(/[?&]pid=([^&]+)/);
            if (q && !$('#slvf-receive-input').val()) {
                $('#slvf-receive-input').val(decodeURIComponent(q[1]));
                if (qp) $('#slvf-receive-pid').val(decodeURIComponent(qp[1]));
            }
            if (w.location.search.indexOf('id=') >= 0 && $('#slvf-receive-input').val()) {
                Receive.go();
            }
            Receive.initScanner();
        },
        initScanner: function () {
            if (!$('#slvf-receive-scan').length || typeof Html5Qrcode === 'undefined') return;
            var scanner = null;
            $('#slvf-receive-scan').on('click', function () {
                $('#slvf-qr-overlay').addClass('is-open').attr('aria-hidden', 'false');
                if (!scanner) {
                    scanner = new Html5Qrcode('slvf-qr-reader');
                }
                scanner.start(
                    { facingMode: 'environment' },
                    { fps: 10, qrbox: { width: 220, height: 220 } },
                    function (decoded) {
                        scanner.stop().catch(function () {});
                        $('#slvf-qr-overlay').removeClass('is-open');
                        $('#slvf-receive-input').val(decoded);
                        Receive.go();
                    },
                    function () {}
                ).catch(function () {
                    Toast.show('Camera access denied or unavailable.', 'error');
                });
            });
            $('#slvf-qr-close, #slvf-qr-overlay').on('click', function (e) {
                if (e.target === this || $(e.target).closest('#slvf-qr-close').length) {
                    if (scanner && scanner.isScanning) {
                        scanner.stop().catch(function () {});
                    }
                    $('#slvf-qr-overlay').removeClass('is-open').attr('aria-hidden', 'true');
                }
            });
        }
    };
    w.Receive = Receive;

    /* ----------------------------------------------------------------------
       QR on upload success
       ---------------------------------------------------------------------- */
    var QrSuccess = {
        render: function (link) {
            if (!link || typeof QRCode === 'undefined') return;
            var $wrap = $('#slvf-complete-qr-wrap');
            var canvas = document.getElementById('slvf-qr-canvas');
            if (!$wrap.length || !canvas) return;
            QRCode.toCanvas(canvas, link, {
                width: 160,
                margin: 2,
                color: { dark: '#F2F1EB', light: '#0A0C1400' }
            }, function (err) {
                if (!err) $wrap.prop('hidden', false);
            });
        },
        init: function () {
            $(document).on('slvf:transfer-complete', function (e, link) {
                QrSuccess.render(link);
                if (link && typeof GuestHistory !== 'undefined' && w.Uploader && w.Uploader.uploadID) {
                    GuestHistory.push({
                        upload_id: w.Uploader.uploadID,
                        share: 'link',
                        time: Math.floor(Date.now() / 1000),
                        time_expire: 0,
                        size: 0
                    });
                }
            });
            $(document).on('click', '#slvf-qr-download', function () {
                var canvas = document.getElementById('slvf-qr-canvas');
                if (!canvas) return;
                var a = document.createElement('a');
                a.download = 'transfer-qr.png';
                a.href = canvas.toDataURL('image/png');
                a.click();
            });
        }
    };

    /* ----------------------------------------------------------------------
       Guest local history (localStorage)
       ---------------------------------------------------------------------- */
    var GuestHistory = {
        KEY: 'slvf_guest_history',
        read: function () {
            try {
                var raw = w.localStorage.getItem(GuestHistory.KEY);
                return raw ? JSON.parse(raw) : [];
            } catch (e) { return []; }
        },
        write: function (list) {
            try { w.localStorage.setItem(GuestHistory.KEY, JSON.stringify(list)); } catch (e) {}
        },
        push: function (item) {
            if (!item || !item.upload_id) return;
            var list = GuestHistory.read();
            list = list.filter(function (x) { return x.upload_id !== item.upload_id; });
            list.unshift(item);
            if (list.length > 50) list = list.slice(0, 50);
            GuestHistory.write(list);
        },
        syncBeforeReload: function () {
            var list = GuestHistory.read();
            if (!list.length) return;
            var ids = list.map(function (x) { return x.upload_id; });
            $.ajax({
                url: 'handler/sync_local_history',
                type: 'POST',
                dataType: 'json',
                async: false,
                data: { upload_ids: JSON.stringify(ids) }
            });
        },
        renderGuestList: function () {
            var $host = $('#slvf-guest-history-list');
            if (!$host.length) return;
            var list = GuestHistory.read();
            if (!list.length) {
                $host.hide();
                return;
            }
            var html = '';
            var base = (typeof siteUrl !== 'undefined' ? siteUrl : '/').replace(/\/?$/, '/');
            list.forEach(function (t) {
                var url = base + t.upload_id;
                html += '<div class="slvf-history__item slvf-history__item--guest" data-upload-id="' + t.upload_id + '">' +
                    '<div class="slvf-history__item-info"><span class="slvf-history__item-name">' + t.upload_id + '</span>' +
                    '<span class="slvf-history__item-meta">Guest transfer</span></div>' +
                    '<div class="slvf-history__item-actions">' +
                    '<button type="button" class="slvf-history__copy-btn slvf-btn slvf-btn--ghost slvf-btn--sm" data-url="' + url + '">Copy</button>' +
                    '<a class="slvf-btn slvf-btn--ghost slvf-btn--sm" href="' + url + '">Open</a></div></div>';
            });
            $host.html(html).show();
            $('#slvf-guest-history-section').show();
            if (list.length) {
                $('#slvf-history-auth-empty').hide();
            }
        },
        init: function () {
            GuestHistory.renderGuestList();
        }
    };
    w.GuestHistory = GuestHistory;

    /* ----------------------------------------------------------------------
       History detail modal
       ---------------------------------------------------------------------- */
    var HistoryDetail = {
        $overlay: null,
        init: function () {
            if (!$('.slvf-page--history').length) return;
            HistoryDetail.$overlay = $(
                '<div class="slvf-history-modal" id="slvf-history-modal" aria-hidden="true">' +
                '<div class="slvf-history-modal__backdrop"></div>' +
                '<div class="slvf-history-modal__panel" role="dialog">' +
                '<button type="button" class="slvf-history-modal__close" aria-label="Close"><i class="lni lni-close"></i></button>' +
                '<h2 class="slvf-history-modal__title"></h2>' +
                '<ul class="slvf-history-modal__files"></ul>' +
                '<p class="slvf-history-modal__meta"></p>' +
                '<div class="slvf-history-modal__actions"></div>' +
                '</div></div>'
            );
            $('body').append(HistoryDetail.$overlay);
            $(document).on('click', '.slvf-history__item:not(.slvf-history__item--guest)', function (e) {
                if ($(e.target).closest('button, a').length) return;
                var $item = $(this);
                HistoryDetail.open(
                    $item.data('upload-id'),
                    $item.data('url'),
                    $item.data('expired') === 1,
                    $item.data('private-id') || ''
                );
            });
            HistoryDetail.$overlay.on('click', '.slvf-history-modal__backdrop, .slvf-history-modal__close', function () {
                HistoryDetail.close();
            });
        },
        open: function (uploadId, url, expired, privateId) {
            var params = { upload_id: uploadId };
            if (privateId) {
                params.private_id = privateId;
            }
            $.getJSON('handler/metadata', params, function (data) {
                if (!data.ok) {
                    if (url) w.location.href = url;
                    return;
                }
                var $m = HistoryDetail.$overlay;
                $m.find('.slvf-history-modal__title').text('Transfer ' + uploadId);
                var $files = $m.find('.slvf-history-modal__files').empty();
                (data.files || []).forEach(function (f) {
                    $files.append('<li>' + (f.name || 'File') + ' — ' + HistoryDetail.fmtSize(f.size) + '</li>');
                });
                var exp = data.time_expire > 0 ? new Date(data.time_expire * 1000).toLocaleDateString() : 'No expiry';
                $m.find('.slvf-history-modal__meta').text(
                    HistoryDetail.fmtSize(data.size) + ' · ' + (data.download_count || 0) + ' downloads · ' + exp
                );
                var $actions = $m.find('.slvf-history-modal__actions').empty();
                if (!expired && url) {
                    $actions.append('<button type="button" class="slvf-btn slvf-btn--ghost slvf-btn--sm slvf-history-modal__copy" data-url="' + url + '">Copy link</button>');
                    $actions.append('<a class="slvf-btn slvf-btn--primary slvf-btn--sm" href="' + url + '">Open transfer</a>');
                }
                $m.addClass('is-open').attr('aria-hidden', 'false');
            });
        },
        close: function () {
            HistoryDetail.$overlay.removeClass('is-open').attr('aria-hidden', 'true');
        },
        fmtSize: function (bytes) {
            bytes = parseInt(bytes, 10) || 0;
            if (bytes >= 1073741824) return (bytes / 1073741824).toFixed(1) + ' GB';
            if (bytes >= 1048576) return (bytes / 1048576).toFixed(1) + ' MB';
            if (bytes >= 1024) return Math.round(bytes / 1024) + ' KB';
            return bytes + ' B';
        }
    };

    /* ----------------------------------------------------------------------
       Download page — preview scroll + video play
       ---------------------------------------------------------------------- */
    var DownloadPreview = {
        init: function () {
            $(document).on('click', 'a[href="#slvf-dl-preview"]', function (e) {
                var el = document.getElementById('slvf-dl-preview');
                if (!el) return;
                e.preventDefault();
                el.scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            $(document).on('click', '.slvf-dl-preview-card__play', function (e) {
                e.preventDefault();
                var url = $(this).data('video-url');
                if (url && typeof w.openVideoModal === 'function') {
                    w.openVideoModal(url);
                }
            });
        }
    };

    /* ----------------------------------------------------------------------
       Boot
       ---------------------------------------------------------------------- */
    $(function () {
        Account.init();
        SlvfNav.init();
        TabWindow.init();
        DownloadPreview.init();
        LegalAccordion.init();
        ModeToggle.init();
        SelectedFiles.init();
        VerifyDigits.init();
        Reveal.init();
        UploadPulse.init();
        LegalToc.init();
        DropPick.init();
        Toast._ensure();
        CopyLink.init();
        SlvfComplete.init();
        NavScroll.init();
        Receive.init();
        QrSuccess.init();
        GuestHistory.init();
        HistoryDetail.init();
        $(document).on('click', '.slvf-history-modal__copy', function () {
            CopyLink.copy($(this).data('url'));
        });
    });

})(jQuery, window);
