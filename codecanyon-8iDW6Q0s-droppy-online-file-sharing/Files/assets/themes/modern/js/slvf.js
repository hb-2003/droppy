/* ============================================================================
   Share Large Video Files — Cinematic Studio interactions (Phase 1)
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
        init: function () {
            $(document).on('click', '#slvf-hamburger', function () {
                $(this).toggleClass('is-open');
                $('#slvf-mobile-menu').toggleClass('is-open');
            });
            $(document).on('click', '#slvf-mobile-menu a', function () {
                $('#slvf-hamburger').removeClass('is-open');
                $('#slvf-mobile-menu').removeClass('is-open');
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
                if (!$('#' + target).length) return;
                if (!$('.slvf-tab-window').length) return;
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
        sendCode: function () {
            var email = ($('#slvf-otp-email').val() || '').trim();
            if (!OtpModal.validateEmail(email)) {
                $('#slvf-otp-email-error').text('Please enter a valid email address.').addClass('is-shown');
                return;
            }
            $('#slvf-otp-email-error').removeClass('is-shown').text('');
            $('#slvf-otp-sent-to').text(email);

            // TODO Phase B: POST to /handler/request_otp here.
            OtpModal.showStep(2);
            OtpModal.startTimer(300);
            setTimeout(function () {
                $('#slvf-otp-digits .slvf-otp-digit').first().focus();
            }, 250);
        },
        verify: function () {
            var code = $('#slvf-otp-digits .slvf-otp-digit').map(function () {
                return $(this).val();
            }).get().join('');

            if (code.length < 6) {
                $('#slvf-otp-code-error').text('Enter all six digits.').addClass('is-shown');
                return;
            }
            $('#slvf-otp-code-error').removeClass('is-shown').text('');

            // TODO Phase B: POST to /handler/verify_otp here.
            OtpModal.showStep(3);
            OtpModal.stopTimer();
        },
        resend: function () {
            // TODO Phase B: POST to /handler/request_otp again.
            OtpModal.startTimer(300);
            $('#slvf-otp-digits .slvf-otp-digit').val('').removeClass('is-filled');
            $('#slvf-otp-digits .slvf-otp-digit').first().focus();
        },
        logout: function () {
            // Stub: server endpoint to clear $_SESSION['otp_verified_email']
            // lands in Phase B. For now reload to safe location.
            w.location.href = (w.siteUrl || '/') + 'handler/logout_otp';
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
    });

})(jQuery, window);
