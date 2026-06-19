import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/app/app_branding.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/modules/home/home_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';
import 'package:sendlargefiles/widgets/password_text_field.dart';

const _accentGlow = Color(0x33D4FF3B);

Color _bg(BuildContext c) => Theme.of(c).scaffoldBackgroundColor;
Color _cardBg(BuildContext c) =>
    Theme.of(c).colorScheme.surfaceContainerHighest;
Color _fieldBg(BuildContext c) => Theme.of(c).colorScheme.surface;
Color _accent(BuildContext c) => Theme.of(c).colorScheme.primary;
Color _accentInk(BuildContext c) => Theme.of(c).colorScheme.onPrimary;
Color _textDim(BuildContext c) =>
    Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.55);

/// Card / section borders — full [outlineVariant] so light mode edges stay visible.
Color _line(BuildContext c) => Theme.of(c).colorScheme.outlineVariant;

bool _isDark(BuildContext c) => Theme.of(c).brightness == Brightness.dark;

/// Shared elevated surface for home sections.
class _HomeCard extends StatelessWidget {
  const _HomeCard({
    required this.child,
    this.padding = const EdgeInsets.all(16),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: _cardBg(context),
        borderRadius: BorderRadius.circular(DroppyRadius.lg),
        border: Border.all(color: _line(context)),
        boxShadow: _isDark(context)
            ? null
            : const [
                BoxShadow(
                  color: Color(0x0A000000),
                  blurRadius: 20,
                  offset: Offset(0, 6),
                ),
              ],
      ),
      child: child,
    );
  }
}

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Theme.of(context).brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: _bg(context),
        body: SafeArea(
          child: Obx(() {
            if (controller.uploading.value &&
                !controller.awaitingVerify.value) {
              return _ProgressPane(controller: controller);
            }
            if (controller.awaitingVerify.value) {
              return _VerifyPane(controller: controller, t: t);
            }
            if (controller.pcSharing.value &&
                controller.pcShareUrl.value.isNotEmpty) {
              return _PcSuccessPane(controller: controller, t: t);
            }
            if (controller.wifiSharing.value &&
                controller.wifiShareUrl.value.isNotEmpty) {
              return _WifiSuccessPane(controller: controller, t: t);
            }
            if (controller.finishedLink.value.isNotEmpty ||
                controller.mailFinished.value) {
              return _SuccessPane(controller: controller, t: t);
            }
            return _MainForm(controller: controller, t: t);
          }),
        ),
      ),
    );
  }
}

// ── Main form ─────────────────────────────────────────────────────────────────

class _MainForm extends StatelessWidget {
  const _MainForm({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    // One [Form] wraps scroll content + upload bar so [startSend]'s context can call
    // [Form.of] without a [GlobalKey] (avoids duplicate-key crashes when more than one
    // [HomeView] is mounted with the same permanent [HomeController]).
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: const _NoOverscrollBehavior(),
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 8 + bottomPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _HomeHeader(),
                    const SizedBox(height: 20),
                    _ShareModeGrid(controller: controller),
                    const SizedBox(height: 14),
                    Obx(() {
                      if (controller.shareMode.value == 'wifi') {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: _WifiHintBanner(t: t),
                        );
                      }
                      if (controller.shareMode.value == 'pc') {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: _PcHintBanner(t: t),
                        );
                      }
                      return const SizedBox.shrink();
                    }),
                    _DropZone(controller: controller, t: t),
                    const SizedBox(height: 14),
                    Obx(() {
                      if (controller.shareMode.value != 'mail') {
                        return const SizedBox.shrink();
                      }
                      return _MailShareForm(controller: controller);
                    }),
                    Obx(() {
                      if (controller.shareMode.value == 'wifi' ||
                          controller.shareMode.value == 'pc') {
                        return const SizedBox.shrink();
                      }
                      return Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: _OptionsPanel(controller: controller, t: t),
                      );
                    }),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
          _UploadBar(controller: controller, t: t),
        ],
      ),
    );
  }
}

