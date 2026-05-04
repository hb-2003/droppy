import 'json_utils.dart';

/// Rows from `handler/app_config` → `languages[]`.
class LangRow {
  const LangRow({
    required this.id,
    required this.name,
    required this.path,
    required this.locale,
  });

  final int id;
  final String name;
  final String path;
  final String locale;

  factory LangRow.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return const LangRow(id: 0, name: 'English', path: 'english', locale: 'en');
    }
    return LangRow(
      id: JsonRead.intOr(json['id'], 0),
      name: JsonRead.stringOr(json['name'], ''),
      path: JsonRead.stringOr(json['path'], 'english'),
      locale: JsonRead.stringOr(json['locale'], 'en'),
    );
  }
}

/// Bootstrap from `GET handler/app_config` — all fields have safe defaults if JSON is partial or null.
class AppConfig {
  const AppConfig({
    required this.siteUrl,
    required this.themeColor,
    required this.themeColorSecondary,
    required this.themeColorText,
    required this.maxSizeMb,
    required this.maxChunkSizeMb,
    required this.maxFiles,
    required this.maxConcurrentUploads,
    required this.shareEnabled,
    required this.defaultSharetype,
    required this.blockedTypes,
    /// Server values: `false`, `both`, `upload`, `download`.
    required this.lockPage,
    required this.acceptTerms,
    required this.defaultLanguagePath,
    required this.languages,
    required this.recaptchaSiteKey,
    required this.expireOptionsSec,
  });

  final String siteUrl;
  final String themeColor;
  final String themeColorSecondary;
  final String themeColorText;

  /// Server `max_size` (MB).
  final int maxSizeMb;

  /// Server `max_chunk_size` (MB).
  final int maxChunkSizeMb;

  final int maxFiles;
  final int maxConcurrentUploads;
  final bool shareEnabled;
  final String defaultSharetype;
  final String blockedTypes;
  final String lockPage;
  final bool acceptTerms;

  /// Config `language` item (path key for default upload language).
  final String defaultLanguagePath;
  final List<LangRow> languages;
  final String recaptchaSiteKey;

  /// `expire_options` from server (same units the upload `expire` field expects).
  final List<int> expireOptionsSec;

  int get maxSizeBytes => maxSizeMb * 1024 * 1024;
  int get chunkSizeBytes => maxChunkSizeMb * 1024 * 1024;

  factory AppConfig.fromJson(Map<String, dynamic>? json) {
    if (json == null || json.isEmpty) return AppConfig.fallback();

    bool acceptTerms(dynamic v) {
      if (v == true) return true;
      final s = JsonRead.string(v)?.toLowerCase();
      return s == 'yes' || s == 'true' || s == '1';
    }

    final languages = <LangRow>[];
    final list = JsonRead.list(json['languages']);
    if (list != null) {
      for (final e in list) {
        final m = JsonRead.map(e);
        if (m != null) languages.add(LangRow.fromJson(m));
      }
    }

    final expireRaw = JsonRead.list(json['expire_options']);
    final expire = <int>[];
    if (expireRaw != null) {
      for (final v in expireRaw) {
        final n = JsonRead.intVal(v);
        if (n != null) expire.add(n);
      }
    }

    return AppConfig(
      siteUrl: JsonRead.stringOr(json['site_url'], ''),
      themeColor: JsonRead.stringOr(json['theme_color'], '#3e8ed0'),
      themeColorSecondary: JsonRead.stringOr(json['theme_color_secondary'], '#3e8ed0'),
      themeColorText: JsonRead.stringOr(json['theme_color_text'], '#ffffff'),
      maxSizeMb: JsonRead.intOr(json['max_size'], 100),
      maxChunkSizeMb: JsonRead.intOr(json['max_chunk_size'], 2),
      maxFiles: JsonRead.intOr(json['max_files'], 1),
      maxConcurrentUploads: JsonRead.intOr(json['max_concurrent_uploads'], 1),
      shareEnabled: JsonRead.boolVal(json['share_enabled']),
      defaultSharetype: JsonRead.stringOr(json['default_sharetype'], 'link'),
      blockedTypes: JsonRead.stringOr(json['blocked_types'], ''),
      lockPage: JsonRead.stringOr(json['lock_page'], 'false'),
      acceptTerms: acceptTerms(json['accept_terms']),
      defaultLanguagePath: JsonRead.stringOr(json['language'], 'english'),
      languages: languages,
      recaptchaSiteKey: JsonRead.stringOr(json['recaptcha_site_key'], ''),
      expireOptionsSec: expire,
    );
  }

  factory AppConfig.fallback() {
    return const AppConfig(
      siteUrl: '',
      themeColor: '#3e8ed0',
      themeColorSecondary: '#3e8ed0',
      themeColorText: '#ffffff',
      maxSizeMb: 100,
      maxChunkSizeMb: 2,
      maxFiles: 1,
      maxConcurrentUploads: 1,
      shareEnabled: true,
      defaultSharetype: 'link',
      blockedTypes: '',
      lockPage: 'false',
      acceptTerms: false,
      defaultLanguagePath: 'english',
      languages: [],
      recaptchaSiteKey: '',
      expireOptionsSec: <int>[],
    );
  }
}
