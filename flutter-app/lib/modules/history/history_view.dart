import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';
import 'package:sendlargefiles/widgets/app_snackbar.dart';

const _accentGlow = Color(0x33D4FF3B);

class HistoryView extends GetView<HistoryController> {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: theme.brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: SafeArea(
          child: Obx(() {
            if (controller.loading.value) return _LoadingState();
            if (controller.needsLogin.value) return _LoginGate(controller: controller);
            if (controller.error.value) return _ErrorState(controller: controller);
            return _HistoryList(controller: controller);
          }),
        ),
      ),
    );
  }
}

// ── Header ────────────────────────────────────────────────────────────────────

class _Header extends StatelessWidget {
  const _Header({required this.title, this.subtitle});
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                width: 7, height: 7,
                decoration: BoxDecoration(color: scheme.primary, shape: BoxShape.circle),
              ),
              const SizedBox(width: 8),
              Text(
                'Share Large Video Files',
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 10,
                  height: 1.3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              color: scheme.onSurface,
              fontSize: 26,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
              height: 1.05,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 3),
            Text(
              subtitle!,
              style: TextStyle(
                color: scheme.onSurface.withValues(alpha: 0.50),
                fontSize: 12,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}

// ── Loading ───────────────────────────────────────────────────────────────────

class _LoadingState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const _Header(title: 'My Transfers'),
        Expanded(
          child: Center(
            child: CircularProgressIndicator(color: scheme.primary, strokeWidth: 2),
          ),
        ),
      ],
    );
  }
}

// ── Login Gate ────────────────────────────────────────────────────────────────

class _LoginGate extends StatelessWidget {
  const _LoginGate({required this.controller});
  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const _Header(title: 'My Transfers'),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 80, height: 80,
                    decoration: BoxDecoration(
                      color: scheme.primary.withValues(alpha: 0.08),
                      shape: BoxShape.circle,
                      border: Border.all(color: scheme.primary.withValues(alpha: 0.25), width: 1.5),
                    ),
                    child: Icon(Icons.history_rounded, color: scheme.primary, size: 36),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Sign in to see your transfers',
                    style: TextStyle(color: scheme.onSurface, fontSize: 20, fontWeight: FontWeight.w700, letterSpacing: -0.3),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'We use your email to link transfers to your account — no password needed.',
                    style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.55), fontSize: 14, height: 1.6),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  GestureDetector(
                    onTap: controller.goLogin,
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                        color: scheme.primary,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [BoxShadow(color: _accentGlow, blurRadius: 24, spreadRadius: 0, offset: Offset(0, 6))],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: scheme.onPrimary, fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Error State ───────────────────────────────────────────────────────────────

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.controller});
  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        const _Header(title: 'My Transfers'),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.wifi_off_rounded, color: scheme.onSurface.withValues(alpha: 0.25), size: 48),
                const SizedBox(height: 16),
                Text('Could not load transfers', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.65), fontSize: 15)),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: controller.forceRefresh,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.5)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text('Retry', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.7))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ── History List ──────────────────────────────────────────────────────────────

class _HistoryList extends StatelessWidget {
  const _HistoryList({required this.controller});
  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    final transfers = controller.transfers;
    final bottomPad = MediaQuery.of(context).padding.bottom + 84;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return RefreshIndicator(
      onRefresh: controller.forceRefresh,
      color: scheme.primary,
      backgroundColor: scheme.surfaceContainerHighest,
      child: ScrollConfiguration(
        behavior: const _NoOverscrollBehavior(),
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            // Header scrolls with the list — adapts to any device's notch/status-bar.
            SliverToBoxAdapter(
              child: _Header(
                title: 'My Transfers',
                subtitle: controller.email.value.isNotEmpty
                    ? controller.email.value
                    : null,
              ),
            ),
            if (transfers.isEmpty)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: _EmptyState(),
              )
            else
              SliverPadding(
                padding: EdgeInsets.fromLTRB(16, 4, 16, 24 + bottomPad),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (ctx, i) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: _TransferCard(
                          transfer: transfers[i], controller: controller),
                    ),
                    childCount: transfers.length,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.inbox_rounded, color: scheme.onSurface.withValues(alpha: 0.15), size: 64),
          const SizedBox(height: 16),
          Text('No transfers yet', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.6), fontSize: 16, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          Text('Once you send a file, it will appear here.', style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.45), fontSize: 13)),
        ],
      ),
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

