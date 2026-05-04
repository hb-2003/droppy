import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';
import 'package:sendlargefiles/modules/login/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.loginTitle)),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(t.loginRequiredBody),
            const SizedBox(height: 24),
            TextField(
              controller: controller.emailCtrl,
              decoration: InputDecoration(labelText: t.emailHint),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller.passCtrl,
              decoration: InputDecoration(labelText: t.passwordHint),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            Obx(
              () => FilledButton(
                onPressed: controller.loading.value ? null : controller.submit,
                child: Text(t.signIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
