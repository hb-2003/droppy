import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/download/receive_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';
import 'package:sendlargefiles/widgets/app_top_bar.dart';
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

class ReceiveView extends GetView<ReceiveController> {
  const ReceiveView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
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
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 32 + bottomPad),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _LinkInputCard(controller: controller),
                        const SizedBox(height: 16),
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
                    ),
                  ),
                ),
              ),
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _line(context)),
      ),
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
          const SizedBox(height: 12),
          // Find button
          Obx(() => GestureDetector(
            onTap: controller.loading.value ? null : controller.loadMetadata,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              height: 50,
              decoration: BoxDecoration(
                color: controller.loading.value
                    ? _onSurface(context).withValues(alpha: 0.08)
                    : _accent(context),
                borderRadius: BorderRadius.circular(50),
                boxShadow: controller.loading.value
                    ? null
                    : [BoxShadow(color: _accent(context).withValues(alpha: 0.22), blurRadius: 20, offset: const Offset(0, 6))],
              ),
              alignment: Alignment.center,
              child: controller.loading.value
                  ? SizedBox(
                      width: 20, height: 20,
                      child: CircularProgressIndicator(color: _accentInk(context), strokeWidth: 2.5),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_rounded, color: _accentInk(context), size: 18),
                        const SizedBox(width: 8),
                        Text(
                          t.findTransfer,
                          style: TextStyle(color: _accentInk(context), fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
            ),
          )),
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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: _line(context)),
      ),
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
        // Summary card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _card(context),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: _line(context)),
          ),
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
                TextField(
                  controller: controller.passwordCtrl,
                  obscureText: true,
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

        // Download button (only if unlocked)
        if (!m.hasPassword || m.passwordUnlocked) ...[
          const SizedBox(height: 12),
          Obx(() {
            return GestureDetector(
              // startDownload() saves directly to the public Downloads folder.
              onTap: controller.downloading.value
                  ? null
                  : controller.startDownload,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                height: 54,
                decoration: BoxDecoration(
                  color: controller.downloading.value
                      ? _onSurface(context).withValues(alpha: 0.08)
                      : accent,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: controller.downloading.value
                      ? null
                      : [BoxShadow(color: accent.withValues(alpha: 0.25), blurRadius: 24, offset: const Offset(0, 8))],
                ),
                alignment: Alignment.center,
                child: controller.downloading.value
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20, height: 20,
                            child: CircularProgressIndicator(
                              color: _accentInk(context),
                              strokeWidth: 2.5,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(t.downloading,
                              style: TextStyle(color: _dim(context), fontSize: 15, fontWeight: FontWeight.w600)),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.download_rounded, color: _accentInk(context), size: 20),
                          const SizedBox(width: 8),
                          Text(
                            (m.count ?? 0) > 1 ? t.downloadAllFiles : t.downloadSingleFile,
                            style: TextStyle(color: _accentInk(context), fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
              ),
            );
          }),
          const SizedBox(height: 10),
          // Clear / new transfer button
          GestureDetector(
            onTap: () {
              controller.clear();
            },
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                border: Border.all(color: _line(context)),
                borderRadius: BorderRadius.circular(50),
              ),
              alignment: Alignment.center,
              child: Text(
                t.receiveAnother,
                style: TextStyle(color: _dim(context), fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ],
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
