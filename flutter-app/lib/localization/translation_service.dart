import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sendlargefiles/controllers/locale_controller.dart';
import 'package:translator/translator.dart';

/// Runtime translation for dynamic/API strings (Google Translate via [translator]).
class TranslationService extends GetxService {
  static const _cacheKey = 'translation_cache_v1';
  static const _maxCacheEntries = 500;

  final GoogleTranslator _translator = GoogleTranslator();
  final GetStorage _box = GetStorage();
  final Map<String, String> _memory = {};

  @override
  void onInit() {
    super.onInit();
    final raw = _box.read(_cacheKey);
    if (raw is Map) {
      for (final entry in raw.entries) {
        final k = entry.key.toString();
        final v = entry.value;
        if (v is String) _memory[k] = v;
      }
    }
  }

  String get _targetLanguage =>
      Get.find<LocaleController>().locale.value.languageCode;

  Future<String> translate(String text) async {
    final input = text.trim();
    if (input.isEmpty || !shouldTranslate(input)) return text;

    final cacheKey = '${_targetLanguage}::$input';
    final cached = _memory[cacheKey];
    if (cached != null) return cached;

    try {
      final result = await _translator.translate(
        input,
        from: 'en',
        to: _targetLanguage,
      );
      final out = result.text.trim();
      if (out.isEmpty) return text;
      _memory[cacheKey] = out;
      _persistCache();
      return out;
    } catch (_) {
      return text;
    }
  }

  Future<void> prefetch(Iterable<String> texts) async {
    for (final text in texts) {
      await translate(text);
    }
  }

  bool shouldTranslate(String text) {
    if (_targetLanguage == 'en') return false;
    final t = text.trim();
    if (t.isEmpty) return false;
    if (RegExp(r'^https?://', caseSensitive: false).hasMatch(t)) return false;
    if (RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$').hasMatch(t)) return false;
    if (RegExp(r'^[\d.,\s]+(MB|GB|KB|TB|B|%)?$', caseSensitive: false).hasMatch(t)) {
      return false;
    }
    if (RegExp(
      r'^(mp4|mov|zip|psd|wav|avi|mkv|pdf|png|jpg|jpeg|gif|webp|heic|m4a|aac|flac|ogg|txt|md|rtf|rar|7z|tar|gz)$',
      caseSensitive: false,
    ).hasMatch(t)) {
      return false;
    }
    if (RegExp(r'^[a-f0-9-]{16,}$', caseSensitive: false).hasMatch(t)) {
      return false;
    }
    if (!RegExp(r'[A-Za-z]').hasMatch(t)) return false;
    return true;
  }

  void _persistCache() {
    if (_memory.length <= _maxCacheEntries) {
      _box.write(_cacheKey, _memory);
      return;
    }
    final trimmed = Map<String, String>.fromEntries(
      _memory.entries.toList().reversed.take(_maxCacheEntries),
    );
    _memory
      ..clear()
      ..addAll(trimmed);
    _box.write(_cacheKey, Map<String, String>.from(_memory));
  }
}
