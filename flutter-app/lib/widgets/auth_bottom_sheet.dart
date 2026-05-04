import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/data/repositories/auth_repository.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';

/// Login / signup sheet for **email share** only (per product plan).
Future<bool> showAuthForEmailSheet(BuildContext context) async {
  final t = AppLocalizations.of(context)!;
  final email = TextEditingController();
  final pass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ok = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (ctx) {
      return Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: MediaQuery.viewInsetsOf(ctx).bottom + 20,
          top: 8,
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(t.loginTitle, style: Theme.of(ctx).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(t.signupHint, style: Theme.of(ctx).textTheme.bodySmall),
              const SizedBox(height: 16),
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: t.emailHint),
                keyboardType: TextInputType.emailAddress,
                validator: (v) => (v == null || v.isEmpty) ? t.fillFields : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: pass,
                decoration: InputDecoration(labelText: t.passwordHint),
                obscureText: true,
                validator: (v) => (v == null || v.isEmpty) ? t.fillFields : null,
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () async {
                  if (!formKey.currentState!.validate()) return;
                  final auth = Get.find<AuthRepository>();
                  final success = await auth.login(
                    email: email.text.trim(),
                    password: pass.text,
                  );
                  if (ctx.mounted) {
                    Navigator.of(ctx).pop(success);
                  }
                },
                child: Text(t.signIn),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: Text(t.cancel),
              ),
            ],
          ),
        ),
      );
    },
  );
  return ok == true;
}
