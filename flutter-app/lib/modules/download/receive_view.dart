import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sendlargefiles/app/routes/app_routes.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/download/receive_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';
import 'package:sendlargefiles/widgets/app_top_bar.dart';
import 'package:sendlargefiles/widgets/password_text_field.dart';
import 'package:sendlargefiles/widgets/transfer_qr_scanner_page.dart';

// ── Theme helpers ─────────────────────────────────────────────────────────────
Color _bg(BuildContext c) => Theme.of(c).scaffoldBackgroundColor;
Color _card(BuildContext c) => Theme.of(c).colorScheme.surfaceContainerHighest;
Color _accent(BuildContext c) => Theme.of(c).colorScheme.primary;
Color _accentInk(BuildContext c) => Theme.of(c).colorScheme.onPrimary;
Color _onSurface(BuildContext c) => Theme.of(c).colorScheme.onSurface;
Color _dim(BuildContext c) => Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.55);
Color _dim2(BuildContext c) => Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.38);
Color _line(BuildContext c) => Theme.of(c).colorScheme.outlineVariant;
bool _isDark(BuildContext c) => Theme.of(c).brightness == Brightness.dark;

class _ReceiveShellCard extends StatelessWidget {
  const _ReceiveShellCard({required this.child, this.padding = const EdgeInsets.all(16)});

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: _isDark(context) ? DroppyWebColors.ink700 : Colors.white,
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

class ReceiveView extends GetView<ReceiveController> {
  const ReceiveView({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTopBar(
                title: t.receiveTitle,
                subtitle: t.receiveSubtitle,
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const _NoOverscrollBehavior(),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _ReceiveModeGrid(controller: controller),
                        const SizedBox(height: 14),
                        Obx(() {
                          if (controller.receiveMode.value == 'pc') {
                            return _PcReceiveSection(controller: controller);
                          }
                          if (controller.receiveMode.value == 'wifi') {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                _WifiInputCard(controller: controller),
                                const SizedBox(height: 14),
                                Obx(() {
                                  if (controller.wifiLoading.value) {
                                    return _LoadingCard();
                                  }
                                  final manifest = controller.wifiManifest.value;
                                  if (manifest == null) {
                                    return _WifiHowItWorksCard();
                                  }
                                  return _WifiTransferCard(controller: controller);
                                }),
                              ],
                            );
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              _LinkInputCard(controller: controller),
                              const SizedBox(height: 14),
                              Obx(() {
                                if (controller.loading.value) {
                                  return _LoadingCard();
                                }
                                final m = controller.meta.value;
                                if (m == null) return _HowItWorksCard();
                                if (!m.ok) return _ErrorCard(error: m.error ?? 'error');
                                return _TransferDetailsCard(controller: controller);
                              }),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
              _ReceiveBottomBar(controller: controller, t: t),
            ],
          ),
        ),
      ),
    );
  }
}
// ── Link Input Card ───────────────────────────────────────────────────────────

