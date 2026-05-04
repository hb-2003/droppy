/// Safe extraction from dynamic JSON (nullable-first).
abstract final class JsonRead {
  JsonRead._();

  static Map<String, dynamic>? map(dynamic value) {
    if (value == null) return null;
    if (value is Map<String, dynamic>) return value;
    if (value is Map) {
      final out = <String, dynamic>{};
      for (final e in value.entries) {
        out[e.key.toString()] = e.value;
      }
      return out;
    }
    return null;
  }

  static List<dynamic>? list(dynamic value) {
    if (value == null) return null;
    if (value is List) return value;
    return null;
  }

  static String? string(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    return value.toString();
  }

  static String stringOr(dynamic value, String fallback) => string(value)?.trim() ?? fallback;

  static int? intVal(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value.trim());
    return null;
  }

  static int intOr(dynamic value, int fallback) => intVal(value) ?? fallback;

  static bool boolVal(dynamic value) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is num) return value != 0;
    final s = string(value)?.toLowerCase();
    return s == 'true' || s == '1' || s == 'yes';
  }
}
