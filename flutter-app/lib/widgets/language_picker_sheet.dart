import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:sendlargefiles/localization/app_locale_catalog.dart';
import 'package:sendlargefiles/l10n/app_localizations.dart';

Future<void> showLanguagePickerSheet({
  required BuildContext context,
  required ValueChanged<Locale> onSelected,
}) async {
  await showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    builder: (ctx) => _LanguagePickerSheet(onSelected: onSelected),
  );
}

class _LanguagePickerSheet extends StatefulWidget {
  const _LanguagePickerSheet({required this.onSelected});

  final ValueChanged<Locale> onSelected;

  @override
  State<_LanguagePickerSheet> createState() => _LanguagePickerSheetState();
}

class _LanguagePickerSheetState extends State<_LanguagePickerSheet> {
  final _searchCtrl = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  List<AppLocaleOption> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return AppLocaleCatalog.all;
    return AppLocaleCatalog.all.where((o) {
      return o.label.toLowerCase().contains(q) ||
          o.nativeLabel.toLowerCase().contains(q) ||
          o.code.toLowerCase().contains(q);
    }).toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final scheme = Theme.of(context).colorScheme;
    final current = Get.find<LocaleController>().locale.value.languageCode;
    final maxHeight = MediaQuery.sizeOf(context).height * 0.75;

    return Material(
      color: scheme.surface,
      child: SafeArea(
        child: SizedBox(
          height: maxHeight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: TextField(
                  controller: _searchCtrl,
                  decoration: InputDecoration(
                    hintText: t.settingsLanguage,
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onChanged: (v) => setState(() => _query = v),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _filtered.length,
                  itemBuilder: (context, index) {
                    final option = _filtered[index];
                    final selected = option.code == current;
                    return Material(
                      color: selected
                          ? scheme.primaryContainer.withValues(alpha: 0.25)
                          : Colors.transparent,
                      child: ListTile(
                        title: Text(option.nativeLabel),
                        subtitle: Text(option.label),
                        trailing: selected
                            ? Icon(Icons.check_circle, color: scheme.primary)
                            : null,
                        onTap: () {
                          widget.onSelected(option.locale);
                          Navigator.of(context).pop();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