class _LinkInputCard extends StatelessWidget {
  const _LinkInputCard({required this.controller});
  final ReceiveController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return _ReceiveShellCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Label
          Row(
            children: [
              Icon(Icons.link_rounded, color: _accent(context), size: 16),
              const SizedBox(width: 6),
              Text(
                t.transferLinkOrId,
                style: TextStyle(
                  color: _dim(context),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Input row
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller.uploadIdCtrl,
                  onChanged: controller.setFromPastedLinkOrId,
                  style: TextStyle(color: _onSurface(context), fontSize: 14, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    hintText: t.transferLinkHint,
                    hintStyle: TextStyle(color: _dim2(context), fontSize: 14),
                    filled: true,
                    fillColor: scheme.surface,
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
                      borderSide: BorderSide(color: _accent(context), width: 1.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.content_paste_rounded, size: 18, color: _dim(context)),
                      onPressed: () async {
                        final data = await Clipboard.getData(Clipboard.kTextPlain);
                        final text = data?.text ?? '';
                        if (text.isNotEmpty) {
                          controller.uploadIdCtrl.text = text;
                          controller.setFromPastedLinkOrId(text);
                        }
                      },
                      tooltip: t.pasteTooltip,
                    ),
                  ),
                  textInputAction: TextInputAction.search,
                  onSubmitted: (_) => controller.loadMetadata(),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: controller.loading.value || controller.downloading.value
                ? null
                : () => _openQrScanner(context),
            style: OutlinedButton.styleFrom(
              foregroundColor: _accent(context),
              side: BorderSide(color: _line(context)),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            icon: const Icon(Icons.qr_code_scanner_rounded, size: 20),
            label: Text(
              t.receiveScanQr,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openQrScanner(BuildContext context) async {
    final t = AppLocalizations.of(context)!;
    final status = await Permission.camera.request();
    if (!status.isGranted) {
      AppSnack.error(t.snackError, t.receiveScanQrCameraDenied);
      return;
    }
    if (!context.mounted) return;

    final scanned = await Navigator.of(context).push<String>(
      MaterialPageRoute(builder: (_) => const TransferQrScannerPage()),
    );
    if (scanned == null || scanned.trim().isEmpty) return;
    await controller.receiveFromScannedValue(scanned);
  }
}

// ── How It Works (empty state) ────────────────────────────────────────────────

class _HowItWorksCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final accent = _accent(context);
    return _ReceiveShellCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.howToReceive,
            style: TextStyle(color: _dim(context), fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
          const SizedBox(height: 16),
          _Step(
            accent: accent,
            number: '1',
            title: t.receiveStepGetLink,
            subtitle: t.receiveStepGetLinkBody,
          ),
          const SizedBox(height: 14),
          _Step(
            accent: accent,
            number: '2',
            title: t.receiveStepPaste,
            subtitle: t.receiveStepPasteBody,
          ),
          const SizedBox(height: 14),
          _Step(
            accent: accent,
            number: '3',
            title: t.receiveStepDownload,
            subtitle: t.receiveStepDownloadBody,
          ),
        ],
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({required this.accent, required this.number, required this.title, required this.subtitle});
  final Color accent;
  final String number;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28, height: 28,
          decoration: BoxDecoration(
            color: accent.withValues(alpha: 0.12),
            shape: BoxShape.circle,
            border: Border.all(color: accent.withValues(alpha: 0.30)),
          ),
          alignment: Alignment.center,
          child: Text(number, style: TextStyle(color: accent, fontSize: 12, fontWeight: FontWeight.w700)),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: _onSurface(context), fontSize: 13, fontWeight: FontWeight.w600)),
              const SizedBox(height: 2),
              Text(subtitle, style: TextStyle(color: _dim(context), fontSize: 12, height: 1.5)),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Loading Card ──────────────────────────────────────────────────────────────

class _LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _line(context)),
      ),
      child: Column(
        children: [
          CircularProgressIndicator(color: scheme.primary, strokeWidth: 2.5),
          const SizedBox(height: 16),
          Text(t.lookingUpTransfer, style: TextStyle(color: _dim(context), fontSize: 14)),
        ],
      ),
    );
  }
}

// ── Error Card ────────────────────────────────────────────────────────────────

class _ErrorCard extends StatelessWidget {
  const _ErrorCard({required this.error});
  final String error;

