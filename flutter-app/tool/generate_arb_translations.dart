// ignore_for_file: avoid_print
//
// Fast ARB generator: batches strings into few Google Translate calls and can
// process multiple locales in parallel.
//
// Run: dart run tool/generate_arb_translations.dart
// Options:
//   --locale=fr              One locale only
//   --force                  Overwrite existing ARB files
//   --batch-size=50          Strings per translate request (default 50)
//   --parallel-locales=4     Locales to generate at once (default 4)
//   --no-parallel            One locale at a time

import 'dart:convert';
import 'dart:io';

import 'package:translator/translator.dart';

const _itemStart = '\u241C'; // record separator
const _itemEnd = '\u241D';
const _batchJoin = '\u241E';

const _targets = <String, String>{
  'fr': 'French',
  'es': 'Spanish',
  'de': 'German',
  'ru': 'Russian',
  'pt': 'Portuguese',
  'it': 'Italian',
  'nl': 'Dutch',
  'tr': 'Turkish',
  'ta': 'Tamil',
  'te': 'Telugu',
  'kn': 'Kannada',
  'ml': 'Malayalam',
  'be': 'Belarusian',
  'bg': 'Bulgarian',
  'hr': 'Croatian',
  'cs': 'Czech',
  'da': 'Danish',
  'fil': 'Filipino',
  'fi': 'Finnish',
  'el': 'Greek',
  'hu': 'Hungarian',
  'is': 'Icelandic',
  'ja': 'Japanese',
  'kk': 'Kazakh',
  'no': 'Norwegian',
  'pl': 'Polish',
  'ro': 'Romanian',
  'sk': 'Slovak',
  'sv': 'Swedish',
  'uk': 'Ukrainian',
  'vi': 'Vietnamese',
  'sq': 'Albanian',
  'hy': 'Armenian',
  'az': 'Azerbaijani',
  'eu': 'Basque',
  'ca': 'Catalan',
  'et': 'Estonian',
  'gl': 'Galician',
  'ka': 'Georgian',
  'id': 'Indonesian',
  'ko': 'Korean',
  'ky': 'Kyrgyz',
  'lo': 'Lao',
  'lv': 'Latvian',
  'lt': 'Lithuanian',
  'mk': 'Macedonian',
  'mn': 'Mongolian',
  'ne': 'Nepali',
  'sr': 'Serbian',
  'th': 'Thai',
  'he': 'Hebrew',
  'ar': 'Arabic',
  'fa': 'Persian',
  'ur': 'Urdu',
};

final _translator = GoogleTranslator();
final _cache = <String, String>{};

Future<void> main(List<String> args) async {
  final force = args.contains('--force');
  final onlyLocale = _argValue(args, '--locale');
  final batchSize = int.tryParse(_argValue(args, '--batch-size') ?? '') ?? 50;
  final parallelLocales = args.contains('--no-parallel')
      ? 1
      : int.tryParse(_argValue(args, '--parallel-locales') ?? '') ?? 4;

  final enPath = 'lib/l10n/app_en.arb';
  final enMap = jsonDecode(File(enPath).readAsStringSync()) as Map<String, dynamic>;
  final keys = enMap.keys.where((k) => !k.startsWith('@') && k != '@@locale').toList();

  final locales = onlyLocale != null ? [onlyLocale] : _targets.keys.toList();
  final pending = <String>[];
  for (final locale in locales) {
    final outPath = 'lib/l10n/app_$locale.arb';
    if (!force && File(outPath).existsSync()) {
      print('Skip $locale (exists)');
      continue;
    }
    if (locale == 'hi') {
      print('Skip hi (use existing app_hi.arb)');
      continue;
    }
    pending.add(locale);
  }

  if (pending.isEmpty) {
    print('Nothing to generate.');
    return;
  }

  print(
    'Generating ${pending.length} locale(s) — batch=$batchSize, parallel=$parallelLocales',
  );
  final started = DateTime.now();

  for (var i = 0; i < pending.length; i += parallelLocales) {
    final chunk = pending.skip(i).take(parallelLocales).toList();
    await Future.wait(
      chunk.map((locale) => _generateLocale(locale, enMap, keys, batchSize)),
    );
  }

  final elapsed = DateTime.now().difference(started);
  print('Done in ${elapsed.inSeconds}s (${pending.length} locales).');
}

