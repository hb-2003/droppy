import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';

class HistoryTransferFile {
  const HistoryTransferFile({
    required this.name,
    required this.size,
    this.contentType = '',
  });

  final String name;
  final int size;
  final String contentType;

  factory HistoryTransferFile.fromJson(Map<String, dynamic> m) {
    return HistoryTransferFile(
      name: (m['name'] as String?) ?? '',
      size: (m['size'] as int?) ?? 0,
      contentType: (m['content_type'] as String?) ?? '',
    );
  }
}

class HistoryTransfer {
  const HistoryTransfer({
    required this.uploadId,
    required this.share,
    required this.count,
    required this.size,
    required this.time,
    required this.timeExpire,
    required this.destruct,
    required this.files,
  });

  final String uploadId;
  final String share;
  final int count;
  final int size;
  final int time;
  final int timeExpire;
  final String destruct;
  final List<HistoryTransferFile> files;

  bool get isExpired =>
      timeExpire > 0 && timeExpire < DateTime.now().millisecondsSinceEpoch ~/ 1000;

  factory HistoryTransfer.fromJson(Map<String, dynamic> m) {
    final rawFiles = (m['files'] as List<dynamic>?) ?? [];
    return HistoryTransfer(
      uploadId: (m['upload_id'] as String?) ?? '',
      share: (m['share'] as String?) ?? 'link',
      count: (m['count'] as int?) ?? 0,
      size: (m['size'] as int?) ?? 0,
      time: (m['time'] as int?) ?? 0,
      timeExpire: (m['time_expire'] as int?) ?? 0,
      destruct: (m['destruct'] as String?) ?? 'no',
      files: rawFiles
          .whereType<Map<String, dynamic>>()
          .map(HistoryTransferFile.fromJson)
          .toList(),
    );
  }
}

class HistoryResult {
  const HistoryResult({
    required this.result,
    this.email,
    this.transfers = const [],
  });

  final String result; // 'ok' | 'unauthenticated' | 'error'
  final String? email;
  final List<HistoryTransfer> transfers;

  bool get isOk => result == 'ok';
  bool get needsLogin => result == 'unauthenticated';
}

class HistoryRepository extends GetxService {
  Future<HistoryResult> fetchHistory() async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.get<Map<String, dynamic>>(
        'handler/history_json',
        options: dio.Options(validateStatus: (s) => s != null && s < 500),
      );
      final data = resp.data;
      if (data == null) return const HistoryResult(result: 'error');
      final r = (data['result'] as String?) ?? 'error';
      if (r != 'ok') return HistoryResult(result: r);
      final rawList = (data['transfers'] as List<dynamic>?) ?? [];
      return HistoryResult(
        result: 'ok',
        email: data['email'] as String?,
        transfers: rawList
            .whereType<Map<String, dynamic>>()
            .map(HistoryTransfer.fromJson)
            .toList(),
      );
    } catch (_) {
      return const HistoryResult(result: 'error');
    }
  }
}