/// Mail-mode fields; the enclosing [_MainForm] [Form] supplies validation for [startSend].
class _MailShareForm extends StatelessWidget {
  const _MailShareForm({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final fieldStyle = _homeTextFieldStyle(context);
    return _HomeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(Icons.mail_outline_rounded, color: _accent(context), size: 18),
              const SizedBox(width: 8),
              Text(
                t.modeEmail,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Obx(() {
          final auth = Get.find<AuthRepository>();
          final locked = auth.loggedIn.value &&
              auth.sessionEmail.value.trim().isNotEmpty;
          return TextFormField(
            controller: controller.emailFromCtrl!,
            focusNode: controller.emailFromFocus,
            readOnly: locked,
            keyboardType: TextInputType.emailAddress,
            style: fieldStyle,
            decoration: _homeTextFieldDecoration(
              context,
              hint: t.emailFrom,
              prefixIcon: Icons.person_outline_rounded,
              helperText: locked ? t.mailFromUsesAccount : null,
            ),
            validator: (v) {
              final s = (v ?? '').trim();
              if (s.isEmpty) return t.fillField;
              if (!s.contains('@')) return t.enterValidEmail;
              return null;
            },
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => controller.emailToFocus.requestFocus(),
          );
        }),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller.emailToCtrl!,
          focusNode: controller.emailToFocus,
          keyboardType: TextInputType.emailAddress,
          style: fieldStyle,
          decoration: _homeTextFieldDecoration(
            context,
            hint: t.recipientEmail,
            prefixIcon: Icons.group_outlined,
            helperText: t.recipientEmailsHelper,
          ),
          validator: (v) {
            final s = (v ?? '').trim();
            if (s.isEmpty) return t.fillField;
            final emails = s
                .split(RegExp(r'[\s,;]+'))
                .map((e) => e.trim())
                .where((e) => e.isNotEmpty)
                .toList();
            if (emails.isEmpty) return t.fillField;
            for (final e in emails) {
              if (!e.contains('@')) return t.enterValidEmail;
            }
            return null;
          },
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller.messageCtrl!,
          keyboardType: TextInputType.text,
          maxLines: 3,
          style: fieldStyle,
          decoration: _homeTextFieldDecoration(
            context,
            hint: t.message,
            prefixIcon: Icons.chat_bubble_outline_rounded,
          ),
          validator: (v) {
            final s = (v ?? '').trim();
            if (s.isEmpty) return t.fillField;
            return null;
          },
        ),
        const SizedBox(height: 12),
        ],
      ),
    );
  }
}

// ── Home header ───────────────────────────────────────────────────────────────

