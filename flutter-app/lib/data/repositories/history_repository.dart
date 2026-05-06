import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sendlargefiles/data/providers/api_client.dart';
import 'dart:convert';

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
  Map<String, dynamic>? _decodeJson(String raw) {
    final s = raw.trim();
    if (s.isEmpty) return null;
    try {
      final decoded = jsonDecode(s);
      if (decoded is Map) {
        return decoded.map((k, v) => MapEntry(k.toString(), v));
      }
    } catch (_) {}
    // Some hosts wrap JSON in HTML; attempt a slice.
    final start = s.indexOf('{');
    final end = s.lastIndexOf('}');
    if (start >= 0 && end > start) {
      final sub = s.substring(start, end + 1);
      try {
        final decoded = jsonDecode(sub);
        if (decoded is Map) {
          return decoded.map((k, v) => MapEntry(k.toString(), v));
        }
      } catch (_) {}
    }
    return null;
  }

  Future<HistoryResult> fetchHistory() async {
    final client = ApiClient.instance.dio;
    try {
      final resp = await client.get<String>(
        'handler/history_json',
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          responseType: dio.ResponseType.plain,
        ),
      );
      final data = _decodeJson((resp.data ?? '').toString());
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