  String _humanize(BuildContext context, String e) {
    final t = AppLocalizations.of(context)!;
    switch (e) {
      case 'not_found':
        return t.transferNotFound;
      case 'expired':
        return t.transferExpired;
      case 'login_required':
        return t.transferLoginRequired;
      case 'html_response':
      case 'bad_response':
        return t.transferBadResponse;
      case 'network_error':
        return t.transferNetworkError;
      default:
        return t.transferLoadFailed(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).colorScheme.error.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: [
          Container(
            width: 42, height: 42,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error.withValues(alpha: 0.10),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.error_outline_rounded, color: Theme.of(context).colorScheme.error, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              _humanize(context, error),
              style: TextStyle(color: _onSurface(context), fontSize: 13, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Transfer Details Card ─────────────────────────────────────────────────────

class _TransferDetailsCard extends StatelessWidget {
  const _TransferDetailsCard({required this.controller});
  final ReceiveController controller;

  String _fmtSize(int bytes) {
    if (bytes >= 1073741824) return '${(bytes / 1073741824).toStringAsFixed(2)} GB';
    if (bytes >= 1048576) return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    if (bytes >= 1024) return '${(bytes / 1024).toStringAsFixed(0)} KB';
    return '$bytes B';
  }

  IconData _fileIcon(String contentType) {
    final ct = contentType.toLowerCase();
    if (ct.contains('video')) return Icons.video_file_outlined;
    if (ct.contains('image')) return Icons.image_outlined;
    if (ct.contains('audio')) return Icons.audio_file_outlined;
    if (ct.contains('pdf')) return Icons.picture_as_pdf_outlined;
    if (ct.contains('zip') || ct.contains('archive')) return Icons.folder_zip_outlined;
    return Icons.insert_drive_file_outlined;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final m = controller.meta.value!;
    final scheme = Theme.of(context).colorScheme;
    final accent = _accent(context);
    final totalBytes = m.size ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _ReceiveShellCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row
              Row(
                children: [
                  Container(
                    width: 44, height: 44,
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: 0.10),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.cloud_download_outlined, color: accent, size: 22),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.filesReady(m.count ?? 0),
                          style: TextStyle(color: _onSurface(context), fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        if (totalBytes > 0)
                          Text(
                            _fmtSize(totalBytes),
                            style: TextStyle(color: _dim(context), fontSize: 12),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(t.active, style: TextStyle(color: accent, fontSize: 11, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),

              if (m.files.isNotEmpty) ...[
                const SizedBox(height: 14),
                Divider(height: 1, color: _line(context)),
                const SizedBox(height: 12),
                // File list
                ...m.files.take(5).map((f) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Icon(_fileIcon(f.contentType), color: _dim(context), size: 15),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          f.name,
                          style: TextStyle(color: _onSurface(context), fontSize: 12, fontWeight: FontWeight.w500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        f.size > 0 ? _fmtSize(f.size) : '',
                        style: TextStyle(color: _dim(context), fontSize: 11),
                      ),
                    ],
                  ),
                )),
                if (m.files.length > 5)
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 4),
                    child: Text(
                      t.receiveMoreFiles(m.files.length - 5),
                      style: TextStyle(color: _dim2(context), fontSize: 11),
                    ),
                  ),
              ],

              // Password-protected notice
              if (m.hasPassword && !m.passwordUnlocked) ...[
                const SizedBox(height: 12),
                Divider(height: 1, color: _line(context)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.lock_outline_rounded, color: scheme.error, size: 16),
                    const SizedBox(width: 8),
                    Text(
                      t.passwordProtected,
                      style: TextStyle(color: scheme.error, fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                PasswordTextField(
                  controller: controller.passwordCtrl,
                  style: TextStyle(color: _onSurface(context), fontSize: 14),
                  decoration: InputDecoration(
                    hintText: t.enterPassword,
                    hintStyle: TextStyle(color: _dim2(context)),
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 18, color: _dim(context)),
                    filled: true,
                    fillColor: scheme.surface,
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
                      borderSide: BorderSide(color: accent, width: 1.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  ),
                  textInputAction: TextInputAction.done,
                  onSubmitted: (_) => controller.unlockAndReload(),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: controller.unlockAndReload,
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: accent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_open_rounded, color: _accentInk(context), size: 16),
                        const SizedBox(width: 8),
                        Text(t.unlock, style: TextStyle(color: _accentInk(context), fontSize: 14, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

// ── Receive mode cards ────────────────────────────────────────────────────────

class _ReceiveModeGrid extends StatelessWidget {
  const _ReceiveModeGrid({required this.controller});
  final ReceiveController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Obx(() {
      final mode = controller.receiveMode.value;
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _ReceiveModeCard(
                  icon: Icons.cloud_download_outlined,
                  pillLabel: t.navReceive,
                  headline: t.modeLink,
                  themeColor: _accent(context),
                  selected: mode == 'cloud',
                  onTap: () => controller.setReceiveMode('cloud'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ReceiveModeCard(
                  icon: Icons.wifi_rounded,
                  pillLabel: t.navReceive,
                  headline: t.modeWifi,
                  themeColor: DroppyWebColors.success,
                  selected: mode == 'wifi',
                  onTap: () => controller.setReceiveMode('wifi'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _ReceiveModeCard(
                  icon: Icons.computer_rounded,
                  pillLabel: t.navReceive,
                  headline: t.modePc,
                  themeColor: DroppyWebColors.warm,
                  selected: mode == 'pc',
                  onTap: () => controller.setReceiveMode('pc'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _ReceiveModeCard(
                  icon: Icons.sensors_rounded,
                  pillLabel: t.navReceive,
                  headline: t.modeNearby,
                  themeColor: DroppyWebColors.info,
                  selected: false,
                  onTap: () => Get.toNamed(AppRoutes.nearby),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class _ReceiveModeCard extends StatelessWidget {
  const _ReceiveModeCard({
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
                        color: _onSurface(context),
                        fontSize: headline.length <= 4 ? 22 : 14,
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

// ── Wi‑Fi Input Card ──────────────────────────────────────────────────────────

class _WifiInputCard extends StatelessWidget {
  const _WifiInputCard({required this.controller});
  final ReceiveController controller;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    return _ReceiveShellCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(Icons.wifi_rounded, color: _accent(context), size: 16),
              const SizedBox(width: 6),
              Text(
                t.receiveWifiUrlLabel,
                style: TextStyle(
                  color: _dim(context),
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller.wifiUrlCtrl,
            onChanged: controller.setFromPastedWifiUrl,
            style: TextStyle(color: _onSurface(context), fontSize: 14, fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintText: t.receiveWifiUrlHint,
              hintStyle: TextStyle(color: _dim2(context), fontSize: 14),
              filled: true,
              fillColor: scheme.surface,
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
                borderSide: BorderSide(color: _accent(context), width: 1.5),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              suffixIcon: IconButton(
                icon: Icon(Icons.content_paste_rounded, size: 18, color: _dim(context)),
                onPressed: () async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  final text = data?.text ?? '';
                  if (text.isNotEmpty) {
                    controller.wifiUrlCtrl.text = text;
                    controller.setFromPastedWifiUrl(text);
                  }
                },
                tooltip: t.pasteTooltip,
              ),
            ),
            textInputAction: TextInputAction.search,
            onSubmitted: (_) => controller.loadWifiManifest(),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: controller.wifiLoading.value || controller.wifiDownloading.value
                ? null
                : () => _openWifiQrScanner(context),
            style: OutlinedButton.styleFrom(
              foregroundColor: _accent(context),
              side: BorderSide(color: _line(context)),
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            icon: const Icon(Icons.qr_code_scanner_rounded, size: 20),
            label: Text(
              t.receiveWifiScanQr,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openWifiQrScanner(BuildContext context) async {
    final t = AppLocalizations.of(context)!;
    final status = await Permission.camera.request();
    if (!status.isGranted) {
      AppSnack.error(t.snackError, t.receiveScanQrCameraDenied);
      return;
    }
    if (!context.mounted) return;

    final scanned = await Navigator.of(context).push<String>(
      MaterialPageRoute(builder: (_) => const TransferQrScannerPage()),
    );
    if (scanned == null || scanned.trim().isEmpty) return;
    await controller.receiveWifiFromScanned(scanned);
  }
}

class _WifiHowItWorksCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final accent = _accent(context);
    return _ReceiveShellCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.receiveWifiTitle,
            style: TextStyle(color: _dim(context), fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
          const SizedBox(height: 16),
          _Step(accent: accent, number: '1', title: t.receiveWifiHowTo1, subtitle: t.receiveWifiHowTo1Body),
          const SizedBox(height: 14),
          _Step(accent: accent, number: '2', title: t.receiveWifiHowTo2, subtitle: t.receiveWifiHowTo2Body),
          const SizedBox(height: 14),
          _Step(accent: accent, number: '3', title: t.receiveWifiHowTo3, subtitle: t.receiveWifiHowTo3Body),
        ],
      ),
    );
  }
}

class _WifiTransferCard extends StatelessWidget {
  const _WifiTransferCard({required this.controller});
  final ReceiveController controller;

  String _fmtSize(int bytes) {
    if (bytes >= 1073741824) return '${(bytes / 1073741824).toStringAsFixed(2)} GB';
    if (bytes >= 1048576) return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    if (bytes >= 1024) return '${(bytes / 1024).toStringAsFixed(0)} KB';
    return '$bytes B';
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final manifest = controller.wifiManifest.value!;
    final accent = _accent(context);
    final totalBytes = manifest.files.fold<int>(0, (s, f) => s + f.size);

    return _ReceiveShellCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: accent.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.wifi_rounded, color: accent, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.filesReady(manifest.files.length),
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (totalBytes > 0)
                      Text(
                        _fmtSize(totalBytes),
                        style: TextStyle(color: _dim(context), fontSize: 12),
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (manifest.files.isNotEmpty) ...[
            const SizedBox(height: 14),
            Divider(height: 1, color: _line(context)),
            const SizedBox(height: 12),
            ...manifest.files.take(5).map(
              (f) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: _onSurface(context).withValues(alpha: 0.06),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.insert_drive_file_outlined,
                        color: _dim(context),
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        f.name,
                        style: TextStyle(
                          color: _onSurface(context),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      f.size > 0 ? _fmtSize(f.size) : '',
                      style: TextStyle(color: _dim(context), fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
            if (manifest.files.length > 5)
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 4),
                child: Text(
                  t.receiveMoreFiles(manifest.files.length - 5),
                  style: TextStyle(color: _dim2(context), fontSize: 11),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

// ── PC receive section ───────────────────────────────────────────────────────

class _PcReceiveSection extends StatelessWidget {
  const _PcReceiveSection({required this.controller});
  final ReceiveController controller;

  String _fmtSize(int bytes) {
    if (bytes >= 1073741824) return '${(bytes / 1073741824).toStringAsFixed(2)} GB';
    if (bytes >= 1048576) return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    if (bytes >= 1024) return '${(bytes / 1024).toStringAsFixed(0)} KB';
    return '$bytes B';
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Obx(() {
      final active = controller.pcReceiving.value;
      final url = controller.pcReceiveUrl.value;
      final files = controller.pcReceivedFiles;

      if (!active) {
        return _PcHowItWorksCard();
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ReceiveShellCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  t.pcReceiveReady,
                  style: TextStyle(
                    color: _onSurface(context),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  t.pcReceiveHint,
                  style: TextStyle(color: _dim(context), fontSize: 13, height: 1.45),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: _line(context)),
                    ),
                    child: QrImageView(
                      data: url,
                      size: 160,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: _line(context)),
                  ),
                  child: SelectableText(
                    url,
                    style: TextStyle(
                      color: _accent(context),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (files.isNotEmpty) ...[
            const SizedBox(height: 14),
            _ReceiveShellCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.pcReceivedFiles(files.length),
                    style: TextStyle(
                      color: _onSurface(context),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...files.map(
                    (f) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Icon(Icons.insert_drive_file_outlined, size: 16, color: _dim(context)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              f.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: _onSurface(context), fontSize: 12),
                            ),
                          ),
                          Text(_fmtSize(f.size), style: TextStyle(color: _dim(context), fontSize: 11)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      );
    });
  }
}

class _PcHowItWorksCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final accent = _accent(context);
    return _ReceiveShellCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.receivePcTitle,
            style: TextStyle(
              color: _dim(context),
              fontSize: 11,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          _Step(accent: accent, number: '1', title: t.receivePcHowTo1, subtitle: t.receivePcHowTo1Body),
          const SizedBox(height: 14),
          _Step(accent: accent, number: '2', title: t.receivePcHowTo2, subtitle: t.receivePcHowTo2Body),
          const SizedBox(height: 14),
          _Step(accent: accent, number: '3', title: t.receivePcHowTo3, subtitle: t.receivePcHowTo3Body),
        ],
      ),
    );
  }
}

// ── Receive bottom bar ────────────────────────────────────────────────────────

class _ReceiveBottomBar extends StatelessWidget {
  const _ReceiveBottomBar({required this.controller, required this.t});
  final ReceiveController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final mode = controller.receiveMode.value;

      if (mode == 'cloud') {
        final m = controller.meta.value;
        if (m != null && m.ok && (!m.hasPassword || m.passwordUnlocked)) {
          return _ReceiveBarShell(
            primaryLabel: controller.downloading.value
                ? t.downloading
                : ((m.count ?? 0) > 1 ? t.downloadAllFiles : t.downloadSingleFile),
            primaryIcon: Icons.download_rounded,
            loading: controller.downloading.value,
            onPrimary: controller.downloading.value ? null : controller.startDownload,
            secondaryLabel: t.receiveAnother,
            onSecondary: controller.clear,
          );
        }
        return _ReceiveBarShell(
          primaryLabel: t.findTransfer,
          primaryIcon: Icons.search_rounded,
          loading: controller.loading.value,
          onPrimary: controller.loading.value ? null : controller.loadMetadata,
        );
      }

      if (mode == 'wifi') {
        final manifest = controller.wifiManifest.value;
        if (manifest != null && manifest.files.isNotEmpty) {
          final busy = controller.wifiDownloading.value;
          final idx = controller.wifiDownloadIndex.value;
          final total = manifest.files.length;
          return _ReceiveBarShell(
            primaryLabel: busy
                ? t.wifiDownloadingProgress(idx, total)
                : (total > 1 ? t.wifiDownloadAll : t.downloadSingleFile),
            primaryIcon: Icons.download_rounded,
            loading: busy,
            onPrimary: busy ? null : controller.startWifiDownload,
            secondaryLabel: t.receiveAnother,
            onSecondary: controller.clearWifi,
          );
        }
        return _ReceiveBarShell(
          primaryLabel: t.receiveWifiFind,
          primaryIcon: Icons.search_rounded,
          loading: controller.wifiLoading.value,
          onPrimary: controller.wifiLoading.value ? null : controller.loadWifiManifest,
        );
      }

      if (mode == 'pc') {
        if (controller.pcReceiving.value) {
          return _ReceiveBarShell(
            primaryLabel: t.pcReceiveStop,
            primaryIcon: Icons.stop_circle_outlined,
            destructive: true,
            onPrimary: controller.stopPcReceive,
          );
        }
        return _ReceiveBarShell(
          primaryLabel: t.pcReceiveStart,
          primaryIcon: Icons.computer_rounded,
          onPrimary: controller.startPcReceive,
        );
      }

      return const SizedBox.shrink();
    });
  }
}

class _ReceiveBarShell extends StatelessWidget {
  const _ReceiveBarShell({
    required this.primaryLabel,
    required this.primaryIcon,
    required this.onPrimary,
    this.loading = false,
    this.destructive = false,
    this.secondaryLabel,
    this.onSecondary,
  });

  final String primaryLabel;
  final IconData primaryIcon;
  final VoidCallback? onPrimary;
  final bool loading;
  final bool destructive;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      decoration: BoxDecoration(
        color: _isDark(context) ? DroppyWebColors.ink700 : Colors.white,
        border: Border(top: BorderSide(color: _line(context))),
        boxShadow: _isDark(context)
            ? null
            : const [
                BoxShadow(
                  color: Color(0x12000000),
                  blurRadius: 16,
                  offset: Offset(0, -4),
                ),
              ],
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: onPrimary,
              style: FilledButton.styleFrom(
                minimumSize: const Size.fromHeight(54),
                backgroundColor: destructive ? scheme.error : _accent(context),
                foregroundColor: destructive ? Colors.white : _accentInk(context),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (loading)
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: destructive ? Colors.white : _accentInk(context),
                      ),
                    )
                  else
                    Icon(primaryIcon, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    primaryLabel,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            if (secondaryLabel != null && onSecondary != null) ...[
              const SizedBox(height: 8),
              TextButton(
                onPressed: onSecondary,
                child: Text(secondaryLabel!),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ── No overscroll behavior ────────────────────────────────────────────────────

class _NoOverscrollBehavior extends ScrollBehavior {
  const _NoOverscrollBehavior();

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
