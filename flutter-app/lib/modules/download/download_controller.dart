import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/repositories/config_repository.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';

class DownloadController extends GetxController {
  final DownloadRepository _dl = Get.find<DownloadRepository>();

  final uploadIdCtrl = TextEditingController();
  final privateIdCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  final loading = false.obs;
  final downloading = false.obs;
  final Rxn<TransferMetadata> meta = Rxn<TransferMetadata>();

  AppConfig get cfg => Get.find<ConfigRepository>().current;

  @override
  void onInit() {
    super.onInit();
    final p = Get.parameters;
    if (p['id'] != null && p['id']!.isNotEmpty) {
      uploadIdCtrl.text = p['id']!;
    }
    if (p['pid'] != null) {
      privateIdCtrl.text = p['pid']!;
    }

    // If opened from a deep link, auto-load transfer metadata (web auto-opens the transfer view).
    if (uploadIdCtrl.text.trim().isNotEmpty) {
      Future.microtask(loadMetadata);
    }
  }

  /// Accepts either a raw transfer id (`AbCdEf12`) or a full share URL.
  /// If a URL is pasted, extracts `{uploadId}` and optional `{privateId}` from path segments.
  void setFromPastedLinkOrId(String raw) {
    final v = raw.trim();
    if (v.isEmpty) return;

    // Fast path: user typed an id (no scheme, no slashes).
    final looksLikeUrl = v.contains('://') || v.contains('/') || v.contains('?');
    if (!looksLikeUrl) return;

    final uri = Uri.tryParse(v);
    if (uri == null) return;

    final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segs.isEmpty) return;

    // Share links are typically `/{upload_id}` or `/{upload_id}/{private_id}`.
    final id = segs[0];
    final pid = segs.length > 1 ? segs[1] : '';

    // Avoid infinite loop: only update if different.
    if (uploadIdCtrl.text.trim() != id) {
      uploadIdCtrl.text = id;
      uploadIdCtrl.selection = TextSelection.collapsed(offset: id.length);
    }
    if (pid.isNotEmpty && privateIdCtrl.text.trim() != pid) {
      privateIdCtrl.text = pid;
      privateIdCtrl.selection = TextSelection.collapsed(offset: pid.length);
    }

    // Auto-load after parsing.
    Future.microtask(loadMetadata);
  }

  @override
  void onClose() {
    uploadIdCtrl.dispose();
    privateIdCtrl.dispose();
    passwordCtrl.dispose();
    super.onClose();
  }

  Future<void> loadMetadata() async {
    loading.value = true;
    try {
      final m = await _dl.fetchMetadata(
        uploadId: uploadIdCtrl.text.trim(),
        privateId: privateIdCtrl.text.trim(),
      );
      meta.value = m;
    } finally {
      loading.value = false;
    }
  }

  Future<void> unlockAndReload() async {
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    final id = uploadIdCtrl.text.trim();
    // Web passes `url` as a normal query parameter (HTML form encodes once).
    // Do not pre-encode here or Dio will encode again.
    final pid = privateIdCtrl.text.trim();
    final returnUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';
    await _dl.unlockPassword(
      uploadId: id,
      password: passwordCtrl.text,
      returnUrl: returnUrl,
    );
    await loadMetadata();
  }

  Future<File?> saveDownload() async {
    final id = uploadIdCtrl.text.trim();
    final pid = privateIdCtrl.text.trim();
    final site = cfg.siteUrl.isNotEmpty ? cfg.siteUrl : resolveBaseUrl();
    // Same as web: pass raw page url, let the client encode query params once.
    final pageUrl = '$site$id${pid.isNotEmpty ? '/$pid' : ''}';
    downloading.value = true;
    try {
      final c = meta.value?.count;
      final name = c != null && c > 1
          ? '$id.zip'
          : (meta.value?.files.isNotEmpty == true
              ? meta.value!.files.first.name
              : 'download.bin');
      return await _dl.downloadToFile(
        uploadId: id,
        privateId: pid,
        pageUrl: pageUrl,
        filename: name,
      );
    } finally {
      downloading.value = false;
    }
  }
}