Future<void> _generateLocale(
  String locale,
  Map<String, dynamic> enMap,
  List<String> keys,
  int batchSize,
) async {
  final outPath = 'lib/l10n/app_$locale.arb';
  final label = _targets[locale] ?? locale;
  print('[$locale] $label — start');
  final started = DateTime.now();

  final out = <String, dynamic>{'@@locale': locale};
  final toTranslate = <_Job>[];

  for (final key in keys) {
    final value = enMap[key];
    if (value is! String) continue;
    final meta = enMap['@$key'];
    if (meta != null) out['@$key'] = meta;

    if (value.trim().isEmpty || _shouldKeepAsIs(value)) {
      out[key] = value;
      continue;
    }

    if (value.contains('plural')) {
      out[key] = await _translatePlural(value, locale, batchSize);
      continue;
    }

    toTranslate.add(_Job(key, value));
  }

  final translated = await _translateJobs(toTranslate, locale, batchSize);
  for (final job in toTranslate) {
    out[job.key] = translated[job.key] ?? job.english;
  }

  const encoder = JsonEncoder.withIndent('  ');
  File(outPath).writeAsStringSync('${encoder.convert(out)}\n');

  final secs = DateTime.now().difference(started).inSeconds;
  print('[$locale] wrote $outPath (${secs}s)');
}

Future<Map<String, String>> _translateJobs(
  List<_Job> jobs,
  String locale,
  int batchSize,
) async {
  final out = <String, String>{};
  for (var i = 0; i < jobs.length; i += batchSize) {
    final batch = jobs.skip(i).take(batchSize).toList();
    final texts = batch.map((j) => _protectTokens(j.english)).toList();
    final results = await _translateBatch(texts, locale);
    for (var j = 0; j < batch.length; j++) {
      out[batch[j].key] = results[j];
    }
    if ((i + batchSize) % (batchSize * 4) == 0) {
      print('  [$locale] ${(i + batch.length).clamp(0, jobs.length)}/${jobs.length}');
    }
  }
  return out;
}

Future<List<String>> _translateBatch(List<_Protected> items, String locale) async {
  if (items.isEmpty) return [];

  final uncached = <int, String>{};
  final results = List<String>.filled(items.length, '');

  for (var i = 0; i < items.length; i++) {
    final cacheKey = '$locale::${items[i].text}';
    final hit = _cache[cacheKey];
    if (hit != null) {
      results[i] = _restoreTokens(hit, items[i].tokens);
    } else {
      uncached[i] = items[i].text;
    }
  }

  if (uncached.isEmpty) return results;

  final indices = uncached.keys.toList();
  final payload = indices
      .map((i) => '$_itemStart$i$_itemEnd${uncached[i]}')
      .join(_batchJoin);

  try {
    final translated = await _translateWithRetry(payload, locale);
    final parsed = _parseBatch(translated, indices.length);
    if (parsed != null && parsed.length == indices.length) {
      for (var j = 0; j < indices.length; j++) {
        final idx = indices[j];
        final restored = _restoreTokens(parsed[j], items[idx].tokens);
        results[idx] = restored;
        _cache['$locale::${items[idx].text}'] = parsed[j];
      }
      return results;
    }
    print('  [$locale] batch parse mismatch, falling back');
  } catch (e) {
    print('  [$locale] batch failed ($e), falling back');
  }

  await Future.wait(indices.map((idx) async {
    try {
      final t = await _translateWithRetry(items[idx].text, locale);
      final restored = _restoreTokens(t, items[idx].tokens);
      results[idx] = restored;
      _cache['$locale::${items[idx].text}'] = t;
    } catch (_) {
      results[idx] = _restoreTokens(items[idx].text, items[idx].tokens);
    }
  }));

  return results;
}