class _HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppBranding.heroTitle(t),
            style: TextStyle(
              color: scheme.onSurface,
              fontSize: 28,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.8,
              height: 1.05,
            ),
          ),
          Text(
            AppBranding.heroAccent(t),
            style: AppTheme.heroAccent(color: scheme.primary, fontSize: 28),
          ),
          const SizedBox(height: 12),
          Container(
            height: 3,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99),
              gradient: LinearGradient(
                colors: [
                  scheme.primary,
                  scheme.primary.withValues(alpha: 0.15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Share mode cards ──────────────────────────────────────────────────────────

class _ShareModeGrid extends StatelessWidget {
  const _ShareModeGrid({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Obx(() {
      final mode = controller.shareMode.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: _ModeFeatureCard(
                  icon: Icons.link_rounded,
                  pillLabel: t.share,
                  headline: t.modeLink,
                  themeColor: _accent(context),
                  selected: mode == 'link',
                  onTap: () => controller.setShareMode('link'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ModeFeatureCard(
                  icon: Icons.mail_outline_rounded,
                  pillLabel: t.share,
                  headline: t.modeEmail,
                  themeColor: DroppyWebColors.info,
                  selected: mode == 'mail',
                  onTap: () => controller.setShareMode('mail'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _ModeFeatureCard(
                  icon: Icons.wifi_rounded,
                  pillLabel: t.share,
                  headline: t.modeWifi,
                  themeColor: DroppyWebColors.success,
                  selected: mode == 'wifi',
                  onTap: () => controller.setShareMode('wifi'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ModeFeatureCard(
                  icon: Icons.computer_rounded,
                  pillLabel: t.share,
                  headline: t.modePc,
                  themeColor: DroppyWebColors.warm,
                  selected: mode == 'pc',
                  onTap: () => controller.setShareMode('pc'),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _ModeFeatureCard extends StatelessWidget {
  const _ModeFeatureCard({
    required this.icon,
    required this.pillLabel,
    required this.headline,
    required this.themeColor,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String pillLabel;
  final String headline;
  final Color themeColor;
  final bool selected;
  final VoidCallback onTap;

  Color _iconOnCircle(Color c) =>
      c.computeLuminance() > 0.55 ? DroppyWebColors.accentInk : Colors.white;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final isDark = _isDark(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(26),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          height: 124,
          decoration: BoxDecoration(
            color: isDark ? DroppyWebColors.ink700 : Colors.white,
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
              color: selected
                  ? themeColor.withValues(alpha: 0.65)
                  : _line(context).withValues(alpha: isDark ? 1 : 0.7),
              width: selected ? 2 : 1,
            ),
            boxShadow: [
              if (!isDark)
                BoxShadow(
                  color: selected
                      ? themeColor.withValues(alpha: 0.18)
                      : const Color(0x0F000000),
                  blurRadius: selected ? 22 : 16,
                  offset: const Offset(0, 8),
                ),
              if (isDark && selected)
                BoxShadow(
                  color: themeColor.withValues(alpha: 0.14),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned(
                right: -28,
                bottom: -28,
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: themeColor.withValues(alpha: isDark ? 0.14 : 0.1),
                  ),
                ),
              ),
              Positioned(
                right: 14,
                bottom: 14,
                child: Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: themeColor,
                    boxShadow: [
                      BoxShadow(
                        color: themeColor.withValues(alpha: 0.35),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Icon(
                    icon,
                    size: 18,
                    color: _iconOnCircle(themeColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 52, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: themeColor.withValues(alpha: isDark ? 0.16 : 0.12),
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Text(
                        pillLabel,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: themeColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      headline,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: scheme.onSurface,
                        fontSize: headline.length <= 4 ? 24 : 15,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.4,
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Drop Zone ────────────────────────────────────────────────────────────────

class _DropZone extends StatelessWidget {
  const _DropZone({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final fileCount = controller.files.length;
      if (fileCount == 0) return _DropZoneEmpty(controller: controller, t: t);
      return _DropZoneFilled(controller: controller, t: t);
    });
  }
}

class _DropZoneEmpty extends StatelessWidget {
  const _DropZoneEmpty({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final maxLabel = controller.effectiveMaxLabel;

    return Obx(() {
      final busy = controller.pickingFiles.value;
      Future<void> onPick() async {
        if (busy) return;
        await controller.pickFiles();
      }

      return _HomeCard(
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: busy ? null : onPick,
            borderRadius: BorderRadius.circular(DroppyRadius.lg),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(DroppyRadius.lg),
                color: _accent(context).withValues(alpha: _isDark(context) ? 0.04 : 0.05),
              ),
              child: Column(
                children: [
                  _FileIllustration(),
                  const SizedBox(height: 16),
                  Text(
                    t.dropHeavyFile,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    t.upToTotal(maxLabel),
                    style: AppTheme.meta(color: _textDim(context)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 14),
                  _FiletypeChips(),
                  const SizedBox(height: 18),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      FilledButton.tonalIcon(
                        onPressed: busy ? null : onPick,
                        style: FilledButton.styleFrom(
                          backgroundColor: _accent(context).withValues(alpha: 0.14),
                          foregroundColor: _accent(context),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          textStyle: const TextStyle(
                            inherit: false,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        icon: busy
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Icon(Icons.add_rounded, size: 18),
                        label: Text(
                          busy ? t.loadingShort : t.pickFiles,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: busy ? null : controller.pickFolder,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.75),
                          side: BorderSide(color: _line(context)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          textStyle: const TextStyle(
                            inherit: false,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        icon: const Icon(Icons.folder_open_rounded, size: 18),
                        label: Text(
                          t.pickFolder,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

class _FileIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final rear = scheme.surfaceContainerHigh;
    final edge = _line(context);
    final accent = scheme.primary.withValues(alpha: 0.12);
    return SizedBox(
      height: 56,
      width: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 6,
            child: Transform.rotate(
              angle: -0.22,
              child: _FileCard(color: rear, border: edge),
            ),
          ),
          Positioned(
            right: 0,
            top: 6,
            child: Transform.rotate(
              angle: 0.22,
              child: _FileCard(color: rear, border: edge),
            ),
          ),
          _FileCard(
            color: accent,
            border: edge,
            child: Icon(
              Icons.add_rounded,
              size: 20,
              color: scheme.onSurface.withValues(alpha: 0.45),
            ),
          ),
        ],
      ),
    );
  }
}

class _FileCard extends StatelessWidget {
  const _FileCard({this.color, this.border, this.child});
  final Color? color;
  final Color? border;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: 36,
      height: 46,
      decoration: BoxDecoration(
        color: color ?? scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: border ?? _line(context), width: 1),
      ),
      child: child != null ? Center(child: child) : null,
    );
  }
}

class _DropZoneFilled extends StatelessWidget {
  const _DropZoneFilled({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final totalBytes = controller.files.fold<int>(0, (s, f) => s + f.size);
    final totalMb = totalBytes / (1024 * 1024);
    final maxBytes = controller.effectiveMaxBytes;
    final remainBytes = (maxBytes - totalBytes).clamp(0, maxBytes);
    final remainMb = remainBytes / (1024 * 1024);

    final usage = maxBytes > 0 ? (totalBytes / maxBytes).clamp(0.0, 1.0) : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _HomeCard(
          padding: EdgeInsets.zero,
          child: Obx(() {
            final busy = controller.pickingFiles.value;
            Future<void> onPick() async {
              if (busy) return;
              await controller.pickFiles();
            }

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 14, 8, 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.folder_copy_outlined,
                        size: 18,
                        color: _accent(context),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          t.filesCount(controller.files.length),
                          style: TextStyle(
                            color: scheme.onSurface,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: controller.removeAllFiles,
                        style: TextButton.styleFrom(
                          foregroundColor: scheme.error,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          t.removeAll,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(99),
                    child: LinearProgressIndicator(
                      value: usage,
                      minHeight: 5,
                      backgroundColor: scheme.onSurface.withValues(alpha: 0.08),
                      color: usage > 0.85 ? scheme.error : _accent(context),
                    ),
                  ),
                ),
                ...controller.files.asMap().entries.map((entry) {
                  final i = entry.key;
                  final f = entry.value;
                  final sizeMb = (f.size / (1024 * 1024)).toStringAsFixed(1);
                  return Column(
                    children: [
                      if (i > 0)
                        Divider(
                          height: 1,
                          indent: 16,
                          endIndent: 16,
                          color: _line(context).withValues(alpha: 0.55),
                        ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 10, 8, 10),
                        child: Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: scheme.onSurface.withValues(alpha: 0.06),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.insert_drive_file_outlined,
                                color: scheme.onSurface.withValues(alpha: 0.45),
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    f.displayName,
                                    style: TextStyle(
                                      color: scheme.onSurface,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    t.mbAmount(sizeMb),
                                    style: TextStyle(
                                      color: scheme.onSurface.withValues(
                                        alpha: 0.45,
                                      ),
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.close_rounded,
                                size: 16,
                                color: scheme.onSurface.withValues(
                                  alpha: 0.45,
                                ),
                              ),
                              onPressed: () => controller.removeFile(f),
                              visualDensity: VisualDensity.compact,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: busy ? null : onPick,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            size: 16,
                            color: _accent(context),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            busy ? t.adding : t.addFiles,
                            style: TextStyle(
                              color: _accent(context),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
        const SizedBox(height: 10),
        _HomeCard(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              _StatPill(
                label: t.mbAmount(totalMb.toStringAsFixed(1)),
                icon: Icons.data_usage_rounded,
              ),
              const SizedBox(width: 8),
              _StatPill(
                label: t.filesCount(controller.files.length),
                icon: Icons.description_outlined,
              ),
              const Spacer(),
              Text(
                t.mbLeft(remainMb.toStringAsFixed(1)),
                style: AppTheme.meta(color: _textDim(context)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Obx(() {
          final busy = controller.pickingFiles.value;
          return Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: busy ? null : controller.pickFiles,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: scheme.onSurface.withValues(alpha: 0.75),
                    disabledForegroundColor: scheme.onSurface.withValues(
                      alpha: 0.38,
                    ),
                    side: BorderSide(color: _line(context)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    textStyle: const TextStyle(
                      inherit: false,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  icon: busy
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.add_rounded, size: 16),
                  label: Text(busy ? t.adding : t.addFiles),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: busy ? null : controller.pickFolder,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: scheme.onSurface.withValues(alpha: 0.75),
                    disabledForegroundColor: scheme.onSurface.withValues(
                      alpha: 0.38,
                    ),
                    side: BorderSide(color: _line(context)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    textStyle: const TextStyle(
                      inherit: false,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  icon: const Icon(Icons.folder_open_rounded, size: 16),
                  label: Text(t.pickFolder),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}

// ── File stats pill ───────────────────────────────────────────────────────────

class _StatPill extends StatelessWidget {
  const _StatPill({required this.label, required this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: scheme.onSurface.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: _textDim(context)),
          const SizedBox(width: 4),
          Text(label, style: AppTheme.meta(color: _textDim(context))),
        ],
      ),
    );
  }
}

// ── Options panel ─────────────────────────────────────────────────────────────

class _OptionsPanel extends StatefulWidget {
  const _OptionsPanel({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  State<_OptionsPanel> createState() => _OptionsPanelState();
}

class _OptionsPanelState extends State<_OptionsPanel> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return _HomeCard(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => setState(() => _expanded = !_expanded),
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: _accent(context).withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.tune_rounded,
                      color: _accent(context),
                      size: 16,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      widget.t.options,
                      style: TextStyle(
                        color: scheme.onSurface,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurface.withValues(alpha: 0.55),
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          if (_expanded) ...[
            Divider(height: 1, color: _line(context).withValues(alpha: 0.55)),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _DarkField(
                    ctrl: widget.controller.passwordCtrl!,
                    hint: widget.t.passwordOptional,
                    prefixIcon: Icons.lock_outline_rounded,
                    obscureText: true,
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.t.selfDestruct,
                          style: TextStyle(
                            color: scheme.onSurface.withValues(alpha: 0.65),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Obx(
                        () => Switch(
                          value: widget.controller.destruct.value == 'yes',
                          onChanged: (v) => widget.controller.destruct.value = v
                              ? 'yes'
                              : 'no',
                          activeThumbColor: _accent(context),
                          inactiveTrackColor: scheme.outlineVariant.withValues(
                            alpha: 0.35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  _ExpiryDropdown(controller: widget.controller),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ExpiryDropdown extends StatelessWidget {
  const _ExpiryDropdown({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final options = controller.expiryOptionsSec;
    if (options.isEmpty) return const SizedBox.shrink();

    return Obx(() {
      final current = controller.expireSec.value;
      final value = options.contains(current) ? current : options.first;
      if (value != current) controller.expireSec.value = value;

      return DropdownButtonFormField<int>(
        initialValue: value,
        dropdownColor: _cardBg(context),
        iconEnabledColor: scheme.onSurface.withValues(alpha: 0.6),
        style: TextStyle(color: scheme.onSurface, fontSize: 13),
        decoration: InputDecoration(
          labelText: t.expiry,
          labelStyle: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.65),
          ),
          filled: true,
          fillColor: _fieldBg(context),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: _line(context)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: _line(context)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: scheme.primary, width: 1.5),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 12,
          ),
        ),
        items: options
            .map(
              (s) => DropdownMenuItem<int>(
                value: s,
                child: Text(HomeController.expiryLabel(s)),
              ),
            )
            .toList(),
        onChanged: (v) {
          if (v == null) return;
          controller.expireSec.value = v;
        },
      );
    });
  }
}

// ── Shared home text field decoration ─────────────────────────────────────────

InputDecoration _homeTextFieldDecoration(
  BuildContext context, {
  required String hint,
  IconData? prefixIcon,
  String? helperText,
}) {
  final scheme = Theme.of(context).colorScheme;
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(
      color: scheme.onSurface.withValues(alpha: 0.35),
      fontSize: 14,
    ),
    helperText: helperText,
    helperStyle: TextStyle(
      color: scheme.onSurface.withValues(alpha: 0.45),
      fontSize: 12,
      height: 1.25,
    ),
    filled: true,
    fillColor: _fieldBg(context),
    prefixIcon: prefixIcon != null
        ? Icon(
            prefixIcon,
            color: scheme.onSurface.withValues(alpha: 0.55),
            size: 18,
          )
        : null,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: _line(context)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: _line(context)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: scheme.primary, width: 1.5),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  );
}

TextStyle _homeTextFieldStyle(BuildContext context) {
  return TextStyle(
    color: Theme.of(context).colorScheme.onSurface,
    fontSize: 14,
  );
}

// ── Shared dark field ─────────────────────────────────────────────────────────

class _DarkField extends StatelessWidget {
  const _DarkField({
    required this.ctrl,
    required this.hint,
    this.prefixIcon,
    this.obscureText = false,
  });
  final TextEditingController ctrl;
  final String hint;
  final IconData? prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final decoration = _homeTextFieldDecoration(
      context,
      hint: hint,
      prefixIcon: prefixIcon,
    );

    if (obscureText) {
      return PasswordTextField(
        controller: ctrl,
        style: _homeTextFieldStyle(context),
        decoration: decoration,
      );
    }

    return TextField(
      controller: ctrl,
      style: _homeTextFieldStyle(context),
      decoration: decoration,
    );
  }
}

// ── Progress pane ─────────────────────────────────────────────────────────────

class _ProgressPane extends StatelessWidget {
  const _ProgressPane({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Obx(() {
        final p = controller.progress.value.clamp(0.0, 1.0);
        final pctLabel = (p * 100).toStringAsFixed(1);
        final sent = controller.uploadSentBytes.value;
        final total = controller.uploadTotalBytes.value;
        final remaining = (total - sent).clamp(0, total);
        String fmt(int b) {
          const kb = 1024.0;
          const mb = kb * 1024.0;
          const gb = mb * 1024.0;
          if (b >= gb) return '${(b / gb).toStringAsFixed(2)} GB';
          if (b >= mb) return '${(b / mb).toStringAsFixed(1)} MB';
          if (b >= kb) return '${(b / kb).toStringAsFixed(0)} KB';
          return '$b B';
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox.expand(
                    child: CircularProgressIndicator(
                      value: p,
                      strokeWidth: 8,
                      backgroundColor: scheme.surfaceContainerHigh,
                      color: scheme.primary,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$pctLabel%',
                        style: Theme.of(context).textTheme.displayMedium!
                            .copyWith(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(t.uploading, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(
              t.uploadProgressSummary(fmt(sent), fmt(total), fmt(remaining)),
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: controller.cancelUpload,
              icon: const Icon(Icons.close_rounded, size: 18),
              label: Text(t.cancelUpload),
            ),
          ],
        );
      }),
    );
  }
}

// ── Wi‑Fi hint ────────────────────────────────────────────────────────────────

class _WifiHintBanner extends StatelessWidget {
  const _WifiHintBanner({required this.t});
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return _HomeCard(
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.wifi_rounded, color: _accent(context), size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.wifiShareHint,
                  style: TextStyle(
                    color: scheme.onSurface,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.35,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  t.wifiSameNetworkHint,
                  style: TextStyle(
                    color: scheme.onSurface.withValues(alpha: 0.55),
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── Wi‑Fi success pane ────────────────────────────────────────────────────────

class _WifiSuccessPane extends StatelessWidget {
  const _WifiSuccessPane({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    final url = controller.wifiShareUrl.value;
    return ListView(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 32 + bottomPad),
      children: [
        Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.12),
              shape: BoxShape.circle,
              border: Border.all(
                color: _accent(context).withValues(alpha: 0.4),
                width: 1.5,
              ),
              boxShadow: const [
                BoxShadow(color: _accentGlow, blurRadius: 40, spreadRadius: 0),
              ],
            ),
            child: Icon(Icons.wifi_rounded, color: _accent(context), size: 38),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          t.wifiShareReady,
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 26,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          t.wifiShareReadyBody,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: _line(context)),
            ),
            child: QrImageView(
              data: url,
              size: 196,
              backgroundColor: Colors.white,
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Color(0xFF0A0C14),
              ),
              dataModuleStyle: const QrDataModuleStyle(
                color: Color(0xFF0A0C14),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          t.scanQr,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _cardBg(context),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: _line(context)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.receiveWifiUrlLabel,
                style: TextStyle(
                  color: scheme.onSurface.withValues(alpha: 0.45),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      url,
                      style: TextStyle(
                        color: _accent(context),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: url));
                      AppSnack.success(t.snackCopied, t.snackCopiedBody);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: scheme.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: _line(context)),
                      ),
                      child: Icon(
                        Icons.copy_rounded,
                        color: scheme.onSurface.withValues(alpha: 0.55),
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _AccentButton(
          label: t.share,
          icon: Icons.share_rounded,
          onTap: controller.shareResult,
        ),
        const SizedBox(height: 10),
        _OutlineButton(label: t.shareQrCode, onTap: controller.shareQrCode),
        const SizedBox(height: 10),
        _OutlineButton(
          label: t.uploadMore,
          onTap: controller.resetForNewTransfer,
        ),
      ],
    );
  }
}

// ── PC hint ───────────────────────────────────────────────────────────────────

class _PcHintBanner extends StatelessWidget {
  const _PcHintBanner({required this.t});
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return _HomeCard(
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.computer_rounded, color: _accent(context), size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.pcShareHint,
                  style: TextStyle(
                    color: scheme.onSurface,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 1.35,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  t.wifiSameNetworkHint,
                  style: TextStyle(
                    color: scheme.onSurface.withValues(alpha: 0.55),
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ── PC success pane ───────────────────────────────────────────────────────────

class _PcSuccessPane extends StatelessWidget {
  const _PcSuccessPane({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    final url = controller.pcShareUrl.value;
    return ListView(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 32 + bottomPad),
      children: [
        Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.12),
              shape: BoxShape.circle,
              border: Border.all(
                color: _accent(context).withValues(alpha: 0.4),
                width: 1.5,
              ),
              boxShadow: const [
                BoxShadow(color: _accentGlow, blurRadius: 40, spreadRadius: 0),
              ],
            ),
            child: Icon(Icons.computer_rounded, color: _accent(context), size: 38),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          t.pcShareReady,
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 26,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          t.pcShareReadyBody,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: _line(context)),
            ),
            child: QrImageView(
              data: url,
              size: 196,
              backgroundColor: Colors.white,
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Color(0xFF0A0C14),
              ),
              dataModuleStyle: const QrDataModuleStyle(
                color: Color(0xFF0A0C14),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          t.pcOpenInBrowser,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _cardBg(context),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: _line(context)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.pcBrowserUrlLabel,
                style: TextStyle(
                  color: scheme.onSurface.withValues(alpha: 0.45),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      url,
                      style: TextStyle(
                        color: _accent(context),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: url));
                      AppSnack.success(t.snackCopied, t.snackCopiedBody);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: scheme.surfaceContainerLow,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: _line(context)),
                      ),
                      child: Icon(
                        Icons.copy_rounded,
                        color: scheme.onSurface.withValues(alpha: 0.55),
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        _AccentButton(
          label: t.share,
          icon: Icons.share_rounded,
          onTap: controller.shareResult,
        ),
        const SizedBox(height: 10),
        _OutlineButton(label: t.shareQrCode, onTap: controller.shareQrCode),
        const SizedBox(height: 10),
        _OutlineButton(
          label: t.uploadMore,
          onTap: controller.resetForNewTransfer,
        ),
      ],
    );
  }
}

// ── Success pane ──────────────────────────────────────────────────────────────

class _SuccessPane extends StatelessWidget {
  const _SuccessPane({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    return ListView(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 32 + bottomPad),
      children: [
        Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.12),
              shape: BoxShape.circle,
              border: Border.all(
                color: _accent(context).withValues(alpha: 0.4),
                width: 1.5,
              ),
              boxShadow: const [
                BoxShadow(color: _accentGlow, blurRadius: 40, spreadRadius: 0),
              ],
            ),
            child: Icon(Icons.check_rounded, color: _accent(context), size: 38),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          controller.finishedLink.value.isNotEmpty
              ? t.transferReady
              : t.emailSentReady,
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 26,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          controller.finishedLink.value.isNotEmpty
              ? t.shareRecipientHint
              : t.emailSentBody,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        if (controller.finishedLink.value.isNotEmpty) ...[
          Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: _line(context)),
              ),
              child: QrImageView(
                data: controller.finishedLink.value,
                size: 196,
                backgroundColor: Colors.white,
                eyeStyle: const QrEyeStyle(
                  eyeShape: QrEyeShape.square,
                  color: Color(0xFF0A0C14),
                ),
                dataModuleStyle: const QrDataModuleStyle(
                  color: Color(0xFF0A0C14),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            t.scanQr,
            style: TextStyle(
              color: scheme.onSurface.withValues(alpha: 0.55),
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: _cardBg(context),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: _line(context)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.shareLinkButton,
                  style: TextStyle(
                    color: scheme.onSurface.withValues(alpha: 0.45),
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: SelectableText(
                        controller.finishedLink.value,
                        style: TextStyle(
                          color: _accent(context),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(
                          ClipboardData(text: controller.finishedLink.value),
                        );
                        AppSnack.success(t.snackCopied, t.snackCopiedBody);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: scheme.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: _line(context)),
                        ),
                        child: Icon(
                          Icons.copy_rounded,
                          color: scheme.onSurface.withValues(alpha: 0.55),
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          _AccentButton(
            label: t.share,
            icon: Icons.share_rounded,
            onTap: controller.shareResult,
          ),
          const SizedBox(height: 10),
          _OutlineButton(label: t.shareQrCode, onTap: controller.shareQrCode),
          const SizedBox(height: 10),
        ],
        _OutlineButton(
          label: t.uploadMore,
          onTap: controller.resetForNewTransfer,
        ),
      ],
    );
  }
}

// ── Verify pane ───────────────────────────────────────────────────────────────

class _VerifyPane extends StatelessWidget {
  const _VerifyPane({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    return ListView(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 32 + bottomPad),
      children: [
        Center(
          child: Icon(
            Icons.mark_email_unread_outlined,
            color: _accent(context),
            size: 56,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          t.verifyEmailTitle,
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          t.verifyFourDigit,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.55),
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Builder(
          builder: (context) {
            final addr = controller.resolvedSenderEmail().trim();
            if (addr.isEmpty) return const SizedBox.shrink();
            return Text(
              t.verifyEmailCheckSpamHint(addr),
              style: TextStyle(
                color: scheme.onSurface.withValues(alpha: 0.5),
                fontSize: 13,
                height: 1.35,
              ),
              textAlign: TextAlign.center,
            );
          },
        ),
        const SizedBox(height: 28),
        TextField(
          controller: controller.verifyController,
          keyboardType: TextInputType.number,
          maxLength: 4,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 28,
            letterSpacing: 8,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            hintText: t.verifyFourDigitHint,
            hintStyle: TextStyle(
              color: scheme.onSurface.withValues(alpha: 0.28),
              letterSpacing: 4,
              fontSize: 24,
            ),
            counterText: '',
            filled: true,
            fillColor: _fieldBg(context),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: _line(context)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: _line(context)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              borderSide: BorderSide(color: _accent(context), width: 1.5),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Obx(
          () => _AccentButton(
            label: t.verifySubmit,
            onTap: controller.uploading.value
                ? null
                : controller.submitVerifyAndUpload,
          ),
        ),
        const SizedBox(height: 12),
        Center(
          child: Obx(() {
            final busy =
                controller.uploading.value || controller.resendVerifyBusy.value;
            return TextButton(
              onPressed: busy
                  ? null
                  : () => controller.resendUploadVerifyCode(context),
              child: Text(t.verifyResendCode),
            );
          }),
        ),
      ],
    );
  }
}

// ── Shared buttons ────────────────────────────────────────────────────────────

class _AccentButton extends StatelessWidget {
  const _AccentButton({required this.label, this.icon, this.onTap});
  final String label;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final enabled = onTap != null;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: enabled
              ? scheme.primary
              : scheme.onSurface.withValues(alpha: 0.10),
          borderRadius: BorderRadius.circular(50),
          boxShadow: enabled
              ? const [
                  BoxShadow(
                    color: _accentGlow,
                    blurRadius: 20,
                    offset: Offset(0, 4),
                  ),
                ]
              : null,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: enabled
                    ? scheme.onPrimary
                    : scheme.onSurface.withValues(alpha: 0.45),
                size: 18,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: TextStyle(
                color: enabled
                    ? scheme.onPrimary
                    : scheme.onSurface.withValues(alpha: 0.45),
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  const _OutlineButton({required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: _line(context)),
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: scheme.onSurface.withValues(alpha: 0.72),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// ── Missing UI helpers (were referenced but not implemented) ───────────────

class _UploadBar extends StatelessWidget {
  const _UploadBar({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _cardBg(context),
        border: Border(top: BorderSide(color: _line(context))),
        boxShadow: _isDark(context)
            ? null
            : const [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: 16,
                  offset: Offset(0, -4),
                ),
              ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: Obx(() {
            if (controller.files.isEmpty) {
              return const SizedBox.shrink();
            }

            final disabled =
                controller.uploading.value || controller.pickingFiles.value;
            return FilledButton(
              onPressed: disabled ? null : () => controller.startSend(context),
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(DroppyRadius.pill),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (controller.pickingFiles.value) ...[
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: _accentInk(context),
                      ),
                    ),
                  ] else ...[
                    const Icon(Icons.send_rounded, size: 18),
                  ],
                  const SizedBox(width: 8),
                  Text(
                    controller.pickingFiles.value
                        ? 'Starting…'
                        : (controller.shareMode.value == 'pc'
                            ? t.pcStartSharing
                            : controller.shareMode.value == 'wifi'
                                ? t.wifiStartSharing
                                : t.sendButton),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _FiletypeChips extends StatelessWidget {
  const _FiletypeChips();

  @override
  Widget build(BuildContext context) {
    final labels = ['MP4', 'MOV', 'ZIP', 'PSD', 'WAV'];
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: labels.map((label) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            color: _accent(context).withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: _accent(context).withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: Text(
            label,
            style: AppTheme.meta(color: _textDim(context)).copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),
          ),
        );
      }).toList(),
    );
  }
}

/// Prevents glow/stretch overscroll so the top doesn't "pull down" into empty space.
class _NoOverscrollBehavior extends ScrollBehavior {
  const _NoOverscrollBehavior();

  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
