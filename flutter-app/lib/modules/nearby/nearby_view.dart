import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/app/theme/app_theme.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/nearby/nearby_controller.dart';
import 'package:sendlargefiles/services/nearby_transfer/nearby_models.dart';

Color _bg(BuildContext c) => Theme.of(c).scaffoldBackgroundColor;
Color _card(BuildContext c) => Theme.of(c).colorScheme.surfaceContainerHighest;
Color _accent(BuildContext c) => Theme.of(c).colorScheme.primary;
Color _accentInk(BuildContext c) => Theme.of(c).colorScheme.onPrimary;
Color _onSurface(BuildContext c) => Theme.of(c).colorScheme.onSurface;
Color _dim(BuildContext c) => Theme.of(c).colorScheme.onSurface.withValues(alpha: 0.55);
Color _line(BuildContext c) => Theme.of(c).colorScheme.outlineVariant;
bool _isDark(BuildContext c) => Theme.of(c).brightness == Brightness.dark;

class NearbyView extends GetView<NearbyController> {
  const NearbyView({super.key});

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
            onPressed: () async {
              switch (controller.step.value) {
                case NearbyStep.chooseRole:
                  if (controller.sharing.value) {
                    await controller.stopSharing();
                  }
                  Get.back();
                  break;
                case NearbyStep.sendSharing:
                  await controller.stopSharing();
                  break;
                case NearbyStep.sendPickFiles:
                case NearbyStep.receiveScan:
                  controller.backToRoleChoice();
                  break;
                case NearbyStep.receivePreview:
                  controller.backToReceiveScan();
                  break;
                case NearbyStep.receiveDownloading:
                  break;
                case NearbyStep.complete:
                  controller.backToRoleChoice();
                  break;
              }
            },
          ),
          title: Text(t.nearbyTitle),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Obx(() {
            switch (controller.step.value) {
              case NearbyStep.chooseRole:
                return _RoleChooser(controller: controller, t: t);
              case NearbyStep.sendPickFiles:
                return _SendPickFiles(controller: controller, t: t);
              case NearbyStep.sendSharing:
                return _SendSharing(controller: controller, t: t);
              case NearbyStep.receiveScan:
                return _ReceiveScan(controller: controller, t: t);
              case NearbyStep.receivePreview:
                return _ReceivePreview(controller: controller, t: t);
              case NearbyStep.receiveDownloading:
                return _ReceiveDownloading(controller: controller, t: t);
              case NearbyStep.complete:
                return _Complete(controller: controller, t: t);
            }
          }),
        ),
      ),
    );
  }
}

// ── Role chooser ──────────────────────────────────────────────────────────────

