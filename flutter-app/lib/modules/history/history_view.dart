import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/history_repository.dart';
import 'package:sendlargefiles/modules/history/history_controller.dart';

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
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 7, height: 7,
                decoration: BoxDecoration(color: scheme.primary, shape: BoxShape.circle),
              ),
              const SizedBox(width: 8),
              Text(
                'Share Large\nVideo Files',
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 10,
                  height: 1.35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: TextStyle(
              color: scheme.onSurface,
              fontSize: 28,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.6,
              height: 1.05,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(subtitle!, style: TextStyle(color: scheme.onSurface.withValues(alpha: 0.55), fontSize: 13)),
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
                  onTap: controller.load,
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
      onRefresh: controller.load,
      color: scheme.primary,
      backgroundColor: scheme.surfaceContainerHighest,
      child: ScrollConfiguration(
        behavior: const _NoOverscrollBehavior(),
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              snap: false,
              backgroundColor: theme.scaffoldBackgroundColor,
              foregroundColor: scheme.onSurface,
              elevation: 0,
              scrolledUnderElevation: 0,
              surfaceTintColor: Colors.transparent,
              toolbarHeight: 0,
              expandedHeight: 132,
              flexibleSpace: SafeArea(
                bottom: false,
                child: _Header(
                  title: 'My Transfers',
                  subtitle: controller.email.value.isNotEmpty ? controller.email.value : null,
                ),
              ),
            ),
            if (transfers.isEmpty)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: _EmptyState(),
              )
            else
              SliverPadding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 24 + bottomPad),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (ctx, i) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: _TransferCard(transfer: transfers[i], controller: controller),
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

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: expired
              ? line.withValues(alpha: 0.45)
              : line,
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
    );
  }
}

class _FileRow extends StatelessWidget {
  const _FileRow({required this.file, required this.expired});
  final HistoryTransferFile file;
  final bool expired;

  IconData _icon() {
    final ct = file.contentType.toLowerCase();
    if (ct.contains('video')) return Icons.video_file_outlined;
    if (ct.contains('image')) return Icons.image_outlined;
    if (ct.contains('audio')) return Icons.audio_file_outlined;
    if (ct.contains('pdf')) return Icons.picture_as_pdf_outlined;
    if (ct.contains('zip') || ct.contains('archive')) return Icons.folder_zip_outlined;
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
          Icon(_icon(), color: expired ? dim : dim2, size: 14),
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
