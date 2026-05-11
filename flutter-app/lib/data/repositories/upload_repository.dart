import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart' as d;
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/json_utils.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

/// Parses JSON from API bodies that may be wrapped in HTML or wrong Content-Type.
Map<String, dynamic>? _decodeResponseJson(String raw) {
  final s = raw.trim();
  if (s.isEmpty) return null;
  for (final candidate in <String>[
    s,
    () {
      final i = s.indexOf('{');
      final j = s.lastIndexOf('}');
      if (i < 0 || j <= i) return '';
      return s.substring(i, j + 1);
    }(),
  ]) {
    if (candidate.isEmpty) continue;
    try {
      final decoded = jsonDecode(candidate);
      if (decoded is Map) {
        return decoded.map((k, v) => MapEntry(k.toString(), v));
      }
    } catch (_) {}
  }
  final m = RegExp(r'\{\s*"response"\s*:\s*"([^"]+)"\s*\}').firstMatch(s);
  if (m != null) {
    return {'response': m.group(1)};
  }
  return null;
}

class PickedFileItem {
  PickedFileItem({
    required this.path,
    required this.name,
    required this.size,
    required this.fileUid,
    this.originalPath = '',
  });

  final String path;
  final String name;
  final int size;
  final String fileUid;
  final String originalPath;

  String get displayName {
    if (originalPath.isEmpty) return name;
    return '$originalPath$name'.replaceAll(r'\', '/');
  }
}

class RegisterResult {
  const RegisterResult({this.responseCode});

  final String? responseCode;

  /// Back-compat with UI that checks `reg.code`.
  String get code => responseCode ?? 'unknown';

  bool get isOk => responseCode == 'ok';

  bool get verifyEmail => responseCode == 'verify_email';
}

class UploadRepository extends GetxService {
  Future<String?> genUploadId() async {
    if (!ApiClient.instance.hasValidBaseUrl) return null;
    try {
      final dio = ApiClient.instance.dio;
      // Live installs sometimes respond with JSON but `Content-Type: text/html`.
      // So we request plain text and decode JSON ourselves.
      final res = await dio.get<String>(
        'upload/genid',
        options: d.Options(responseType: d.ResponseType.plain),
      );
      final raw = (res.data ?? '').trim();
      Map<String, dynamic>? data;
      try {
        final decoded = jsonDecode(raw);
        if (decoded is Map) {
          data = decoded.map((k, v) => MapEntry(k.toString(), v));
        }
      } catch (_) {}
      final id = JsonRead.string(data?['upload_id']);
      if (id == null || id.isEmpty) return null;
      return id;
    } catch (_) {
      return null;
    }
  }

  /// Map response `response` field: ok, fields, email, verify_email, etc.
  Future<RegisterResult> register({
    required String uploadId,
    required String share,
    required String destruct,
    required String message,
    required String password,
    required int expireSec,
    required String languagePath,
    required String filePreviews,
    String emailFrom = '',
    List<String> emailTo = const [],
    String? verifyCode,
  }) async {
    final form = d.FormData();
    form.fields.addAll([
      MapEntry('upload_id', uploadId),
      MapEntry('share', share),
      MapEntry('destruct', destruct),
      MapEntry('message', message),
      MapEntry('password', password),
      MapEntry('expire', expireSec.toString()),
      MapEntry('language', languagePath),
      MapEntry('file_previews', filePreviews),
    ]);
    if (emailFrom.isNotEmpty) form.fields.add(MapEntry('email_from', emailFrom));
    for (final e in emailTo) {
      form.fields.add(MapEntry('email_to[]', e));
    }
    if (verifyCode != null && verifyCode.isNotEmpty) {
      form.fields.add(MapEntry('verify_code', verifyCode));
    }

    if (!ApiClient.instance.hasValidBaseUrl) {
      return const RegisterResult(responseCode: null);
    }
    try {
      final dio = ApiClient.instance.dio;
      // Some installs respond with JSON but `Content-Type: text/html`.
      final res = await dio.post<String>(
        'upload/register',
        data: form,
        options: d.Options(
          contentType: 'multipart/form-data',
          responseType: d.ResponseType.plain,
        ),
      );
      final raw = (res.data ?? '').trim();
      Map<String, dynamic>? data;
      try {
        final decoded = jsonDecode(raw);
        if (decoded is Map) {
          data = decoded.map((k, v) => MapEntry(k.toString(), v));
        }
      } catch (_) {}
      final code = JsonRead.string(data?['response']);
      return RegisterResult(responseCode: code);
    } catch (_) {
      return const RegisterResult(responseCode: null);
    }
  }