class _RoleChooser extends StatelessWidget {
  const _RoleChooser({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
      children: [
        Text(
          t.nearbySubtitle,
          style: TextStyle(
            color: _dim(context),
            fontSize: 14,
            height: 1.45,
          ),
        ),
        const SizedBox(height: 24),
        _RoleCard(
          icon: Icons.north_east_rounded,
          title: t.nearbySend,
          subtitle: t.nearbySendDesc,
          themeColor: _accent(context),
          onTap: controller.chooseSend,
        ),
        const SizedBox(height: 14),
        _RoleCard(
          icon: Icons.south_west_rounded,
          title: t.nearbyReceive,
          subtitle: t.nearbyReceiveDesc,
          themeColor: DroppyWebColors.info,
          onTap: () => controller.chooseReceive(),
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
                padding: const EdgeInsets.fromLTRB(18, 18, 70, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: themeColor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: themeColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      title,
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 26,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: _dim(context),
                        fontSize: 12,
                        height: 1.3,
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

// ── Send: pick files ──────────────────────────────────────────────────────────

class _SendPickFiles extends StatelessWidget {
  const _SendPickFiles({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            children: [
              _StepTitle(icon: Icons.upload_rounded, title: t.nearbyPickFiles),
              const SizedBox(height: 16),
              Obx(() {
                if (controller.files.isEmpty) {
                  return _EmptyFilesCard(
                    onPick: controller.pickFiles,
                    onFolder: controller.pickFolder,
                    busy: controller.pickingFiles.value,
                    t: t,
                  );
                }
                return _FilesCard(controller: controller, t: t);
              }),
            ],
          ),
        ),
        Obx(() {
          if (controller.files.isEmpty) return const SizedBox.shrink();
          return _BottomBar(
            label: t.nearbyStartSharing,
            icon: Icons.sensors_rounded,
            loading: controller.pickingFiles.value,
            onPressed: controller.startSharing,
          );
        }),
      ],
    );
  }
}

class _SendSharing extends StatelessWidget {
  const _SendSharing({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
      children: [
        const SizedBox(height: 24),
        Center(
          child: _PulseIcon(color: _accent(context)),
        ),
        const SizedBox(height: 24),
        Text(
          t.nearbyWaitingForReceiver,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: _onSurface(context),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          t.wifiSameNetworkHint,
          textAlign: TextAlign.center,
          style: TextStyle(color: _dim(context), fontSize: 13, height: 1.4),
        ),
        const SizedBox(height: 24),
        Obx(() => _FilesCard(controller: controller, t: t, readOnly: true)),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: controller.stopSharing,
          icon: const Icon(Icons.stop_circle_outlined, size: 18),
          label: Text(t.nearbyStopSharing),
        ),
      ],
    );
  }
}

// ── Receive: scan ─────────────────────────────────────────────────────────────

class _ReceiveScan extends StatelessWidget {
  const _ReceiveScan({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 32),
      children: [
        _SectionHeader(
          icon: Icons.radar_rounded,
          title: t.nearbyScanning,
          trailing: IconButton(
            onPressed: controller.refreshScan,
            icon: const Icon(Icons.refresh_rounded, size: 20),
          ),
        ),
        const SizedBox(height: 16),
        Obx(() {
          if (controller.scanning.value && controller.peers.isEmpty) {
            return _ScanningCard(t: t);
          }
          if (controller.peers.isEmpty) {
            return _NoDevicesCard(t: t, onRetry: controller.refreshScan);
          }
          return Column(
            children: [
              for (final peer in controller.peers)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: _PeerCard(
                    peer: peer,
                    loading: controller.connecting.value &&
                        controller.selectedPeer.value == peer,
                    onTap: () => controller.selectPeer(peer),
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }
}

class _ReceivePreview extends StatelessWidget {
  const _ReceivePreview({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final peer = controller.selectedPeer.value;
    final m = controller.manifest.value;
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            children: [
              _SectionHeader(
                icon: Icons.devices_rounded,
                title: peer?.name ?? t.nearbyReceive,
              ),
              if (m != null) ...[
                const SizedBox(height: 12),
                Text(
                  t.nearbyFilesReady(m.files.length),
                  style: TextStyle(
                    color: _dim(context),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                ...m.files.map(
                  (f) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _FileRow(name: f.name, sizeMb: f.size / (1024 * 1024)),
                  ),
                ),
              ],
            ],
          ),
        ),
        _BottomBar(
          label: t.nearbyDownloadAll,
          icon: Icons.download_rounded,
          onPressed: controller.downloadAll,
        ),
      ],
    );
  }
}

class _ReceiveDownloading extends StatelessWidget {
  const _ReceiveDownloading({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final total = controller.manifest.value?.files.length ?? 0;
    return Center(
      child: Obx(() {
        final current = controller.downloadIndex.value;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: CircularProgressIndicator(
                strokeWidth: 6,
                color: _accent(context),
                backgroundColor: _onSurface(context).withValues(alpha: 0.08),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              t.wifiDownloadingProgress(current, total),
              style: TextStyle(
                color: _onSurface(context),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        );
      }),
    );
  }
}

class _Complete extends StatelessWidget {
  const _Complete({required this.controller, required this.t});
  final NearbyController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: DroppyWebColors.success.withValues(alpha: 0.15),
            ),
            child: const Icon(
              Icons.check_rounded,
              size: 44,
              color: DroppyWebColors.success,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            t.nearbyComplete,
            style: TextStyle(
              color: _onSurface(context),
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: controller.backToRoleChoice,
            child: Text(t.uploadMore),
          ),
        ],
      ),
    );
  }
}

// ── Shared widgets ────────────────────────────────────────────────────────────

class _StepTitle extends StatelessWidget {
  const _StepTitle({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: _accent(context)),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: _onSurface(context),
              fontSize: 17,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.icon,
    required this.title,
    this.trailing,
  });

  final IconData icon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: _accent(context)),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: _onSurface(context),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        trailing ?? const SizedBox.shrink(),
      ],
    );
  }
}

class _EmptyFilesCard extends StatelessWidget {
  const _EmptyFilesCard({
    required this.onPick,
    required this.onFolder,
    required this.busy,
    required this.t,
  });

  final VoidCallback onPick;
  final VoidCallback onFolder;
  final bool busy;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _line(context)),
      ),
      child: Column(
        children: [
          Icon(
            Icons.folder_open_rounded,
            size: 48,
            color: _accent(context).withValues(alpha: 0.7),
          ),
          const SizedBox(height: 16),
          Text(
            t.dropHeavyFile,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _onSurface(context),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          FilledButton.tonalIcon(
            onPressed: busy ? null : onPick,
            icon: busy
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.add_rounded, size: 18),
            label: Text(t.pickFiles),
          ),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: busy ? null : onFolder,
            icon: const Icon(Icons.folder_outlined, size: 18),
            label: Text(t.pickFolder),
          ),
        ],
      ),
    );
  }
}

