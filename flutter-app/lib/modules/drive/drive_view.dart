import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/drive/drive_controller.dart';
import 'package:sendlargefiles/services/drive/drive_models.dart';

Color _bg(BuildContext c) => Theme.of(c).scaffoldBackgroundColor;
Color _accent(BuildContext c) => Theme.of(c).colorScheme.primary;
Color _accentInk(BuildContext c) => Theme.of(c).colorScheme.onPrimary;
Color _onSurface(BuildContext c) => Theme.of(c).colorScheme.onSurface;
Color _dim(BuildContext c) => Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.55);
Color _line(BuildContext c) => Theme.of(c).colorScheme.outlineVariant;
bool _isDark(BuildContext c) => Theme.of(c).brightness == Brightness.dark;

class DriveView extends GetView<DriveController> {
  const DriveView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Theme.of(context).brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: _bg(context),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              switch (controller.step.value) {
                case DriveStep.chooseRole:
                  Get.back();
                  break;
                case DriveStep.backupPick:
                case DriveStep.downloadList:
                  controller.backToRoleChoice();
                  break;
                case DriveStep.backupUploading:
                case DriveStep.downloadDownloading:
                  break;
                case DriveStep.complete:
                  controller.backToRoleChoice();
                  break;
              }
            },
          ),
          title: Text(t.driveTitle),
          actions: [
            Obx(() {
              final user = controller.account.value;
              if (user == null) return const SizedBox.shrink();
              return IconButton(
                tooltip: t.driveSignOut,
                onPressed: controller.signOut,
                icon: const Icon(Icons.logout_rounded),
              );
            }),
          ],
        ),
        body: SafeArea(
          child: Obx(() {
            switch (controller.step.value) {
              case DriveStep.chooseRole:
                return _RoleChooser(controller: controller, t: t);
              case DriveStep.backupPick:
                return _BackupPick(controller: controller, t: t);
              case DriveStep.backupUploading:
                return _ProgressPane(
                  title: t.driveBackingUp,
                  subtitle: controller.progressLabel.value,
                  progress: controller.progress.value,
                );
              case DriveStep.downloadList:
                return _DownloadList(controller: controller, t: t);
              case DriveStep.downloadDownloading:
                return _ProgressPane(
                  title: t.driveDownloading,
                  subtitle: controller.selectedRemote.value?.name ?? '',
                  progress: controller.progress.value,
                );
              case DriveStep.complete:
                return _Complete(controller: controller, t: t);
            }
          }),
        ),
      ),
    );
  }
}

class _RoleChooser extends StatelessWidget {
  const _RoleChooser({required this.controller, required this.t});
  final DriveController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
      children: [
        Obx(() {
          final email = controller.account.value?.email;
          if (email == null) return const SizedBox.shrink();
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              t.driveSignedInAs(email),
              style: TextStyle(color: _dim(context), fontSize: 13),
            ),
          );
        }),
        Text(
          t.driveSubtitle,
          style: TextStyle(color: _dim(context), fontSize: 14, height: 1.45),
        ),
        const SizedBox(height: 24),
        _RoleCard(
          icon: Icons.cloud_upload_rounded,
          title: t.driveBackup,
          subtitle: t.driveBackupDesc,
          themeColor: _accent(context),
          onTap: () => controller.chooseBackup(),
        ),
        const SizedBox(height: 14),
        _RoleCard(
          icon: Icons.cloud_download_rounded,
          title: t.driveDownload,
          subtitle: t.driveDownloadDesc,
          themeColor: DroppyWebColors.info,
          onTap: () => controller.chooseDownload(),
        ),
      ],
    );
  }
}

