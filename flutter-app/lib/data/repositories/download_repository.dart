import 'dart:io';
import 'dart:convert';

import 'package:dio/dio.dart' as d;
import 'package:external_path/external_path.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

/// Result of a file download — includes the saved file and the real filename
/// extracted from the server's Content-Disposition header.
class DownloadResult {
  const DownloadResult({required this.file, required this.filename});
  final File file;
  final String filename;
}

class DownloadRepository extends GetxService {
  // Subfolder under the OS Downloads directory.
  // Keep it filesystem-safe (no slashes).
  static const String _downloadsSubdirName = 'Share Large Video Files';

  Future<TransferMetadata> fetchMetadata({
    required String uploadId,
    String privateId = '',
  }) async {
    if (uploadId.isEmpty) {
      return TransferMetadata.failure('missing_upload_id');
    }
    if (!ApiClient.instance.hasValidBaseUrl) {
      return TransferMetadata.failure('no_base_url');
    }
    try {
      final dio = ApiClient.instance.dio;
      // Some installs respond with JSON but `Content-Type: text/html`.
      final res = await dio.get<String>(
        'handler/metadata',
        queryParameters: <String, dynamic>{
          'upload_id': uploadId,
          if (privateId.isNotEmpty) 'private_id': privateId,
        },
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
      if (data == null) {
        final lower = raw.toLowerCase();
        final looksLikeHtml = lower.startsWith('<!doctype') || lower.startsWith('<html');
        if (looksLikeHtml) {
          // Some installs return HTML for handler/metadata. Parse the share page instead of
          // treating incidental login UI copy as a hard login gate.
          final parsed = await _fetchAndParseSharePage(uploadId: uploadId, privateId: privateId);
          if (parsed != null) return parsed;
          if (_isLoginGateHtml(raw)) {
            return TransferMetadata.failure('login_required');
          }
          return TransferMetadata.failure('html_response');
        }
        return TransferMetadata.failure('bad_response');
      }
      return TransferMetadata.fromJson(data);
    } catch (e) {
      return TransferMetadata.failure('network_error');
    }
  }

  Future<TransferMetadata?> _fetchAndParseSharePage({
    required String uploadId,
    required String privateId,
  }) async {
    final base = resolveBaseUrl();
    if (base.isEmpty) return null;
    final path = privateId.isNotEmpty ? '$uploadId/$privateId' : uploadId;

    try {
      final dio = ApiClient.instance.dio;
      final res = await dio.get<String>(
        path,
        options: d.Options(responseType: d.ResponseType.plain),
      );
      final html = (res.data ?? '').trim();
      if (html.isEmpty) return null;

      final lower = html.toLowerCase();

      String? pickValue(String id) {
        final re = RegExp('id="$id"[^>]*value="([^"]*)"', caseSensitive: false);
        return re.firstMatch(html)?.group(1);
      }

      final dlId = pickValue('download_id') ?? uploadId;

      // Detect password gate by form action.
      final locked = RegExp(r'action=\"handler/password\"', caseSensitive: false).hasMatch(html) ||
          lower.contains('password-protected') ||
          lower.contains('fill_password');

      // Best-effort parse count/size from the modern download page.
      int? count;
      int? sizeBytes;
      final countM = RegExp(r'<strong>\s*(\d+)\s*</strong>\s*FILES', caseSensitive: false)
          .firstMatch(html);
      if (countM != null) count = int.tryParse(countM.group(1) ?? '');

      // We don't have a reliable raw bytes value in HTML (web formats it), so leave size null.

      return TransferMetadata(
        ok: true,
        uploadId: dlId,
        share: 'link',
        count: count,
        size: sizeBytes,
        time: null,
        timeExpire: null,
        destruct: null,
        hasPassword: locked,
        passwordUnlocked: !locked,
        files: const [],
      );
    } catch (_) {
      return null;
    }
  }

  bool _isLoginGateHtml(String html) {
    final lower = html.toLowerCase();
    final hasDownloadMarkers = lower.contains('id="download_id"') ||
        lower.contains("id='download_id'") ||
        lower.contains('handler/password') ||
        lower.contains('password-protected') ||
        lower.contains('fill_password');
    if (hasDownloadMarkers) return false;
    return lower.contains('sign in to') ||
        lower.contains('send code') ||
        lower.contains('check your email');
  }

  /// Unlock password-protected transfer (sets PHP session).
  Future<bool> unlockPassword({
    required String uploadId,
    required String password,
    required String returnUrl,
  }) async {
    if (!ApiClient.instance.hasValidBaseUrl) return false;
    try {
      final dio = ApiClient.instance.dio;
      await dio.get(
        'handler/password',
        queryParameters: <String, dynamic>{
          'download_id': uploadId,
          'password': password,
          'url': returnUrl,
        },
        options: d.Options(
          followRedirects: true,
          validateStatus: (s) => s != null && s < 400,
        ),
      );
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Downloads file bytes and saves to the device's cache directory.
  /// Returns a [DownloadResult] with the saved [File] and resolved [filename].
  ///
  /// The real filename is extracted from the server's `Content-Disposition`
  /// header first; [filename] is used as a last-resort fallback.
  Future<DownloadResult> downloadToFile({
    required String uploadId,
    required String privateId,
    required String pageUrl,
    String filename = 'download.bin',
  }) async {
    final dio = ApiClient.instance.dio;

    final res = await dio.get<List<int>>(
      'handler/download',
      queryParameters: <String, dynamic>{
        'action': 'download',
        'download_id': uploadId,
        if (privateId.isNotEmpty) 'private_id': privateId,
        'url': pageUrl,
      },
      options: d.Options(
        responseType: d.ResponseType.bytes,
        followRedirects: true,
        validateStatus: (s) => s != null && s < 400,
      ),
    );

    // ── Extract real filename from Content-Disposition header ─────────────
    final disposition = res.headers.value('content-disposition') ?? '';
    final realName = _filenameFromDisposition(disposition);
    if (realName != null && realName.isNotEmpty) {
      filename = realName;
    }

    final bytes = res.data;
    if (bytes == null || bytes.isEmpty) throw StateError('Empty download response');

    // ── Resolve save directory (public Downloads folder) ─────────────────
    final saveDir = await _resolveDownloadsDir();
    if (!await saveDir.exists()) await saveDir.create(recursive: true);

    // Avoid overwriting: append (n) if the file already exists.
    var out = File('${saveDir.path}/$filename');
    if (await out.exists()) {
      final dot = filename.lastIndexOf('.');
      final base = dot >= 0 ? filename.substring(0, dot) : filename;
      final ext  = dot >= 0 ? filename.substring(dot) : '';
      var n = 1;
      while (await out.exists()) {
        out = File('${saveDir.path}/$base ($n)$ext');
        n++;
      }
      filename = out.path.split('/').last;
    }

    await out.writeAsBytes(bytes, flush: true);
    return DownloadResult(file: out, filename: filename);
  }

  /// Returns the best available Downloads directory.
  ///
  /// Priority:
  ///   1. Public `/storage/emulated/0/Download` (visible in Files app)
  ///      — requests storage permission on Android ≤ 12.
  ///   2. App-specific external storage (`/sdcard/Android/data/{pkg}/files`)
  ///      — no permission needed, visible in Files app under "Android/data".
  ///   3. Internal app documents dir (last resort).
  static Future<Directory> _resolveDownloadsDir() async {
    if (Platform.isAndroid) {
      // NOTE:
      // - path_provider's "downloads" directory is often app-scoped and not visible in the
      //   user's Downloads app.
      // - ExternalPath resolves the *public* Downloads folder (visible in Files app).

      // Request legacy storage permission (Android 12 and below). On newer Android versions,
      // this may be denied but writing may still work due to legacyExternalStorage settings
      // or OEM behavior.
      // Try MANAGE_EXTERNAL_STORAGE first (Android 11+), then legacy storage permission.
      try {
        final m = await Permission.manageExternalStorage.status;
        if (!m.isGranted) {
          await Permission.manageExternalStorage.request();
        }
      } catch (_) {}
      final status = await Permission.storage.status;
      if (!status.isGranted) {
        await Permission.storage.request();
      }

      try {
        final pub = await ExternalPath.getExternalStoragePublicDirectory(
          ExternalPath.DIRECTORY_DOWNLOAD,
        );
        if (pub.isNotEmpty) {
          return Directory('$pub/$_downloadsSubdirName');
        }
      } catch (_) {}

      // Fall back to app-specific external storage.
      final ext = await getExternalStorageDirectory();
      if (ext != null) {
        return Directory('${ext.path}/$_downloadsSubdirName');
      }
    }

    // iOS or last-resort fallback.
    final docs = await getApplicationDocumentsDirectory();
    return Directory('${docs.path}/$_downloadsSubdirName');
  }

  /// Parses `filename=` or `filename*=UTF-8''` from a Content-Disposition value.
  static String? _filenameFromDisposition(String header) {
    if (header.isEmpty) return null;

    // RFC 5987: filename*=UTF-8''encoded%20name
    final star = RegExp(r"filename\*\s*=\s*UTF-8''([^;]+)", caseSensitive: false)
        .firstMatch(header);
    if (star != null) {
      return Uri.decodeComponent(star.group(1)?.trim() ?? '');
    }

    // Standard: filename="foo.mp4" or filename=foo.mp4
    final plain = RegExp(r'filename\s*=\s*"?([^";]+)"?', caseSensitive: false)
        .firstMatch(header);
    if (plain != null) {
      return plain.group(1)?.trim().replaceAll('"', '');
    }

    return null;
  }
}
