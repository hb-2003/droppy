import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_models.dart';

class WifiTransferClient {
  WifiTransferClient({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<WifiTransferManifest> fetchManifest(WifiTransferEndpoint endpoint) async {
    final res = await _dio.get<String>(
      endpoint.manifestUrl,
      options: Options(responseType: ResponseType.plain),
    );
    final raw = res.data;
    if (raw == null || raw.isEmpty) {
      throw const FormatException('empty_manifest');
    }
    return WifiTransferManifest.fromJson(
      jsonDecode(raw) as Map<String, dynamic>,
    );
  }

  Future<File> downloadFile({
    required WifiTransferEndpoint endpoint,
    required WifiTransferFileEntry file,
    required String savePath,
    void Function(int received, int total)? onProgress,
  }) async {
    final outFile = File(savePath);
    await outFile.parent.create(recursive: true);

    await _dio.download(
      endpoint.fileUrl(file.id),
      savePath,
      onReceiveProgress: onProgress,
    );
    return outFile;
  }
}
