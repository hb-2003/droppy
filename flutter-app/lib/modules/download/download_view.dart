import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/download/download_controller.dart';

class DownloadView extends GetView<DownloadController> {
  const DownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.navDownload)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: controller.uploadIdCtrl,
              onChanged: controller.setFromPastedLinkOrId,
              decoration: InputDecoration(labelText: t.downloadIdHint),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller.privateIdCtrl,
              decoration: InputDecoration(labelText: t.privateIdHint),
            ),
            const SizedBox(height: 16),
            Obx(
              () => FilledButton(
                onPressed:
                    controller.loading.value ? null : controller.loadMetadata,
                child: Text(t.fetchTransfer),
              ),
            ),
            const SizedBox(height: 24),
            Obx(() {
              if (controller.loading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              final m = controller.meta.value;
              if (m == null) return const SizedBox.shrink();
              if (!m.ok) {
                final e = m.error ?? 'error';
                if (e == 'login_required') {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(t.loginRequiredTitle,
                          style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 8),
                      Text(t.loginRequiredBody),
                    ],
                  );
                }
                if (e == 'html_response' || e == 'bad_response') {
                  return Text(t.errorBadResponse);
                }
                if (e == 'network_error') {
                  return Text(t.errorNetwork);
                }
                return Text(e);
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID: ${m.uploadId ?? "—"}'),
                  Text(
                    'Files: ${m.count ?? "—"} · ${m.size ?? "—"} bytes',
                  ),
                  if (m.hasPassword && !m.passwordUnlocked) ...[
                    const SizedBox(height: 12),
                    TextField(
                      controller: controller.passwordCtrl,
                      obscureText: true,
                      decoration: InputDecoration(labelText: t.passwordHint),
                    ),
                    FilledButton(
                      onPressed: controller.unlockAndReload,
                      child: Text(t.unlockDownload),
                    ),
                  ] else ...[
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: controller.downloading.value
                          ? null
                          : () async {
                              final r = await controller.saveDownload();
                              if (r != null && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(t.downloadSaved)),
                                );
                              }
                            },
                      child: Text(t.downloadFile),
                    ),
                  ],
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
