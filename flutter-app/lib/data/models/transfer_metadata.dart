import 'json_utils.dart';

class TransferFileRow {
  const TransferFileRow({
    required this.name,
    required this.size,
    this.contentType = '',
  });

  final String name;
  final int size;
  final String contentType;

  factory TransferFileRow.fromJson(Map<String, dynamic>? m) {
    if (m == null) {
      return const TransferFileRow(name: '', size: 0);
    }
    return TransferFileRow(
      name: JsonRead.stringOr(m['name'], ''),
      size: JsonRead.intOr(m['size'], 0),
      contentType: JsonRead.stringOr(m['content_type'], ''),
    );
  }
}

/// `GET handler/metadata` — success and error shapes from PHP.
class TransferMetadata {
  const TransferMetadata({
    required this.ok,
    this.error,
    this.uploadId,
    this.share,
    this.count,
    this.size,
    this.time,
    this.timeExpire,
    this.destruct,
    this.hasPassword = false,
    this.passwordUnlocked = false,
    this.files = const [],
  });

  final bool ok;
  final String? error;

  final String? uploadId;
  final String? share;
  final int? count;
  final int? size;
  final int? time;
  final int? timeExpire;
  final String? destruct;
  final bool hasPassword;
  final bool passwordUnlocked;
  final List<TransferFileRow> files;

  factory TransferMetadata.failure(String message) {
    return TransferMetadata(ok: false, error: message);
  }

  factory TransferMetadata.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return TransferMetadata.failure('empty_response');
    }
    if (json['ok'] == false) {
      return TransferMetadata(
        ok: false,
        error: JsonRead.string(json['error']) ?? 'error',
      );
    }
    if (json['ok'] != true) {
      return TransferMetadata.failure('invalid_response');
    }

    final fileList = <TransferFileRow>[];
    final raw = JsonRead.list(json['files']);
    if (raw != null) {
      for (final e in raw) {
        final m = JsonRead.map(e);
        if (m != null) fileList.add(TransferFileRow.fromJson(m));
      }
    }

    return TransferMetadata(
      ok: true,
      uploadId: JsonRead.string(json['upload_id']),
      share: JsonRead.string(json['share']),
      count: JsonRead.intVal(json['count']),
      size: JsonRead.intVal(json['size']),
      time: JsonRead.intVal(json['time']),
      timeExpire: JsonRead.intVal(json['time_expire']),
      destruct: JsonRead.string(json['destruct']),
      hasPassword: JsonRead.boolVal(json['has_password']),
      passwordUnlocked: JsonRead.boolVal(json['password_unlocked']),
      files: fileList,
    );
  }
}
