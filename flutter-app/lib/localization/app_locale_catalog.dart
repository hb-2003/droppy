import 'package:flutter/material.dart';

class AppLocaleOption {
  const AppLocaleOption({
    required this.code,
    required this.label,
    required this.nativeLabel,
  });

  final String code;
  final String label;
  final String nativeLabel;

  Locale get locale => Locale(code);
}

abstract final class AppLocaleCatalog {
  static const all = <AppLocaleOption>[
    AppLocaleOption(code: 'en', label: 'English', nativeLabel: 'English'),
    AppLocaleOption(code: 'fr', label: 'French', nativeLabel: 'Français'),
    AppLocaleOption(code: 'hi', label: 'Hindi', nativeLabel: 'हिन्दी'),
    AppLocaleOption(code: 'es', label: 'Spanish', nativeLabel: 'Español'),
    AppLocaleOption(code: 'de', label: 'German', nativeLabel: 'Deutsch'),
    AppLocaleOption(code: 'ru', label: 'Russian', nativeLabel: 'Русский'),
    AppLocaleOption(code: 'pt', label: 'Portuguese', nativeLabel: 'Português'),
    AppLocaleOption(code: 'it', label: 'Italian', nativeLabel: 'Italiano'),
    AppLocaleOption(code: 'nl', label: 'Dutch', nativeLabel: 'Nederlands'),
    AppLocaleOption(code: 'tr', label: 'Turkish', nativeLabel: 'Türkçe'),
    AppLocaleOption(code: 'ta', label: 'Tamil', nativeLabel: 'தமிழ்'),
    AppLocaleOption(code: 'te', label: 'Telugu', nativeLabel: 'తెలుగు'),
    AppLocaleOption(code: 'kn', label: 'Kannada', nativeLabel: 'ಕನ್ನಡ'),
    AppLocaleOption(code: 'ml', label: 'Malayalam', nativeLabel: 'മലയാളം'),
    AppLocaleOption(code: 'be', label: 'Belarusian', nativeLabel: 'Беларуская'),
    AppLocaleOption(code: 'bg', label: 'Bulgarian', nativeLabel: 'Български'),
    AppLocaleOption(code: 'hr', label: 'Croatian', nativeLabel: 'Hrvatski'),
    AppLocaleOption(code: 'cs', label: 'Czech', nativeLabel: 'Čeština'),
    AppLocaleOption(code: 'da', label: 'Danish', nativeLabel: 'Dansk'),
    AppLocaleOption(code: 'fil', label: 'Filipino', nativeLabel: 'Filipino'),
    AppLocaleOption(code: 'fi', label: 'Finnish', nativeLabel: 'Suomi'),
    AppLocaleOption(code: 'el', label: 'Greek', nativeLabel: 'Ελληνικά'),
    AppLocaleOption(code: 'hu', label: 'Hungarian', nativeLabel: 'Magyar'),
    AppLocaleOption(code: 'is', label: 'Icelandic', nativeLabel: 'Íslenska'),
    AppLocaleOption(code: 'ja', label: 'Japanese', nativeLabel: '日本語'),
    AppLocaleOption(code: 'kk', label: 'Kazakh', nativeLabel: 'Қазақша'),
    AppLocaleOption(code: 'no', label: 'Norwegian', nativeLabel: 'Norsk'),
    AppLocaleOption(code: 'pl', label: 'Polish', nativeLabel: 'Polski'),
    AppLocaleOption(code: 'ro', label: 'Romanian', nativeLabel: 'Română'),
    AppLocaleOption(code: 'sk', label: 'Slovak', nativeLabel: 'Slovenčina'),
    AppLocaleOption(code: 'sv', label: 'Swedish', nativeLabel: 'Svenska'),
    AppLocaleOption(code: 'uk', label: 'Ukrainian', nativeLabel: 'Українська'),
    AppLocaleOption(code: 'vi', label: 'Vietnamese', nativeLabel: 'Tiếng Việt'),
    AppLocaleOption(code: 'sq', label: 'Albanian', nativeLabel: 'Shqip'),
    AppLocaleOption(code: 'hy', label: 'Armenian', nativeLabel: 'Հայերեն'),
    AppLocaleOption(code: 'az', label: 'Azerbaijani', nativeLabel: 'Azərbaycan'),
    AppLocaleOption(code: 'eu', label: 'Basque', nativeLabel: 'Euskara'),
    AppLocaleOption(code: 'ca', label: 'Catalan', nativeLabel: 'Català'),
    AppLocaleOption(code: 'et', label: 'Estonian', nativeLabel: 'Eesti'),
    AppLocaleOption(code: 'gl', label: 'Galician', nativeLabel: 'Galego'),
    AppLocaleOption(code: 'ka', label: 'Georgian', nativeLabel: 'ქართული'),
    AppLocaleOption(code: 'id', label: 'Indonesian', nativeLabel: 'Bahasa Indonesia'),
    AppLocaleOption(code: 'ko', label: 'Korean', nativeLabel: '한국어'),
    AppLocaleOption(code: 'ky', label: 'Kyrgyz', nativeLabel: 'Кыргызча'),
    AppLocaleOption(code: 'lo', label: 'Lao', nativeLabel: 'ລາວ'),
    AppLocaleOption(code: 'lv', label: 'Latvian', nativeLabel: 'Latviešu'),
    AppLocaleOption(code: 'lt', label: 'Lithuanian', nativeLabel: 'Lietuvių'),
    AppLocaleOption(code: 'mk', label: 'Macedonian', nativeLabel: 'Македонски'),
    AppLocaleOption(code: 'mn', label: 'Mongolian', nativeLabel: 'Монгол'),
    AppLocaleOption(code: 'ne', label: 'Nepali', nativeLabel: 'नेपाली'),
    AppLocaleOption(code: 'sr', label: 'Serbian', nativeLabel: 'Српски'),
    AppLocaleOption(code: 'th', label: 'Thai', nativeLabel: 'ไทย'),
    AppLocaleOption(code: 'he', label: 'Hebrew', nativeLabel: 'עברית'),
    AppLocaleOption(code: 'ar', label: 'Arabic', nativeLabel: 'العربية'),
    AppLocaleOption(code: 'fa', label: 'Persian', nativeLabel: 'فارسی'),
    AppLocaleOption(code: 'ur', label: 'Urdu', nativeLabel: 'اردو'),
  ];

  static AppLocaleOption? findByCode(String code) {
    for (final o in all) {
      if (o.code == code) return o;
    }
    return null;
  }
}
