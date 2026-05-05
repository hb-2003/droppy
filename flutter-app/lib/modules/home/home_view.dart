import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        title: _AppWordmark(),
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
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          if (controller.uploading.value && !controller.awaitingVerify.value) {
            return _ProgressPane(controller: controller, scheme: scheme);
          }
          if (controller.awaitingVerify.value) {
            return _VerifyPane(controller: controller, t: t);
          }
          if (controller.finishedLink.value.isNotEmpty || controller.mailFinished.value) {
            return _SuccessPane(controller: controller, t: t, scheme: scheme);
          }
          return _UploadForm(controller: controller, t: t, scheme: scheme);
        }),
      ),
    );
  }
}

// ─── App Wordmark ─────────────────────────────────────────────────────────────

class _AppWordmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Share Large\n',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: DroppyWebColors.text,
                  height: 1.2,
                ),
          ),
          TextSpan(
            text: 'Video Files',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: primary,
                  height: 1.2,
                ),
          ),
        ],
      ),
    );
  }
}

// ─── Filetype Chips ───────────────────────────────────────────────────────────

class _FiletypeChips extends StatelessWidget {
  const _FiletypeChips();
  static const _types = ['MP4', 'MOV', 'ZIP', 'PSD', 'WAV'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 6,
      alignment: WrapAlignment.center,
      children: _types.map((t) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: DroppyWebColors.ink900,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: DroppyWebColors.lineStrong),
          ),
          child: Text(
            t,
            style: AppTheme.meta(color: DroppyWebColors.textDim)
                .copyWith(fontSize: 11, fontWeight: FontWeight.w600),
          ),
        );
      }).toList(),
    );
  }
}

// ─── Drop Zone — empty ────────────────────────────────────────────────────────

class _DropZoneEmpty extends StatelessWidget {
  const _DropZoneEmpty({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final maxLabel = controller.cfg.maxSizeMb >= 1000
        ? '${(controller.cfg.maxSizeMb / 1000).toStringAsFixed(0)} GB'
        : '${controller.cfg.maxSizeMb} MB';

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: DroppyWebColors.lineStrong, width: 1.5),
          ),
          child: Column(
            children: [
              _FileIllustration(),
              const SizedBox(height: 12),
              Text(
                'Drop a heavy file here.',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text('Up to $maxLabel total', style: AppTheme.meta(), textAlign: TextAlign.center),
              const SizedBox(height: 12),
              const _FiletypeChips(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Obx(
          () => TextButton.icon(
            key: ValueKey<bool>(controller.pickingFiles.value),
            onPressed: controller.pickingFiles.value ? null : controller.pickFiles,
            icon: controller.pickingFiles.value
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.folder_open_rounded, size: 18),
            label: Text(controller.pickingFiles.value ? 'Loading…' : t.pickFiles),
          ),
        ),
      ],
    );
  }
}

class _FileIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final border = DroppyWebColors.lineStrong;
    final accent = Theme.of(context).colorScheme.primary.withValues(alpha: 0.12);
    return SizedBox(
      height: 56,
      width: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 6,
            child: Transform.rotate(angle: -0.22, child: _FileCard(color: border)),
          ),
          Positioned(
            right: 0,
            top: 6,
            child: Transform.rotate(angle: 0.22, child: _FileCard(color: border)),
          ),
          _FileCard(
            color: accent,
            child: const Icon(Icons.add_rounded, size: 20, color: DroppyWebColors.textDim),
          ),
        ],
      ),
    );
  }
}

class _FileCard extends StatelessWidget {
  const _FileCard({required this.color, this.child});
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: DroppyWebColors.lineStrong),
      ),
      child: child != null ? Center(child: child) : null,
    );
  }
}

// ─── Drop Zone — files selected ───────────────────────────────────────────────

