import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/modules/home/home_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';
import 'package:sendlargefiles/widgets/app_top_bar.dart';

const _accentGlow = Color(0x33D4FF3B);

Color _bg(BuildContext c) => Theme.of(c).scaffoldBackgroundColor;
Color _cardBg(BuildContext c) => Theme.of(c).colorScheme.surfaceContainerHighest;
Color _fieldBg(BuildContext c) => Theme.of(c).colorScheme.surface;
Color _tabBg(BuildContext c) => Theme.of(c).colorScheme.surfaceContainerHighest;
Color _accent(BuildContext c) => Theme.of(c).colorScheme.primary;
Color _textDim(BuildContext c) => Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.55);
/// Card / section borders — full [outlineVariant] so light mode edges stay visible.
Color _line(BuildContext c) => Theme.of(c).colorScheme.outlineVariant;

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
            if (controller.uploading.value && !controller.awaitingVerify.value) {
              return _ProgressPane(controller: controller);
            }
            if (controller.awaitingVerify.value) {
              return _VerifyPane(controller: controller, t: t);
            }
            if (controller.finishedLink.value.isNotEmpty || controller.mailFinished.value) {
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
    final scheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        AppTopBar(
          title: 'Home',
          subtitle: 'Send large files securely.',
          trailing: Obx(() {
            final loggedIn = Get.find<AuthRepository>().loggedIn.value;
            if (loggedIn) return const SizedBox.shrink();
            return TextButton(
              onPressed: () => Get.toNamed('/login'),
              child: Text(
                'Login',
                style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.7), fontWeight: FontWeight.w800),
              ),
            );
          }),
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: const _NoOverscrollBehavior(),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 8 + bottomPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Hero text
                  _HeroText(),
                  const SizedBox(height: 16),
                  _TabSwitcher(controller: controller),
                  const SizedBox(height: 14),
                  _DropZone(controller: controller, t: t),
                  const SizedBox(height: 12),
                  // Email fields (mail mode only). Do not read [mailFormKey] inside Obx — GetX treats
                  // unknown controller getters as Rx and throws "Lookup failed: mailFormKey".
                  Obx(() {
                    if (controller.shareMode.value != 'mail') {
                      return const SizedBox.shrink();
                    }
                    return _MailShareForm(controller: controller);
                  }),
                  _OptionsPanel(controller: controller, t: t),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
        _UploadBar(controller: controller, t: t),
      ],
    );
  }
}

/// Mail-mode [Form] lives here so `mailFormKey` is never read inside an [Obx] closure
/// (GetX would mis-resolve it as a reactive getter).
class _MailShareForm extends StatelessWidget {
  const _MailShareForm({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.mailFormKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: controller.emailFromCtrl!,
            focusNode: controller.emailFromFocus,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Your email',
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                size: 18,
              ),
            ),
            validator: (v) {
              final s = (v ?? '').trim();
              if (s.isEmpty) return 'Please fill in this field.';
              if (!s.contains('@')) return 'Enter a valid email.';
              return null;
            },
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => controller.emailToFocus.requestFocus(),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller.emailToCtrl!,
            focusNode: controller.emailToFocus,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Recipient email',
              prefixIcon: Icon(
                Icons.group_outlined,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                size: 18,
              ),
            ),
            validator: (v) {
              final s = (v ?? '').trim();
              if (s.isEmpty) return 'Please fill in this field.';
              final first = s.split(RegExp(r'[\s,;]+')).firstWhere(
                    (x) => x.trim().isNotEmpty,
                    orElse: () => '',
                  );
              if (first.isEmpty || !first.contains('@')) return 'Enter a valid email.';
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
            decoration: InputDecoration(
              hintText: 'Message',
              prefixIcon: Icon(
                Icons.chat_bubble_outline_rounded,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                size: 18,
              ),
            ),
            validator: (v) {
              final s = (v ?? '').trim();
              if (s.isEmpty) return 'Please fill in this field.';
              return null;
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

// ── Hero text ─────────────────────────────────────────────────────────────────

class _HeroText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Send heavy files',
          style: TextStyle(
            color: scheme.onSurface,
            fontSize: 26,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
            height: 1.1,
          ),
        ),
        Text(
          'instantly.',
          style: AppTheme.heroAccent(color: scheme.primary, fontSize: 26),
        ),
      ],
    );
  }
}