Future<String> _translateWithRetry(String text, String locale, {int attempts = 3}) async {
  Object? lastError;
  for (var n = 0; n < attempts; n++) {
    try {
      final result = await _translator.translate(
        text,
        from: 'en',
        to: _googleCode(locale),
      );
      return result.text;
    } catch (e) {
      lastError = e;
      await Future<void>.delayed(Duration(milliseconds: 300 * (n + 1)));
    }
  }
  throw lastError ?? Exception('translate failed');
}

List<String>? _parseBatch(String translated, int expectedCount) {
  final chunks = translated.split(_batchJoin);
  if (chunks.length != expectedCount) return null;

  final out = <String>[];
  final pattern = RegExp(
    '^${RegExp.escape(_itemStart)}(\\d+)${RegExp.escape(_itemEnd)}(.*)\$',
    dotAll: true,
  );
  for (final chunk in chunks) {
    final m = pattern.firstMatch(chunk);
    if (m == null) return null;
    out.add(m.group(2) ?? '');
  }
  return out;
}

Future<String> _translatePlural(String text, String locale, int batchSize) async {
  final match = RegExp(
    r'^(.*?)\{(\w+),\s*plural,\s*=1\{([^}]*)\}\s*other\{([^}]*)\}\}(.*)$',
  ).firstMatch(text);
  if (match == null) return text;

  final prefix = match.group(1) ?? '';
  final countVar = match.group(2) ?? 'count';
  final one = match.group(3) ?? '';
  final other = match.group(4) ?? '';
  final suffix = match.group(5) ?? '';

  final originals = [prefix, one, other, suffix];
  final protected = <_Protected>[];
  final translatableIndexes = <int>[];

  for (var i = 0; i < originals.length; i++) {
    final part = originals[i];
    if (part.isEmpty || _shouldKeepAsIs(part)) continue;
    translatableIndexes.add(i);
    protected.add(_protectTokens(part));
  }

  if (protected.isEmpty) return text;

  final batchOut = await _translateBatch(protected, locale);
  final translated = List<String>.from(originals);
  for (var j = 0; j < translatableIndexes.length; j++) {
    translated[translatableIndexes[j]] = batchOut[j];
  }

  return '${translated[0]}{$countVar, plural, =1{${translated[1]}} other{${translated[2]}}}${translated[3]}';
}

String? _argValue(List<String> args, String name) {
  for (final a in args) {
    if (a.startsWith('$name=')) return a.substring(name.length + 1);
  }
  return null;
}

bool _shouldKeepAsIs(String text) {
  final t = text.trim();
  if (RegExp(r'^https?://', caseSensitive: false).hasMatch(t)) return true;
  if (t == '000000' || t == '0000') return true;
  if (t == 'you@example.com') return true;
  if (t == '—' || t == '/') return true;
  if (RegExp(r'^\d+(\.\d+)?\s*(MB|GB|KB)$', caseSensitive: false).hasMatch(t)) {
    return true;
  }
  return false;
}

String _googleCode(String locale) {
  if (locale == 'fil') return 'tl';
  if (locale == 'he') return 'iw';
  return locale;
}

class _Job {
  _Job(this.key, this.english);
  final String key;
  final String english;
}

class _Protected {
  _Protected(this.text, this.tokens);
  final String text;
  final List<String> tokens;
}

_Protected _protectTokens(String input) {
  final tokens = <String>[];
  var out = input;
  final patterns = [
    RegExp(r'\{[^}]+\}'),
    RegExp(r'<<[^>]+>>'),
  ];
  for (final pattern in patterns) {
    out = out.replaceAllMapped(pattern, (m) {
      tokens.add(m.group(0)!);
      return '<<PH${tokens.length - 1}>>';
    });
  }
  return _Protected(out, tokens);
}

String _restoreTokens(String input, List<String> tokens) {
  var out = input;
  for (var i = 0; i < tokens.length; i++) {
    out = out.replaceAll('<<ph$i>>', tokens[i]);
    out = out.replaceAll('<<PH$i>>', tokens[i]);
    out = out.replaceAll('<< Ph $i >>', tokens[i]);
  }
  return out;
}
