import 'dart:io';

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
      final res = await dio.get<Map<String, dynamic>>(
        'handler/metadata',
        queryParameters: <String, dynamic>{
          'upload_id': uploadId,
          if (privateId.isNotEmpty) 'private_id': privateId,
        },
      );
      final data = res.data;
      if (data is! Map<String, dynamic>) {
        return TransferMetadata.failure('bad_response');
      }
      return TransferMetadata.fromJson(data);
    } catch (e) {
      return TransferMetadata.failure('network_error');
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
        'private_id': privateId,
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
