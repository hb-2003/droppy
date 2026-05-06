import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';

/// Dedicated controller for the Receive tab in the shell IndexedStack.
/// Registered as [permanent: true] so its TextEditingControllers are
/// never disposed while the shell is alive.
class ReceiveController extends GetxController {
  final DownloadRepository _dl = Get.find<DownloadRepository>();

  // Own TextEditingControllers — never shared with DownloadController.
  final uploadIdCtrl  = TextEditingController();
  final privateIdCtrl = TextEditingController();
  final passwordCtrl  = TextEditingController();

  final loading      = false.obs;
  final downloading  = false.obs;
  final lastFilename = ''.obs;
  final Rxn<TransferMetadata> meta = Rxn<TransferMetadata>();

  AppConfig get cfg => Get.find<ConfigRepository>().current;

  @override
  void onClose() {
    uploadIdCtrl.dispose();
    privateIdCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }

  void clear() {
    uploadIdCtrl.clear();
    privateIdCtrl.clear();
    passwordCtrl.clear();
    meta.value = null;
    lastFilename.value = '';
  }

  /// Accepts a raw transfer id OR a full share URL.
  void setFromPastedLinkOrId(String raw) {
    final v = raw.trim();
    if (v.isEmpty) return;

    final looksLikeUrl = v.contains('://') || v.contains('/') || v.contains('?');
    if (!looksLikeUrl) return;

    final uri = Uri.tryParse(v);
    if (uri == null) return;

    final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segs.isEmpty) return;

    final id  = segs[0];
    final pid = segs.length > 1 ? segs[1] : '';

    if (uploadIdCtrl.text.trim() != id) {
      uploadIdCtrl.text = id;
      uploadIdCtrl.selection = TextSelection.collapsed(offset: id.length);
    }
    if (pid.isNotEmpty && privateIdCtrl.text.trim() != pid) {
      privateIdCtrl.text = pid;
      privateIdCtrl.selection = TextSelection.collapsed(offset: pid.length);
    }

    Future.microtask(loadMetadata);
  }

  Future<void> loadMetadata() async {
    final id = uploadIdCtrl.text.trim();
    if (id.isEmpty) return;
    loading.value = true;
    try {
      final m = await _dl.fetchMetadata(
        uploadId: id,
        privateId: privateIdCtrl.text.trim(),
      );
      meta.value = m;
    } finally {
      loading.value = false;
    }
  }

  Future<void> unlockAndReload() async {
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    final id   = uploadIdCtrl.text.trim();
    final pid  = privateIdCtrl.text.trim();
    final returnUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';
    await _dl.unlockPassword(
      uploadId: id,
      password: passwordCtrl.text,
      returnUrl: returnUrl,
    );
    await loadMetadata();
  }

  /// Downloads the file directly to the public Downloads folder and shows
  /// a confirmation snackbar. No share sheet — fully automatic.
  Future<void> startDownload() async {
    final id   = uploadIdCtrl.text.trim();
    final pid  = privateIdCtrl.text.trim();
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    final pageUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';

    // Sensible fallback filename before we get the server's Content-Disposition.
    final m     = meta.value;
    final count = m?.count ?? 0;
    String fallback;
    if (count > 1) {
      fallback = '$id.zip';
    } else if (m?.files.isNotEmpty == true) {
      fallback = m!.files.first.name;
    } else {
      fallback = '$id.bin';
    }

    downloading.value = true;
    try {
      final result = await _dl.downloadToFile(
        uploadId: id,
        privateId: pid,
        pageUrl: pageUrl,
        filename: fallback,
      );

      lastFilename.value = result.filename;
      _showSuccessToast(result.filename);
    } catch (e) {
      _showErrorToast('$e');
    } finally {
      downloading.value = false;
    }
  }

  // ── Toast helpers ─────────────────────────────────────────────────────────

  void _showSuccessToast(String filename) {
    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 4),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        borderRadius: 20,
        backgroundColor: const Color(0xFF141414),
        padding: EdgeInsets.zero,
        messageText: _ToastContent(
          icon: Icons.download_done_rounded,
          iconColor: const Color(0xFFD4FF3B),
          iconBg: const Color(0x22D4FF3B),
          title: 'Download complete',
          subtitle: '"$filename" saved to Downloads',
          borderColor: const Color(0x33D4FF3B),
        ),
      ),
    );
  }

  void _showErrorToast(String message) {
    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        borderRadius: 20,
        backgroundColor: const Color(0xFF141414),
        padding: EdgeInsets.zero,
        messageText: _ToastContent(
          icon: Icons.error_outline_rounded,
          iconColor: const Color(0xFFFF6B6B),
          iconBg: const Color(0x22FF6B6B),
          title: 'Download failed',
          subtitle: message,
          borderColor: const Color(0x33FF6B6B),
        ),
      ),
    );
  }
}

// ── Toast widget ──────────────────────────────────────────────────────────────

class _ToastContent extends StatelessWidget {
  const _ToastContent({
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.borderColor,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String subtitle;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF141414),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Row(
        children: [
          // Icon bubble
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 14),
          // Text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0x99FFFFFF),
                    fontSize: 12,
                    height: 1.4,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
