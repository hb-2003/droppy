import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Consistent auth header with back arrow used on Login/Signup screens.
class AuthTopBar extends StatelessWidget {
  const AuthTopBar({super.key, this.onBack});

  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: InkWell(
          onTap: onBack ?? () => Get.back(),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.6)),
            ),
            child: Icon(Icons.arrow_back_rounded, color: scheme.onSurface.withValues(alpha: 0.85)),
          ),
        ),
      ),
    );
  }
}