// ── Tab switcher ─────────────────────────────────────────────────────────────

class _TabSwitcher extends StatelessWidget {
  const _TabSwitcher({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final mode = controller.shareMode.value;
      return Container(
        height: 46,
        decoration: BoxDecoration(
          color: _tabBg(context),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: _line(context), width: 1),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: _TabBtn(
                label: 'Get a link',
                selected: mode == 'link',
                onTap: () => controller.setShareMode('link'),
              ),
            ),
            Expanded(
              flex: 11,
              child: _TabBtn(
                label: 'Send by email',
                selected: mode == 'mail',
                onTap: () => controller.setShareMode('mail'),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class _TabBtn extends StatelessWidget {
  const _TabBtn({required this.label, required this.selected, required this.onTap});
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
        child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: selected ? scheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: selected ? scheme.onPrimary : scheme.onSurface.withValues(alpha: 0.6),
            fontSize: 13,
            fontWeight: selected ? FontWeight.w700 : FontWeight.w400,
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

      return Column(
        children: [
          GestureDetector(
            onTap: busy ? null : onPick,
            behavior: HitTestBehavior.opaque,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: _line(context), width: 1.5),
              ),
              child: Column(
                children: [
                  _FileIllustration(),
                  const SizedBox(height: 12),
                  Text(
                    'Drop a heavy file here.',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text('Up to $maxLabel total', style: AppTheme.meta(), textAlign: TextAlign.center),
                  const SizedBox(height: 12),
                  _FiletypeChips(),
                  const SizedBox(height: 14),
                  TextButton.icon(
                    onPressed: busy ? null : onPick,
                    style: TextButton.styleFrom(
                      foregroundColor: _accent(context),
                      disabledForegroundColor:
                          Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.38),
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
                        : const Icon(Icons.folder_open_rounded, size: 18),
                    label: Text(busy ? 'Loading…' : t.pickFiles),
                  ),
                ],
              ),
            ),
          ),
        ],
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
            child: Transform.rotate(angle: -0.22, child: _FileCard(color: rear, border: edge)),
          ),
          Positioned(
            right: 0,
            top: 6,
            child: Transform.rotate(angle: 0.22, child: _FileCard(color: rear, border: edge)),
          ),
          _FileCard(
            color: accent,
            border: edge,
            child: Icon(Icons.add_rounded, size: 20, color: scheme.onSurface.withValues(alpha: 0.45)),
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
    final remainBytes =
        (maxBytes - totalBytes).clamp(0, maxBytes);
    final remainMb = remainBytes / (1024 * 1024);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Obx(() {
          final busy = controller.pickingFiles.value;
          Future<void> onPick() async {
            if (busy) return;
            await controller.pickFiles();
          }

          return GestureDetector(
            onTap: busy ? null : onPick,
            behavior: HitTestBehavior.translucent,
            child: Container(
              decoration: BoxDecoration(
                color: _cardBg(context),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: _line(context)),
              ),
              child: Column(
                children: [
                  ...controller.files.asMap().entries.map((entry) {
                final i = entry.key;
                final f = entry.value;
                final sizeMb = (f.size / (1024 * 1024)).toStringAsFixed(1);
                return Column(
                  children: [
                    if (i > 0) Divider(height: 1, color: _line(context).withValues(alpha: 0.55)),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 10, 8, 10),
                      child: Row(
                        children: [
                          Icon(Icons.insert_drive_file_outlined, color: scheme.onSurface.withValues(alpha: 0.45), size: 18),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(f.name, style: TextStyle(color: scheme.onSurface, fontSize: 13, fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis),
                                Text('$sizeMb MB', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.45), fontSize: 11)),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.close_rounded, size: 16, color: scheme.onSurface.withValues(alpha: 0.45)),
                            onPressed: () => controller.removeFile(f),
                            visualDensity: VisualDensity.compact,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
                ],
              ),
            ),
          );
        }),
        const SizedBox(height: 8),
        Row(
          children: [
            Text('${totalMb.toStringAsFixed(1)} MB', style: AppTheme.meta()),
            const SizedBox(width: 6),
            Container(width: 1, height: 10, color: _line(context)),
            const SizedBox(width: 6),
            Text('${controller.files.length} file${controller.files.length == 1 ? '' : 's'}',
                style: AppTheme.meta()),
            const SizedBox(width: 6),
            Container(width: 1, height: 10, color: _line(context)),
            const SizedBox(width: 6),
            Text('${remainMb.toStringAsFixed(1)} MB left', style: AppTheme.meta()),
          ],
        ),
        const SizedBox(height: 10),
        Obx(
          () => OutlinedButton.icon(
            onPressed: controller.pickingFiles.value ? null : controller.pickFiles,
            style: OutlinedButton.styleFrom(
              foregroundColor: scheme.onSurface.withValues(alpha: 0.75),
              disabledForegroundColor: scheme.onSurface.withValues(alpha: 0.38),
              side: BorderSide(color: _line(context)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              textStyle: const TextStyle(
                inherit: false,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            icon: controller.pickingFiles.value
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.add_rounded, size: 16),
            label: Text(controller.pickingFiles.value ? 'Adding…' : 'Add more files'),
          ),
        ),
      ],
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
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: _cardBg(context),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: _line(context)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => setState(() => _expanded = !_expanded),
            behavior: HitTestBehavior.opaque,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  Icon(Icons.tune_rounded, color: scheme.onSurface.withValues(alpha: 0.55), size: 16),
                  const SizedBox(width: 8),
                  Text('Options', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.65), fontSize: 13, fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Icon(
                    _expanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurface.withValues(alpha: 0.55), size: 18,
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
                          'Self-destruct after download',
                          style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.65), fontSize: 13),
                        ),
                      ),
                      Obx(() => Switch(
                        value: widget.controller.destruct.value == 'yes',
                        onChanged: (v) => widget.controller.destruct.value = v ? 'yes' : 'no',
                        activeThumbColor: _accent(context),
                        inactiveTrackColor: scheme.outlineVariant.withValues(alpha: 0.35),
                      )),
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

  String _fmt(int s) {
    if (s < 3600) return '${s ~/ 60} min';
    if (s < 86400) return '${s ~/ 3600} hr';
    return '${s ~/ 86400} day${s ~/ 86400 == 1 ? '' : 's'}';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final options = controller.cfg.expireOptionsSec;
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
          labelText: 'Expiry',
          labelStyle: TextStyle(color: scheme.onSurface.withValues(alpha: 0.65)),
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
          contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        ),
        items: options
            .map((s) => DropdownMenuItem<int>(
                  value: s,
                  child: Text(_fmt(s)),
                ))
            .toList(),
        onChanged: (v) {
          if (v == null) return;
          controller.expireSec.value = v;
        },
      );
    });
  }
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
    final scheme = Theme.of(context).colorScheme;
    return TextField(
      controller: ctrl,
      obscureText: obscureText,
      style: TextStyle(color: scheme.onSurface, fontSize: 14),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: scheme.onSurface.withValues(alpha: 0.35), fontSize: 14),
        filled: true,
        fillColor: _fieldBg(context),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: scheme.onSurface.withValues(alpha: 0.55), size: 18) : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: _line(context))),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: _line(context))),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: scheme.primary, width: 1.5)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}

