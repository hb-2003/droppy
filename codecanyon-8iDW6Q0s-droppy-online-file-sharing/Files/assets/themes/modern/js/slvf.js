/* ============================================================================
   Share Large Video Files — Cinematic Studio interactions (Phase 1 + Phase B)
   Loads after script.js. Pure ES5+jQuery to match the existing codebase.
   ============================================================================ */
(function ($, w) {
    'use strict';

    /* ----------------------------------------------------------------------
       Account dropdown
       ---------------------------------------------------------------------- */
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
       OTP modal — visual scaffolding only.
       Backend wiring (request_otp / verify_otp endpoints) lands in Phase B.
       ---------------------------------------------------------------------- */
    var OtpModal = {
        timer: null,
        secondsLeft: 300,
        open: function () {
            $('#slvf-otp-overlay').addClass('is-open');
            this.showStep(1);
            setTimeout(function () { $('#slvf-otp-email').focus(); }, 200);
        },
        close: function () {
            $('#slvf-otp-overlay').removeClass('is-open');
            this.stopTimer();
        },
        showStep: function (n) {
            for (var i = 1; i <= 3; i++) {
                $('#slvf-otp-step-' + i).toggleClass('slvf-otp-step--hidden', i !== n);
            }
        },
        _email: null,

        sendCode: function () {
            var email = ($('#slvf-otp-email').val() || '').trim();
            if (!OtpModal.validateEmail(email)) {
                $('#slvf-otp-email-error').text('Please enter a valid email address.').addClass('is-shown');
                return;
            }
            $('#slvf-otp-email-error').removeClass('is-shown').text('');
            OtpModal._email = email;

            var $btn = $('#slvf-otp-send-btn');
            $btn.prop('disabled', true).find('span').text('Sending…');

            $.ajax({
                url:      'handler/request_otp',
                type:     'POST',
                dataType: 'json',
                data:     { email: email },
                success: function (data) {
                    $btn.prop('disabled', false).find('span').text('Send code');
                    if (data.result === 'sent') {
                        $('#slvf-otp-sent-to').text(email);
                        $('#slvf-otp-digits .slvf-otp-digit').val('').removeClass('is-filled');
                        $('#slvf-otp-code-error').removeClass('is-shown').text('');
                        OtpModal.showStep(2);
                        OtpModal.startTimer(300);
                        setTimeout(function () {
                            $('#slvf-otp-digits .slvf-otp-digit').first().focus();
                        }, 250);
                    } else {
                        $('#slvf-otp-email-error').text('Could not send code. Please try again.').addClass('is-shown');
                    }
                },
                error: function () {
                    $btn.prop('disabled', false).find('span').text('Send code');
                    $('#slvf-otp-email-error').text('Network error. Please try again.').addClass('is-shown');
                }
            });
        },

        verify: function () {
            var code = $('#slvf-otp-digits .slvf-otp-digit').map(function () {
                return $(this).val();
            }).get().join('');

            if (code.length < 6 || !/^\d{6}$/.test(code)) {
                $('#slvf-otp-code-error').text('Enter all six digits.').addClass('is-shown');
                return;
            }
            $('#slvf-otp-code-error').removeClass('is-shown').text('');

            var $btn = $('#slvf-otp-verify-btn');
            $btn.prop('disabled', true).find('span').text('Verifying…');

            $.ajax({
                url:      'handler/verify_otp',
                type:     'POST',
                dataType: 'json',
                data:     { email: OtpModal._email, code: code },
                success: function (data) {
                    $btn.prop('disabled', false).find('span').text('Verify');
                    if (data.result === 'ok') {
                        OtpModal.stopTimer();
                        OtpModal.showStep(3);
                        // Reload so navbar reflects logged-in state
                        setTimeout(function () { w.location.reload(); }, 1500);
                    } else if (data.result === 'expired') {
                        $('#slvf-otp-code-error').text('Code expired. Request a new one.').addClass('is-shown');
                    } else {
                        $('#slvf-otp-code-error').text('Incorrect code. Please try again.').addClass('is-shown');
                        $('#slvf-otp-digits').addClass('slvf-shake');
                        setTimeout(function () { $('#slvf-otp-digits').removeClass('slvf-shake'); }, 500);
                    }
                },
                error: function () {
                    $btn.prop('disabled', false).find('span').text('Verify');
                    $('#slvf-otp-code-error').text('Network error. Please try again.').addClass('is-shown');
                }
            });
        },

        resend: function () {
            OtpModal.stopTimer();
            if (OtpModal._email) $('#slvf-otp-email').val(OtpModal._email);
            OtpModal.showStep(1);
        },

        logout: function () {
            $.ajax({
                url:  'handler/otp_logout',
                type: 'POST',
                complete: function () { w.location.reload(); }
            });
        },
        validateEmail: function (e) {
            return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(e);
        },
        startTimer: function (sec) {
            this.stopTimer();
            this.secondsLeft = sec;
            this.tick();
            this.timer = setInterval(function () { OtpModal.tick(); }, 1000);
        },
        stopTimer: function () {
            if (this.timer) { clearInterval(this.timer); this.timer = null; }
        },
        tick: function () {
            var m = Math.floor(this.secondsLeft / 60);
            var s = this.secondsLeft % 60;
            $('#slvf-otp-countdown').text(m + ':' + (s < 10 ? '0' + s : s));
            if (this.secondsLeft <= 0) {
                this.stopTimer();
                $('#slvf-otp-countdown').text('expired');
                return;
            }
            this.secondsLeft--;
        },
        initDigits: function () {
            var $digits = $('#slvf-otp-digits .slvf-otp-digit');

            $digits.on('input', function (e) {
                var $this = $(this);
                var v = $this.val().replace(/[^0-9]/g, '');
                $this.val(v);

                if (v) {
                    $this.addClass('is-filled');
                    $this.next('.slvf-otp-digit').focus();
                } else {
                    $this.removeClass('is-filled');
                }

                // Auto-verify when all six are filled
                var full = $digits.map(function () { return $(this).val(); }).get().join('');
                if (full.length === 6) {
                    setTimeout(OtpModal.verify, 120);
                }
            });

            $digits.on('keydown', function (e) {
                var $this = $(this);
                if (e.key === 'Backspace' && !$this.val()) {
                    $this.prev('.slvf-otp-digit').focus();
                }
                if (e.key === 'ArrowLeft') $this.prev('.slvf-otp-digit').focus();
                if (e.key === 'ArrowRight') $this.next('.slvf-otp-digit').focus();
            });

            $digits.on('paste', function (e) {
                var data = (e.originalEvent.clipboardData || w.clipboardData).getData('text');
                var digits = data.replace(/[^0-9]/g, '').slice(0, 6).split('');
                if (digits.length === 0) return;
                e.preventDefault();
                $digits.each(function (i) {
                    if (digits[i]) {
                        $(this).val(digits[i]).addClass('is-filled');
                    }
                });
                $digits.eq(Math.min(digits.length, 5)).focus();
                if (digits.length === 6) setTimeout(OtpModal.verify, 120);
            });
        },
        initOverlayClose: function () {
            $('#slvf-otp-overlay').on('click', function (e) {
                if (e.target === this) OtpModal.close();
            });
            $(document).on('keydown', function (e) {
                if (e.key === 'Escape' && $('#slvf-otp-overlay').hasClass('is-open')) {
                    OtpModal.close();
                }
            });
        }
    };
    w.OtpModal = OtpModal;

    /* ----------------------------------------------------------------------
       Selected files visibility hook — show the .selected-files panel
       once the legacy uploader appends an <li>.
       ---------------------------------------------------------------------- */
    var SelectedFiles = {
        init: function () {
            var $panel = $('#selected-files');
            if (!$panel.length) return;
            var $list  = $panel.find('ul');
            var observer = new MutationObserver(function () {
                $panel.toggleClass('is-shown', $list.children().length > 0);
            });
            observer.observe($list[0], { childList: true });
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

                // Pick the id that is visible AND highest in document order
                var ids = Object.keys(visible);
                if (ids.length) {
                    var ordered = $sections.toArray()
                                      .map(function (n) { return n.id; })
                                      .filter(function (i) { return visible[i] !== undefined; });
                    if (ordered.length) setActive(ordered[0]);
                }
            }, {
                // Trigger when the section's top crosses ~25% from the viewport top.
                rootMargin: '-25% 0px -65% 0px',
                threshold: [0, 0.05, 0.25, 0.5, 1]
            });

            $sections.each(function () { io.observe(this); });
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
                $('.upload-form .select-first-files').show();
                $('.upload-form .selected-files').removeClass('active');
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
       Boot
       ---------------------------------------------------------------------- */
    $(function () {
        Account.init();
        SlvfNav.init();
        TabWindow.init();
        ModeToggle.init();
        OtpModal.initDigits();
        OtpModal.initOverlayClose();
        SelectedFiles.init();
        Reveal.init();
        UploadPulse.init();
        LegalToc.init();
        DropPick.init();
        Toast._ensure();
        CopyLink.init();
        SlvfComplete.init();
        NavScroll.init();
    });

})(jQuery, window);
