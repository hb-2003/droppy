import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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

  Map<String, dynamic> toJson() => {
        'name': name,
        'size': size,
        'content_type': contentType,
      };
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

  Map<String, dynamic> toJson() => {
        'upload_id': uploadId,
        'share': share,
        'count': count,
        'size': size,
        'time': time,
        'time_expire': timeExpire,
        'destruct': destruct,
        'files': files.map((f) => f.toJson()).toList(),
      };
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
  static const _localHistoryKey = 'local_transfer_history';
  static const _maxLocalEntries = 100;

  final GetStorage _box = GetStorage();

  List<HistoryTransfer> readLocalTransfers() {
    final raw = _box.read(_localHistoryKey);
    if (raw is! List) return const [];
    final out = <HistoryTransfer>[];
    for (final item in raw) {
      if (item is! Map) continue;
      final map = item.map((k, v) => MapEntry(k.toString(), v));
      try {
        out.add(HistoryTransfer.fromJson(map));
      } catch (_) {}
    }
    out.sort((a, b) => b.time.compareTo(a.time));
    return out;
  }

  Future<void> saveLocalTransfer(HistoryTransfer transfer) async {
    if (transfer.uploadId.isEmpty) return;
    final current = readLocalTransfers();
    final next = <HistoryTransfer>[
      transfer,
      ...current.where((t) => t.uploadId != transfer.uploadId),
    ];
    if (next.length > _maxLocalEntries) {
      next.removeRange(_maxLocalEntries, next.length);
    }
    await _box.write(_localHistoryKey, next.map((t) => t.toJson()).toList());
  }

  Future<void> clearLocalTransfers() async {
    await _box.remove(_localHistoryKey);
  }

  /// Claims guest uploads on the server, then clears local history on success.
  Future<bool> syncLocalTransfersToServer() async {
    final local = readLocalTransfers();
    if (local.isEmpty) return true;

    final ids = local
        .map((t) => t.uploadId)
        .where((id) => id.isNotEmpty)
        .toList();
    if (ids.isEmpty) {
      await clearLocalTransfers();
      return true;
    }

    try {
      final client = ApiClient.instance.dio;
      final resp = await client.post<String>(
        'handler/sync_local_history',
        data: dio.FormData.fromMap({'upload_ids': jsonEncode(ids)}),
        options: dio.Options(
          validateStatus: (s) => s != null && s < 500,
          responseType: dio.ResponseType.plain,
          contentType: dio.Headers.multipartFormDataContentType,
        ),
      );
      final data = _decodeJson((resp.data ?? '').toString());
      if (data == null) return false;
      if ((data['result'] as String?) != 'ok') return false;
      await clearLocalTransfers();
      return true;
    } catch (_) {
      return false;
    }
  }

  List<HistoryTransfer> mergeTransfers(
    List<HistoryTransfer> local,
    List<HistoryTransfer> remote,
  ) {
    final byId = <String, HistoryTransfer>{};
    for (final t in local) {
      if (t.uploadId.isNotEmpty) byId[t.uploadId] = t;
    }
    for (final t in remote) {
      if (t.uploadId.isNotEmpty) byId[t.uploadId] = t;
    }
    final merged = byId.values.toList()..sort((a, b) => b.time.compareTo(a.time));
    return merged;
  }

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