class _FilesCard extends StatelessWidget {
  const _FilesCard({
    required this.controller,
    required this.t,
    this.readOnly = false,
  });

  final NearbyController controller;
  final AppLocalizations t;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _line(context)),
      ),
      child: Obx(() {
        final items = controller.files;
        return Column(
          children: [
            if (!readOnly)
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: controller.removeAllFiles,
                  child: Text(
                    t.removeAll,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            for (var i = 0; i < items.length; i++) ...[
              if (i > 0) Divider(height: 1, color: _line(context)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: _FileRow(
                        name: items[i].displayName,
                        sizeMb: items[i].size / (1024 * 1024),
                      ),
                    ),
                    if (!readOnly)
                      IconButton(
                        icon: const Icon(Icons.close_rounded, size: 18),
                        onPressed: () => controller.removeFile(items[i]),
                        visualDensity: VisualDensity.compact,
                      ),
                  ],
                ),
              ),
            ],
            if (!readOnly && items.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(12),
                child: OutlinedButton.icon(
                  onPressed: controller.pickingFiles.value
                      ? null
                      : controller.pickFiles,
                  icon: const Icon(Icons.add_rounded, size: 16),
                  label: Text(t.addFiles),
                ),
              ),
          ],
        );
      }),
    );
  }
}

class _FileRow extends StatelessWidget {
  const _FileRow({required this.name, required this.sizeMb});
  final String name;
  final double sizeMb;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: _onSurface(context).withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.insert_drive_file_outlined,
            size: 18,
            color: _dim(context),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: _onSurface(context),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                AppLocalizations.of(context)!.mbAmount(sizeMb.toStringAsFixed(1)),
                style: TextStyle(color: _dim(context), fontSize: 11),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PeerCard extends StatelessWidget {
  const _PeerCard({
    required this.peer,
    required this.onTap,
    this.loading = false,
  });

  final NearbyPeer peer;
  final VoidCallback onTap;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final theme = DroppyWebColors.success;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: loading ? null : onTap,
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: _isDark(context) ? DroppyWebColors.ink700 : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: _line(context)),
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: theme.withValues(alpha: 0.14),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: loading
                    ? Padding(
                        padding: const EdgeInsets.all(12),
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: theme,
                        ),
                      )
                    : Icon(Icons.smartphone_rounded, color: theme),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      peer.name,
                      style: TextStyle(
                        color: _onSurface(context),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      peer.fileCount > 0
                          ? AppLocalizations.of(context)!
                              .filesCount(peer.fileCount)
                          : AppLocalizations.of(context)!.nearbySharingActive,
                      style: TextStyle(color: _dim(context), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: _dim(context)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ScanningCard extends StatelessWidget {
  const _ScanningCard({required this.t});
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _line(context)),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: _accent(context),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            t.nearbyScanning,
            style: TextStyle(
              color: _onSurface(context),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _NoDevicesCard extends StatelessWidget {
  const _NoDevicesCard({required this.t, required this.onRetry});
  final AppLocalizations t;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: _card(context),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: _line(context)),
      ),
      child: Column(
        children: [
          Icon(
            Icons.sensors_off_rounded,
            size: 40,
            color: _dim(context),
          ),
          const SizedBox(height: 12),
          Text(
            t.nearbyNoDevices,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _onSurface(context),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            t.nearbyNoDevicesHint,
            textAlign: TextAlign.center,
            style: TextStyle(color: _dim(context), fontSize: 13, height: 1.4),
          ),
          const SizedBox(height: 16),
          OutlinedButton.icon(
            onPressed: onRetry,
            icon: const Icon(Icons.refresh_rounded, size: 18),
            label: Text(t.tryAgain),
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.loading = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      decoration: BoxDecoration(
        color: _card(context),
        border: Border(top: BorderSide(color: _line(context))),
      ),
      child: SafeArea(
        top: false,
        child: FilledButton(
          onPressed: loading ? null : onPressed,
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(54),
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
                    color: _accentInk(context),
                  ),
                )
              else
                Icon(icon, size: 18),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PulseIcon extends StatefulWidget {
  const _PulseIcon({required this.color});
  final Color color;

  @override
  State<_PulseIcon> createState() => _PulseIconState();
}

class _PulseIconState extends State<_PulseIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (context, child) {
        return Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.color.withValues(
              alpha: 0.1 + 0.08 * (1 - (_ctrl.value - 0.5).abs() * 2),
            ),
            border: Border.all(
              color: widget.color.withValues(alpha: 0.4),
              width: 2,
            ),
          ),
          child: child,
        );
      },
      child: Icon(Icons.sensors_rounded, size: 44, color: widget.color),
    );
  }
}