// ── Progress pane ─────────────────────────────────────────────────────────────

class _ProgressPane extends StatelessWidget {
  const _ProgressPane({required this.controller});
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
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
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Uploading…',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              '${fmt(sent)} / ${fmt(total)}  •  ${fmt(remaining)} left',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: controller.cancelUpload,
              icon: const Icon(Icons.close_rounded, size: 18),
              label: const Text('Cancel upload'),
            ),
          ],
        );
      }),
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
            width: 80, height: 80,
            decoration: BoxDecoration(
              color: _accent(context).withValues(alpha: 0.12),
              shape: BoxShape.circle,
              border: Border.all(color: _accent(context).withValues(alpha: 0.4), width: 1.5),
              boxShadow: const [BoxShadow(color: _accentGlow, blurRadius: 40, spreadRadius: 0)],
            ),
            child: Icon(Icons.check_rounded, color: _accent(context), size: 38),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          controller.finishedLink.value.isNotEmpty ? 'Transfer ready!' : 'Email sent!',
          style: TextStyle(color: scheme.onSurface, fontSize: 26, fontWeight: FontWeight.w800, letterSpacing: -0.5),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          controller.finishedLink.value.isNotEmpty
              ? 'Share this link with your recipient.'
              : "We've notified your recipient(s).",
          style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.55), fontSize: 14),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        if (controller.finishedLink.value.isNotEmpty) ...[
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
                  'SHARE LINK',
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
                        style: TextStyle(color: _accent(context), fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Clipboard.setData(ClipboardData(text: controller.finishedLink.value));
                        AppSnack.success('Copied', 'Link copied to clipboard');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: scheme.surfaceContainerLow,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: _line(context)),
                        ),
                        child: Icon(Icons.copy_rounded, color: scheme.onSurface.withValues(alpha: 0.55), size: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          _AccentButton(label: t.share, icon: Icons.share_rounded, onTap: controller.shareResult),
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
          child: Icon(Icons.mark_email_unread_outlined, color: _accent(context), size: 56),
        ),
        const SizedBox(height: 20),
        Text(t.verifyEmailTitle,
            style: TextStyle(color: scheme.onSurface, fontSize: 22, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center),
        const SizedBox(height: 8),
        Text(
          'Enter the 4-digit code sent to your sender email.',
          style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.55), fontSize: 14),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        TextField(
          controller: controller.verifyController,
          keyboardType: TextInputType.number,
          maxLength: 4,
          textAlign: TextAlign.center,
          style: TextStyle(color: scheme.onSurface, fontSize: 28, letterSpacing: 8, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            hintText: '0000',
            hintStyle: TextStyle(color: scheme.onSurface.withValues(alpha: 0.28), letterSpacing: 4, fontSize: 24),
            counterText: '',
            filled: true,
            fillColor: _fieldBg(context),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: _line(context))),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: _line(context))),
            focusedBorder: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(14)), borderSide: BorderSide(color: _accent(context), width: 1.5)),
          ),
        ),
        const SizedBox(height: 20),
        Obx(() => _AccentButton(
          label: t.verifySubmit,
          onTap: controller.uploading.value ? null : controller.submitVerifyAndUpload,
        )),
        const SizedBox(height: 12),
        Center(
          child: Obx(() {
            final busy = controller.uploading.value || controller.resendVerifyBusy.value;
            return TextButton(
              onPressed: busy ? null : () => controller.resendUploadVerifyCode(context),
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
          color: enabled ? scheme.primary : scheme.onSurface.withValues(alpha: 0.10),
          borderRadius: BorderRadius.circular(50),
          boxShadow: enabled ? const [BoxShadow(color: _accentGlow, blurRadius: 20, offset: Offset(0, 4))] : null,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: enabled ? scheme.onPrimary : scheme.onSurface.withValues(alpha: 0.45), size: 18),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: TextStyle(
                color: enabled ? scheme.onPrimary : scheme.onSurface.withValues(alpha: 0.45),
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
        child: Text(label, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.72), fontWeight: FontWeight.w500)),
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
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Obx(() {
          final disabled = controller.files.isEmpty ||
              controller.uploading.value ||
              controller.pickingFiles.value;
          return FilledButton(
            onPressed: disabled ? null : () => controller.startSend(context),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(52)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (controller.pickingFiles.value) ...[
                  const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ] else ...[
                  const Icon(Icons.send_rounded, size: 18),
                ],
                const SizedBox(width: 8),
                Text(
                  controller.uploading.value ? 'Starting…' : t.sendButton,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          );
        }),
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
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: _line(context), width: 1),
          ),
          child: Text(
            label,
            style: AppTheme.meta(color: _textDim(context)),
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
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
