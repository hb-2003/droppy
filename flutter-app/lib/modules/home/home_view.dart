import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.navSend),
        actions: [
          IconButton(
            icon: const Icon(Icons.download_rounded),
            onPressed: controller.goDownload,
            tooltip: t.navDownload,
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: controller.goSettings,
            tooltip: t.navSettings,
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          if (controller.awaitingVerify.value) {
            return _VerifyPane(controller: controller, t: t);
          }
          if (controller.finishedLink.value.isNotEmpty || controller.mailFinished.value) {
            return _SuccessPane(controller: controller, t: t, scheme: scheme);
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
              Text(
                t.appTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      height: 1.15,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                t.heroAccent,
                style: AppTheme.heroAccent(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                t.modeLink,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 20),
              Obx(
                () => SegmentedButton<String>(
                  segments: [
                    ButtonSegment(value: 'link', label: Text(t.modeLink)),
                    ButtonSegment(value: 'mail', label: Text(t.modeEmail)),
                  ],
                  selected: {controller.shareMode.value},
                  onSelectionChanged: (s) => controller.setShareMode(s.first),
                ),
              ),
              const SizedBox(height: 24),
              if (controller.cfg.shareEnabled && controller.shareMode.value == 'mail') ...[
                TextField(
                  controller: controller.emailFromCtrl,
                  decoration: InputDecoration(labelText: t.emailFrom),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: controller.emailToCtrl,
                  decoration: InputDecoration(
                    labelText: t.emailTo,
                    hintText: 'a@b.com, c@d.com',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 2,
                ),
                const SizedBox(height: 12),
              ],
              TextField(
                controller: controller.messageCtrl,
                decoration: InputDecoration(labelText: t.messageOptional),
                maxLines: 3,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller.passwordCtrl,
                decoration: InputDecoration(labelText: t.passwordOptional),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(t.destructAfterDownload,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                  Switch(
                    value: controller.destruct.value == 'yes',
                    onChanged: (v) =>
                        controller.destruct.value = v ? 'yes' : 'no',
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Obx(
                () => DropdownButtonFormField<int>(
                  key: ValueKey<int>(controller.expireSec.value),
                  initialValue: controller.expireSec.value,
                  decoration: const InputDecoration(labelText: 'Expire (seconds)'),
                  items: controller.cfg.expireOptionsSec
                      .map(
                        (s) => DropdownMenuItem(
                          value: s,
                          child: Text('$s s'),
                        ),
                      )
                      .toList(),
                  onChanged: (v) {
                    if (v != null) controller.expireSec.value = v;
                  },
                ),
              ),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: controller.uploading.value ? null : controller.pickFiles,
                icon: const Icon(Icons.folder_open_rounded),
                label: Text(t.pickFiles),
              ),
              const SizedBox(height: 12),
              Obx(() {
                if (controller.files.isEmpty) {
                  return Text(
                    '${controller.cfg.maxFiles} files max · '
                    '${(controller.cfg.maxSizeMb)} MB total',
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...controller.files.map(
                      (f) => ListTile(
                        title: Text(f.name),
                        subtitle: Text('${(f.size / (1024 * 1024)).toStringAsFixed(2)} MB'),
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => controller.removeFile(f),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              const SizedBox(height: 24),
              Obx(() {
                if (controller.uploading.value) {
                  return Column(
                    children: [
                      LinearProgressIndicator(value: controller.progress.value),
                      const SizedBox(height: 8),
                      Text(t.uploading),
                    ],
                  );
                }
                return FilledButton(
                  onPressed: () => controller.startSend(context),
                  child: Text(t.sendButton),
                );
              }),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _SuccessPane extends StatelessWidget {
  const _SuccessPane({
    required this.controller,
    required this.t,
    required this.scheme,
  });

  final HomeController controller;
  final AppLocalizations t;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.check_circle_rounded, size: 56, color: scheme.primary),
          const SizedBox(height: 16),
          Text(
            t.uploadComplete,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          if (controller.finishedLink.value.isNotEmpty) ...[
            Text(t.shareLinkTitle),
            const SizedBox(height: 8),
            SelectableText(
              controller.finishedLink.value,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: controller.shareResult,
              icon: const Icon(Icons.share_rounded),
              label: Text(t.share),
            ),
          ] else ...[
            Text(t.emailSentTitle, textAlign: TextAlign.center),
          ],
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: () {
              controller.finishedLink.value = '';
              controller.mailFinished.value = false;
            },
            child: Text(t.uploadMore),
          ),
        ],
      ),
    );
  }
}

class _VerifyPane extends StatelessWidget {
  const _VerifyPane({required this.controller, required this.t});

  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(t.verifyEmailTitle, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          TextField(
            controller: controller.verifyController,
            decoration: InputDecoration(labelText: t.verifyCodeHint),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: controller.uploading.value ? null : controller.submitVerifyAndUpload,
            child: Text(t.verifySubmit),
          ),
        ],
      ),
    );
  }
}