// ── Transfer Card ─────────────────────────────────────────────────────────────

class _TransferCard extends StatelessWidget {
  const _TransferCard({required this.transfer, required this.controller});
  final HistoryTransfer transfer;
  final HistoryController controller;

  @override
  Widget build(BuildContext context) {
    final expired = transfer.isExpired;
    final scheme = Theme.of(context).colorScheme;
    final cardBg = scheme.surfaceContainerHighest;
    final line = scheme.outlineVariant.withValues(alpha: 0.45);
    final dim = scheme.onSurface.withValues(alpha: 0.55);
    final dim2 = scheme.onSurface.withValues(alpha: 0.45);

    Future<void> openDetails() async {
      await showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => _TransferDetailsSheet(
          controller: controller,
          transfer: transfer,
        ),
      );
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: openDetails,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cardBg,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: expired ? line.withValues(alpha: 0.45) : line,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              // Icon
              Container(
                width: 42, height: 42,
                decoration: BoxDecoration(
                  color: expired
                      ? scheme.onSurface.withValues(alpha: 0.05)
                      : scheme.primary.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  transfer.share == 'mail' ? Icons.mail_outline_rounded : Icons.link_rounded,
                  color: expired ? scheme.onSurface.withValues(alpha: 0.35) : scheme.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${transfer.count} file${transfer.count == 1 ? '' : 's'} · ${controller.formatSize(transfer.size)}',
                      style: TextStyle(
                        color: expired ? dim : scheme.onSurface,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      controller.formatDate(transfer.time),
                      style: TextStyle(color: dim, fontSize: 12),
                    ),
                  ],
                ),
              ),
              if (expired)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: scheme.onSurface.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text('Expired', style: TextStyle(color: dim, fontSize: 11, fontWeight: FontWeight.w500)),
                )
              else
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: scheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text('Active', style: TextStyle(color: scheme.primary, fontSize: 11, fontWeight: FontWeight.w600)),
                ),
            ],
          ),
          if (transfer.files.isNotEmpty) ...[
            const SizedBox(height: 12),
            ...transfer.files.take(3).map((f) => _FileRow(file: f, expired: expired)),
            if (transfer.files.length > 3)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  '+${transfer.files.length - 3} more',
                  style: TextStyle(color: dim2, fontSize: 11),
                ),
              ),
          ],
          ],
        ),
      ),
    ));
  }
}

class _TransferDetailsSheet extends StatelessWidget {
  const _TransferDetailsSheet({required this.controller, required this.transfer});
  final HistoryController controller;
  final HistoryTransfer transfer;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final base = resolveBaseUrl();
    final link = base.isEmpty ? transfer.uploadId : '$base${transfer.uploadId}';
    final expired = transfer.isExpired;

    String fallbackName() {
      if (transfer.count > 1) return '${transfer.uploadId}.zip';
      if (transfer.files.isNotEmpty) return transfer.files.first.name;
      return '${transfer.uploadId}.bin';
    }

