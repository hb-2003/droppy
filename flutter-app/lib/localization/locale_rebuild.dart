import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';

/// Rebuilds [child] when the active app language changes.
class LocaleRebuild extends StatelessWidget {
  const LocaleRebuild({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final localeKey = Get.find<LocaleController>().locale.value.toString();
      return KeyedSubtree(
        key: ValueKey<String>(localeKey),
        child: child,
      );
    });
  }
}
