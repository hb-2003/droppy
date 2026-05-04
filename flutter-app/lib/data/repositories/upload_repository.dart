import 'dart:io';

import 'package:dio/dio.dart' as d;
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as p;
import 'package:sendlargefiles/data/models/app_config.dart';
import 'package:sendlargefiles/data/models/json_utils.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

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
  /// Returns null if the request failed or `upload_id` was missing.
  Future<String?> genUploadId() async {
    if (!ApiClient.instance.hasValidBaseUrl) return null;
    try {
      final dio = ApiClient.instance.dio;
      final res = await dio.get<Map<String, dynamic>>('upload/genid');
      final id = JsonRead.string(res.data?['upload_id']);
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
      final res = await dio.post<Map<String, dynamic>>(
        'upload/register',
        data: form,
        options: d.Options(contentType: 'multipart/form-data'),
      );
      final code = JsonRead.string(res.data?['response']);
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
    try {
      final dio = ApiClient.instance.dio;
      final vf = d.FormData();
      vf.fields.addAll([
        MapEntry('email_from', emailFrom),
        MapEntry('code', code),
      ]);
      await dio.post<Map<String, dynamic>>(
        'upload/verify_email',
        data: vf,
        options: d.Options(contentType: 'multipart/form-data'),
      );
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Upload one file with Content-Range chunks (same as blueimp).
  Future<void> uploadFileChunks({
    required String uploadId,
    required PickedFileItem item,
    required AppConfig cfg,
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
      final slice = await file.openRead(uploaded, end).fold<List<int>>(
            <int>[],
            (p, e) => p..addAll(e),
          );
      final form = d.FormData();
      form.fields.addAll([
        MapEntry('upload_id', uploadId),
        MapEntry('file_uid', item.fileUid),
        MapEntry('original_path', item.originalPath),
      ]);
      form.files.add(
        MapEntry(
          'files[]',
          d.MultipartFile.fromBytes(slice, filename: item.name),
        ),
      );

      await dio.post<dynamic>(
        'upload',
        data: form,
        options: d.Options(
          contentType: 'multipart/form-data',
          headers: <String, dynamic>{'Content-Range': contentRange},
        ),
        onSendProgress: (s, t) => onProgress?.call(uploaded + s.toInt(), size),
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
    await dio.post<dynamic>(
      'upload/complete',
      data: form,
      options: d.Options(contentType: 'multipart/form-data'),
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

  static String _randomUid(int Function() gen) =>
      'f_${gen()}_${DateTime.now().microsecondsSinceEpoch}';

  static String safeBasename(String path) => p.basename(path);
}