    return SafeArea(
      top: false,
      child: Container(
        margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        decoration: BoxDecoration(
          color: scheme.surface,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.55)),
        ),
        child: StatefulBuilder(
          builder: (ctx, setState) {
            var downloading = false;

            Future<void> copyLink() async {
              await Clipboard.setData(ClipboardData(text: link));
              AppSnack.success('Copied', 'Link copied to clipboard');
            }

            Future<void> download() async {
              if (expired) {
                AppSnack.error('Expired', 'This transfer is expired.');
                return;
              }
              setState(() => downloading = true);
              try {
                final repo = Get.find<DownloadRepository>();
                final site = base.isNotEmpty ? base : resolveBaseUrl();
                final pageUrl = site.isNotEmpty ? '$site${transfer.uploadId}' : link;
                final r = await repo.downloadToFile(
                  uploadId: transfer.uploadId,
                  privateId: '',
                  pageUrl: pageUrl,
                  filename: fallbackName(),
                );
                AppSnack.success('Download complete', '"${r.filename}" saved to Downloads');
              } catch (e) {
                AppSnack.error('Download failed', '$e');
              } finally {
                setState(() => downloading = false);
              }
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 44,
                    height: 5,
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: scheme.onSurface.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Transfer details',
                        style: TextStyle(
                          color: scheme.onSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(Icons.close_rounded, color: scheme.onSurface.withValues(alpha: 0.65)),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  '${transfer.count} file${transfer.count == 1 ? '' : 's'} · ${controller.formatSize(transfer.size)}',
                  style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.6), fontSize: 12),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: scheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.55)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SelectableText(
                          link,
                          style: TextStyle(
                            color: scheme.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: copyLink,
                        icon: Icon(Icons.copy_rounded, color: scheme.onSurface.withValues(alpha: 0.65)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                if (transfer.files.isNotEmpty) ...[
                  Text(
                    'Files',
                    style: TextStyle(
                      color: scheme.onSurface.withValues(alpha: 0.6),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 240),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: transfer.files.length,
                      separatorBuilder: (_, __) => Divider(height: 1, color: scheme.outlineVariant.withValues(alpha: 0.4)),
                      itemBuilder: (_, i) {
                        final f = transfer.files[i];
                        final icon = _FileRow.iconFor(f);
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Icon(icon, size: 16, color: scheme.onSurface.withValues(alpha: 0.55)),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  f.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.85), fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                controller.formatSize(f.size),
                                style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.55), fontSize: 11),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                FilledButton.icon(
                  onPressed: downloading ? null : download,
                  icon: downloading
                      ? SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2, color: scheme.onPrimary),
                        )
                      : const Icon(Icons.download_rounded, size: 18),
                  label: Text(downloading ? 'Downloading…' : (expired ? 'Expired' : 'Download')),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _FileRow extends StatelessWidget {
  const _FileRow({required this.file, required this.expired});
  final HistoryTransferFile file;
  final bool expired;

  static String _extOf(String name) {
    final i = name.lastIndexOf('.');
    if (i < 0 || i == name.length - 1) return '';
    return name.substring(i + 1).toLowerCase();
  }

  static IconData iconFor(HistoryTransferFile file) {
    final ct = file.contentType.toLowerCase();
    if (ct.contains('video')) return Icons.video_file_outlined;
    if (ct.contains('image')) return Icons.image_outlined;
    if (ct.contains('audio')) return Icons.audio_file_outlined;
    if (ct.contains('pdf')) return Icons.picture_as_pdf_outlined;
    if (ct.contains('zip') || ct.contains('archive')) return Icons.folder_zip_outlined;

    // Fallback: infer by extension when server doesn't provide content_type.
    final ext = _extOf(file.name);
    if (['mp4', 'mov', 'mkv', 'avi', 'webm', 'm4v'].contains(ext)) {
      return Icons.video_file_outlined;
    }
    if (['jpg', 'jpeg', 'png', 'gif', 'webp', 'heic'].contains(ext)) {
      return Icons.image_outlined;
    }
    if (['mp3', 'wav', 'aac', 'm4a', 'flac', 'ogg'].contains(ext)) {
      return Icons.audio_file_outlined;
    }
    if (ext == 'pdf') return Icons.picture_as_pdf_outlined;
    if (['zip', 'rar', '7z', 'tar', 'gz'].contains(ext)) return Icons.folder_zip_outlined;
    if (['txt', 'md', 'rtf'].contains(ext)) return Icons.description_outlined;

    return Icons.insert_drive_file_outlined;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dim = scheme.onSurface.withValues(alpha: 0.35);
    final dim2 = scheme.onSurface.withValues(alpha: 0.55);
    final dim3 = scheme.onSurface.withValues(alpha: 0.45);
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Icon(iconFor(file), color: expired ? dim : dim2, size: 14),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              file.name,
              style: TextStyle(color: expired ? dim : dim3, fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