class _RoleCard extends StatelessWidget {
  const _RoleCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.themeColor,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color themeColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(26),
        child: Ink(
          height: 130,
          decoration: BoxDecoration(
            color: _isDark(context) ? DroppyWebColors.ink700 : Colors.white,
            borderRadius: BorderRadius.circular(26),
            border: Border.all(color: _line(context)),
            boxShadow: _isDark(context)
                ? null
                : const [
                    BoxShadow(
                      color: Color(0x0F000000),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
          ),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                right: -28,
                bottom: -28,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: themeColor.withValues(alpha: 0.1),
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: themeColor,
                  ),
                  child: Icon(
                    icon,
                    color: themeColor.computeLuminance() > 0.55
                        ? DroppyWebColors.accentInk
                        : Colors.white,
                    size: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 72, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: TextStyle(color: _dim(context), fontSize: 13, height: 1.35),
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

class _BackupPick extends StatelessWidget {
  const _BackupPick({required this.controller, required this.t});
  final DriveController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            if (controller.files.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    t.drivePickFilesHint,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: _dim(context), fontSize: 14, height: 1.45),
                  ),
                ),
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              itemCount: controller.files.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final f = controller.files[index];
                return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: _line(context)),
                  ),
                  tileColor: _isDark(context) ? DroppyWebColors.ink700 : Colors.white,
                  leading: Icon(Icons.insert_drive_file_outlined, color: _accent(context)),
                  title: Text(
                    f.displayName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: _onSurface(context),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    controller.formatSize(f.size),
                    style: TextStyle(color: _dim(context), fontSize: 12),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.close_rounded, color: _dim(context), size: 20),
                    onPressed: () => controller.removeFile(index),
                  ),
                );
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Obx(() => OutlinedButton.icon(
                onPressed: controller.pickingFiles.value ? null : controller.pickFiles,
                icon: const Icon(Icons.add_rounded),
                label: Text(t.pickFiles),
              )),
              const SizedBox(height: 10),
              Obx(() {
                final enabled = controller.files.isNotEmpty && !controller.uploading.value;
                return FilledButton(
                  onPressed: enabled ? controller.startBackup : null,
                  style: FilledButton.styleFrom(
                    backgroundColor: _accent(context),
                    foregroundColor: _accentInk(context),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(t.driveStartBackup),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}

class _DownloadList extends StatelessWidget {
  const _DownloadList({required this.controller, required this.t});
  final DriveController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  t.driveYourFiles,
                  style: TextStyle(
                    color: _onSurface(context),
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              IconButton(
                onPressed: controller.loading.value ? null : controller.loadRemoteFiles,
                icon: const Icon(Icons.refresh_rounded),
              ),
            ],
          ),
        ),
        Expanded(
          child: Obx(() {
            if (controller.loading.value) {
              return const Center(child: CircularProgressIndicator());
            }
            if (controller.remoteFiles.isEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    t.driveNoFiles,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: _dim(context), fontSize: 14),
                  ),
                ),
              );
            }
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: controller.remoteFiles.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final f = controller.remoteFiles[index];
                return _RemoteFileTile(
                  file: f,
                  controller: controller,
                  selected: controller.selectedRemote.value?.id == f.id,
                  onTap: () => controller.selectedRemote.value = f,
                );
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Obx(() {
            final enabled =
                controller.selectedRemote.value != null && !controller.downloading.value;
            return FilledButton(
              onPressed: enabled ? controller.downloadSelected : null,
              style: FilledButton.styleFrom(
                backgroundColor: _accent(context),
                foregroundColor: _accentInk(context),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(t.driveStartDownload),
            );
          }),
        ),
      ],
    );
  }
}

class _RemoteFileTile extends StatelessWidget {
  const _RemoteFileTile({
    required this.file,
    required this.controller,
    required this.selected,
    required this.onTap,
  });

  final DriveRemoteFile file;
  final DriveController controller;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          decoration: BoxDecoration(
            color: selected
                ? _accent(context).withValues(alpha: 0.12)
                : (_isDark(context) ? DroppyWebColors.ink700 : Colors.white),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: selected ? _accent(context) : _line(context),
              width: selected ? 1.5 : 1,
            ),
          ),
          child: ListTile(
            leading: Icon(
              Icons.cloud_rounded,
              color: selected ? _accent(context) : _dim(context),
            ),
            title: Text(
              file.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: _onSurface(context),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              controller.formatSize(file.size),
              style: TextStyle(color: _dim(context), fontSize: 12),
            ),
            trailing: selected
                ? Icon(Icons.check_circle_rounded, color: _accent(context))
                : null,
          ),
        ),
      ),
    );
  }
}

class _ProgressPane extends StatelessWidget {
  const _ProgressPane({
    required this.title,
    required this.subtitle,
    required this.progress,
  });

  final String title;
  final String subtitle;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                color: _onSurface(context),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (subtitle.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: _dim(context), fontSize: 13),
              ),
            ],
            const SizedBox(height: 28),
            SizedBox(
              width: 220,
              child: LinearProgressIndicator(
                value: progress > 0 ? progress : null,
                minHeight: 8,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '${(progress * 100).clamp(0, 100).toStringAsFixed(0)}%',
              style: TextStyle(color: _dim(context), fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class _Complete extends StatelessWidget {
  const _Complete({required this.controller, required this.t});
  final DriveController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check_circle_rounded, color: DroppyWebColors.success, size: 64),
            const SizedBox(height: 16),
            Text(
              t.driveComplete,
              style: TextStyle(
                color: _onSurface(context),
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Obx(() {
              final path = controller.savedPath.value;
              if (path.isEmpty) return const SizedBox.shrink();
              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  path.split('/').last,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: _dim(context), fontSize: 13),
                ),
              );
            }),
            const SizedBox(height: 28),
            FilledButton(
              onPressed: controller.backToRoleChoice,
              style: FilledButton.styleFrom(
                backgroundColor: _accent(context),
                foregroundColor: _accentInk(context),
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              ),
              child: Text(t.driveDone),
            ),
          ],
        ),
      ),
    );
  }
}