class _DropZoneFilled extends StatelessWidget {
  const _DropZoneFilled({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final totalBytes = controller.files.fold<int>(0, (s, f) => s + f.size);
    final totalMb = (totalBytes / (1024 * 1024)).toStringAsFixed(1);
    final maxMb = controller.cfg.maxSizeMb.toDouble();
    final remainMb = (maxMb - totalBytes / (1024 * 1024)).clamp(0.0, maxMb).toStringAsFixed(1);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: DroppyWebColors.lineStrong),
          ),
          child: Column(
            children: controller.files.asMap().entries.map((entry) {
              final i = entry.key;
              final f = entry.value;
              final sizeMb = (f.size / (1024 * 1024)).toStringAsFixed(2);
              return Column(
                children: [
                  if (i > 0)
                    const Divider(height: 1, thickness: 1, color: DroppyWebColors.lineStrong),
                  ListTile(
                    dense: true,
                    leading: const Icon(Icons.insert_drive_file_outlined,
                        size: 20, color: DroppyWebColors.textDim),
                    title: Text(
                      f.name,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text('$sizeMb MB', style: AppTheme.meta()),
                    trailing: IconButton(
                      icon: const Icon(Icons.close_rounded, size: 18),
                      color: DroppyWebColors.textDim,
                      onPressed: () => controller.removeFile(f),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text('$totalMb MB', style: AppTheme.meta()),
            const SizedBox(width: 6),
            Container(width: 1, height: 10, color: DroppyWebColors.lineStrong),
            const SizedBox(width: 6),
            Text('${controller.files.length} file${controller.files.length == 1 ? '' : 's'}',
                style: AppTheme.meta()),
            const SizedBox(width: 6),
            Container(width: 1, height: 10, color: DroppyWebColors.lineStrong),
            const SizedBox(width: 6),
            Text('$remainMb MB left', style: AppTheme.meta()),
          ],
        ),
        const SizedBox(height: 10),
        Obx(
          () => OutlinedButton.icon(
            key: ValueKey<bool>(controller.pickingFiles.value),
            onPressed: controller.pickingFiles.value ? null : controller.pickFiles,
            icon: controller.pickingFiles.value
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.add_rounded, size: 16),
            label: Text(controller.pickingFiles.value ? 'Adding…' : 'Add more files'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              textStyle: const TextStyle(fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }
}

// ─── Advanced Options (collapsible) ──────────────────────────────────────────

class _AdvancedOptions extends StatefulWidget {
  const _AdvancedOptions({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  State<_AdvancedOptions> createState() => _AdvancedOptionsState();
}

class _AdvancedOptionsState extends State<_AdvancedOptions> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DroppyWebColors.ink800,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: DroppyWebColors.lineStrong),
      ),
      child: Column(
        children: [
          // Toggle header
          InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.tune_rounded, size: 16, color: DroppyWebColors.textDim),
                  const SizedBox(width: 8),
                  Text('Options', style: AppTheme.eyebrow()),
                  const Spacer(),
                  Icon(
                    _expanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
                    size: 18,
                    color: DroppyWebColors.textDim,
                  ),
                ],
              ),
            ),
          ),

          // Expandable content
          if (_expanded) ...[
            const Divider(height: 1, thickness: 1, color: DroppyWebColors.lineStrong),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: widget.controller.messageCtrl,
                    decoration: InputDecoration(
                      labelText: widget.t.messageOptional,
                      filled: true,
                      fillColor: DroppyWebColors.ink900,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: widget.controller.passwordCtrl,
                    decoration: InputDecoration(
                      labelText: widget.t.passwordOptional,
                      prefixIcon: const Icon(Icons.lock_outline_rounded, size: 18),
                      filled: true,
                      fillColor: DroppyWebColors.ink900,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.t.destructAfterDownload,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: DroppyWebColors.text, fontSize: 13),
                        ),
                      ),
                      Obx(
                        () => Switch(
                          value: widget.controller.destruct.value == 'yes',
                          onChanged: (v) =>
                              widget.controller.destruct.value = v ? 'yes' : 'no',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => DropdownButtonFormField<int>(
                      key: ValueKey<int>(widget.controller.expireSec.value),
                      initialValue: widget.controller.expireSec.value,
                      decoration: InputDecoration(
                        labelText: 'Expires after',
                        filled: true,
                        fillColor: DroppyWebColors.ink900,
                        prefixIcon: const Icon(Icons.timer_outlined, size: 18),
                      ),
                      items: widget.controller.cfg.expireOptionsSec.map((s) {
                        return DropdownMenuItem(value: s, child: Text(_fmt(s)));
                      }).toList(),
                      onChanged: (v) {
                        if (v != null) widget.controller.expireSec.value = v;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  String _fmt(int s) {
    if (s < 3600) return '${s ~/ 60} min';
    if (s < 86400) return '${s ~/ 3600} hr';
    return '${s ~/ 86400} day${s ~/ 86400 == 1 ? '' : 's'}';
  }
}

// ─── Upload Form ──────────────────────────────────────────────────────────────

class _UploadForm extends StatelessWidget {
  const _UploadForm({
    required this.controller,
    required this.t,
    required this.scheme,
  });

  final HomeController controller;
  final AppLocalizations t;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Container(
        decoration: BoxDecoration(
          color: DroppyWebColors.ink900,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: DroppyWebColors.lineStrong),
          boxShadow: DroppyShadow.uploadCard,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ── Stats bar (top of card) ──
            Container(
              decoration: const BoxDecoration(
                color: DroppyWebColors.ink800,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border(bottom: BorderSide(color: DroppyWebColors.lineStrong)),
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    _StatCell(label: 'Max size', value: _maxSize()),
                    const VerticalDivider(width: 1, thickness: 1, color: DroppyWebColors.lineStrong),
                    _StatCell(label: 'Max files', value: '${controller.cfg.maxFiles}'),
                    const VerticalDivider(width: 1, thickness: 1, color: DroppyWebColors.lineStrong),
                    const _StatCell(label: 'Cost', value: 'Free'),
                  ],
                ),
              ),
            ),

            // ── Card body ──
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Heading
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Send heavy files\n',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 26),
                        ),
                        TextSpan(
                          text: 'instantly.',
                          style: AppTheme.heroAccent(color: scheme.primary, fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Mode toggle
                  Obx(
                    () => SegmentedButton<String>(
                      segments: [
                        ButtonSegment(
                          value: 'link',
                          icon: const Icon(Icons.link_rounded, size: 16),
                          label: Text(t.modeLink),
                        ),
                        ButtonSegment(
                          value: 'mail',
                          icon: const Icon(Icons.mail_outline_rounded, size: 16),
                          label: Text(t.modeEmail),
                        ),
                      ],
                      selected: {controller.shareMode.value},
                      onSelectionChanged: (s) => controller.setShareMode(s.first),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Email fields (mail mode only)
                  Obx(() {
                    if (!controller.cfg.shareEnabled || controller.shareMode.value != 'mail') {
                      return const SizedBox.shrink();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: controller.emailFromCtrl,
                          decoration: InputDecoration(
                            labelText: t.emailFrom,
                            prefixIcon:
                                const Icon(Icons.person_outline_rounded, size: 18),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: controller.emailToCtrl,
                          decoration: InputDecoration(
                            labelText: t.emailTo,
                            hintText: 'a@b.com, c@d.com',
                            prefixIcon: const Icon(Icons.group_outlined, size: 18),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 2,
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }),

                  // Drop zone
                  Obx(() {
                    if (controller.files.isEmpty) {
                      return _DropZoneEmpty(controller: controller, t: t);
                    }
                    return _DropZoneFilled(controller: controller, t: t);
                  }),
                  const SizedBox(height: 16),

                  // Advanced options (collapsible)
                  _AdvancedOptions(controller: controller, t: t),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            // ── Send button block ──
            Container(
              decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: DroppyWebColors.lineStrong)),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(14),
              child: Obx(
                () => FilledButton(
                  onPressed: controller.files.isEmpty || controller.uploading.value || controller.pickingFiles.value
                      ? null
                      : () => controller.startSend(context),
                  style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (controller.uploading.value) ...[
                        const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      ] else ...[
                        const Icon(Icons.send_rounded, size: 18),
                      ],
                      const SizedBox(width: 8),
                      Text(
                        controller.uploading.value ? 'Starting…' : t.sendButton,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _maxSize() {
    final mb = controller.cfg.maxSizeMb;
    return mb >= 1000 ? '${(mb / 1000).toStringAsFixed(0)} GB' : '$mb MB';
  }
}

class _StatCell extends StatelessWidget {
  const _StatCell({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Text(
              value,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: DroppyWebColors.text,
                  ),
            ),
            const SizedBox(height: 2),
            Text(label, style: AppTheme.meta()),
          ],
        ),
      ),
    );
  }
}

// ─── Progress Pane ────────────────────────────────────────────────────────────

class _ProgressPane extends StatelessWidget {
  const _ProgressPane({required this.controller, required this.scheme});
  final HomeController controller;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() {
        final p = controller.progress.value.clamp(0.0, 1.0);
        final pctLabel = (p * 100).toStringAsFixed(1);
        final sent = controller.uploadSentBytes.value;
        final total = controller.uploadTotalBytes.value;
        final remaining = (total - sent).clamp(0, total);
        String fmt(int b) {
          const kb = 1024.0;
          const mb = kb * 1024.0;
          const gb = mb * 1024.0;
          if (b >= gb) return '${(b / gb).toStringAsFixed(2)} GB';
          if (b >= mb) return '${(b / mb).toStringAsFixed(1)} MB';
          if (b >= kb) return '${(b / kb).toStringAsFixed(0)} KB';
          return '$b B';
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox.expand(
                    child: CircularProgressIndicator(
                      value: p,
                      strokeWidth: 8,
                      backgroundColor: DroppyWebColors.lineStrong,
                      color: scheme.primary,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$pctLabel%',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Uploading…',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              '${fmt(sent)} / ${fmt(total)}  •  ${fmt(remaining)} left',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: controller.cancelUpload,
              icon: const Icon(Icons.close_rounded, size: 18),
              label: const Text('Cancel upload'),
            ),
          ],
        );
      }),
    );
  }
}

// ─── Success Pane ─────────────────────────────────────────────────────────────

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
    final isLink = controller.finishedLink.value.isNotEmpty;

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
      children: [
        Icon(
          isLink ? Icons.check_circle_rounded : Icons.mail_outline_rounded,
          size: 64,
          color: scheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          isLink ? 'Transfer ready!' : 'Email sent!',
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: DroppyWebColors.text),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          isLink
              ? 'Share this link with your recipient.'
              : "We've notified your recipient(s).",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        if (isLink) ...[
          Container(
            decoration: BoxDecoration(
              color: DroppyWebColors.ink800,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: DroppyWebColors.lineStrong),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    child: SelectableText(
                      controller.finishedLink.value,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: DroppyWebColors.text,
                          ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(left: BorderSide(color: DroppyWebColors.lineStrong)),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.copy_rounded, size: 20),
                    tooltip: t.copyLink,
                    onPressed: () {
                      Clipboard.setData(
                          ClipboardData(text: controller.finishedLink.value));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(t.copyLink)),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.icon(
            onPressed: controller.shareResult,
            icon: const Icon(Icons.share_rounded, size: 18),
            label: Text(t.share),
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
          ),
          const SizedBox(height: 16),
        ],
        OutlinedButton(
          onPressed: () {
            controller.resetForNewTransfer();
          },
          style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(46)),
          child: Text(t.uploadMore),
        ),
      ],
    );
  }
}

// ─── Verify Pane ──────────────────────────────────────────────────────────────

class _VerifyPane extends StatelessWidget {
  const _VerifyPane({required this.controller, required this.t});
  final HomeController controller;
  final AppLocalizations t;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
      children: [
        Icon(Icons.mark_email_unread_outlined, size: 56, color: scheme.primary),
        const SizedBox(height: 20),
        Text(
          t.verifyEmailTitle,
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          t.verifyCodeHint,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 28),
        TextField(
          controller: controller.verifyController,
          decoration: const InputDecoration(
            labelText: 'Enter 6-digit code',
            prefixIcon: Icon(Icons.pin_outlined, size: 20),
          ),
          keyboardType: TextInputType.number,
          maxLength: 6,
          style: const TextStyle(fontSize: 22, letterSpacing: 8),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Obx(
          () => FilledButton(
            onPressed:
                controller.uploading.value ? null : controller.submitVerifyAndUpload,
            style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(50)),
            child: Text(t.verifySubmit),
          ),
        ),
      ],
    );
  }
}
