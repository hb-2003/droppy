import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    final site = cfg.siteUrl;
    final id = uploadIdCtrl.text.trim();
    final returnUrl = Uri.encodeComponent('$site$id/${privateIdCtrl.text.trim()}');
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
    final site = cfg.siteUrl;
    final pageUrl = Uri.encodeComponent('$site$id${pid.isNotEmpty ? '/$pid' : ''}');
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
