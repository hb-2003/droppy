import 'dart:io';
import 'dart:convert';

import 'package:dio/dio.dart' as d;
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sendlargefiles/data/models/transfer_metadata.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class DownloadRepository extends GetxService {
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
          // Common case: site returned the HTML login / error page instead of JSON.
          if (lower.contains('login') && (lower.contains('e-mail') || lower.contains('email'))) {
            return TransferMetadata.failure('login_required');
          }
          // sharelargefilesfree.com returns HTML for handler/metadata. Match web flow by parsing the
          // *share page* HTML (`/{upload_id}/{private_id?}`) for hidden inputs and lock state.
          final parsed = await _fetchAndParseSharePage(uploadId: uploadId, privateId: privateId);
          return parsed ?? TransferMetadata.failure('html_response');
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
      if (lower.contains('login') && (lower.contains('e-mail') || lower.contains('email'))) {
        return TransferMetadata.failure('login_required');
      }

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

  /// Downloads file bytes to a local path (single- or multi-file ZIP).
  Future<File> downloadToFile({
    required String uploadId,
    required String privateId,
    required String pageUrl,
    String filename = 'download.bin',
  }) async {
    final dio = ApiClient.instance.dio;
    final dir = await getApplicationDocumentsDirectory();
    final out = File('${dir.path}/$filename');

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
    final bytes = res.data;
    if (bytes == null) {
      throw StateError('Empty download');
    }
    await out.writeAsBytes(bytes, flush: true);
    return out;
  }
}