  Future<bool> verifyEmail({
    required String emailFrom,
    required String code,
  }) async {
    if (!ApiClient.instance.hasValidBaseUrl) return false;
    final email = emailFrom.trim();
    final digitsOnly = code.replaceAll(RegExp(r'\D'), '');
    if (email.isEmpty || digitsOnly.isEmpty) return false;
    try {
      final dio = ApiClient.instance.dio;
      final vf = d.FormData();
      vf.fields.addAll([
        MapEntry('email_from', email),
        MapEntry('code', digitsOnly),
      ]);
      // Server often returns JSON with Content-Type: text/html (same as upload/register).
      // Request plain text and decode so verification does not fail on HTML-looking responses.
      final res = await dio.post<String>(
        'upload/verify_email',
        data: vf,
        options: d.Options(
          contentType: 'multipart/form-data',
          responseType: d.ResponseType.plain,
        ),
      );
      final raw = (res.data ?? '').toString();
      final data = _decodeResponseJson(raw);
      final resp = JsonRead.string(data?['response']);
      return resp == 'ok';
    } catch (_) {
      return false;
    }
  }

  /// Upload one file with Content-Range chunks (same as blueimp).
  Future<void> uploadFileChunks({
    required String uploadId,
    required PickedFileItem item,
    required AppConfig cfg,
    d.CancelToken? cancelToken,
    void Function(int sent, int total)? onProgress,
  }) async {
    final file = File(item.path);
    if (!await file.exists()) {
      throw StateError('file_missing');
    }
    final dio = ApiClient.instance.dio;
    final size = await file.length();
    final chunk = cfg.chunkSizeBytes <= 0 ? 2 * 1024 * 1024 : cfg.chunkSizeBytes;
    var uploaded = 0;

    while (uploaded < size) {
      final end = (uploaded + chunk > size) ? size : uploaded + chunk;
      final contentRange = 'bytes $uploaded-${end - 1}/$size';
      final len = end - uploaded;
      final form = d.FormData();
      form.fields.addAll([
        MapEntry('upload_id', uploadId),
        MapEntry('file_uid', item.fileUid),
        MapEntry('original_path', item.originalPath),
      ]);
      form.files.add(
        MapEntry(
          'files[]',
          d.MultipartFile.fromStream(
            () => file.openRead(uploaded, end),
            len,
            filename: item.name,
          ),
        ),
      );

      // Server often returns HTML or JSON with text/html; avoid default JSON decode (FormatException).
      await dio.post<String>(
        'upload',
        data: form,
        cancelToken: cancelToken,
        options: d.Options(
          contentType: 'multipart/form-data',
          responseType: d.ResponseType.plain,
          headers: <String, dynamic>{'Content-Range': contentRange},
        ),
        onSendProgress: (s, t) {
          // `s` is bytes sent for this chunk; add base offset for overall progress.
          onProgress?.call(uploaded + s, size);
        },
      );

      uploaded = end;
      onProgress?.call(uploaded, size);
    }
  }

  Future<void> complete({
    required String uploadId,
    required String share,
    required String destruct,
    required String message,
    required String password,
    required int expireSec,
    required String languagePath,
    required String filePreviews,
    String emailFrom = '',
    List<String> emailTo = const [],
  }) async {
    final form = d.FormData();
    form.fields.addAll([
      MapEntry('upload_id', uploadId),
      MapEntry('share', share),
      MapEntry('destruct', destruct),
      MapEntry('message', message),
      MapEntry('password', password),
      MapEntry('expire', expireSec.toString()),
      MapEntry('language', languagePath),
      MapEntry('file_previews', filePreviews),
    ]);
    if (emailFrom.isNotEmpty) form.fields.add(MapEntry('email_from', emailFrom));
    for (final e in emailTo) {
      form.fields.add(MapEntry('email_to[]', e));
    }

    final dio = ApiClient.instance.dio;
    await dio.post<String>(
      'upload/complete',
      data: form,
      options: d.Options(
        contentType: 'multipart/form-data',
        responseType: d.ResponseType.plain,
      ),
    );
  }

  static List<PickedFileItem> fromPickerResult(
    List<PlatformFile> files,
    int Function() uidGen,
  ) {
    final out = <PickedFileItem>[];
    for (final f in files) {
      if (f.path == null) continue;
      out.add(
        PickedFileItem(
          path: f.path!,
          name: f.name,
          size: f.size,
          fileUid: _randomUid(uidGen),
          originalPath: '',
        ),
      );
    }
    return out;
  }

  static Future<List<PickedFileItem>> fromDirectory(
    String directoryPath,
    int Function() uidGen,
  ) async {
    final root = Directory(p.normalize(p.absolute(directoryPath)));
    if (!await root.exists()) return const [];

    final out = <PickedFileItem>[];
    await for (final entity in root.list(recursive: true, followLinks: false)) {
      if (entity is! File) continue;
      final stat = await entity.stat();
      out.add(
        PickedFileItem(
          path: entity.path,
          name: p.basename(entity.path),
          size: stat.size,
          fileUid: _randomUid(uidGen),
          originalPath: originalDirPath(root.path, entity.path),
        ),
      );
    }
    out.sort((a, b) => a.displayName.compareTo(b.displayName));
    return out;
  }

  static String originalDirPath(String rootPath, String filePath) {
    final rel = p.relative(filePath, from: rootPath);
    final dir = p.dirname(rel);
    if (dir == '.') return '';
    return '${dir.replaceAll(p.separator, '/')}/';
  }

  static String _randomUid(int Function() gen) =>
      'f_${gen()}_${DateTime.now().microsecondsSinceEpoch}';

  static String safeBasename(String path) => p.basename(path);
}
