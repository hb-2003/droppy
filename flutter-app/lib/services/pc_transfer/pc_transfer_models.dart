class PcTransferFileEntry {
  const PcTransferFileEntry({
    required this.id,
    required this.name,
    required this.size,
  });

  final String id;
  final String name;
  final int size;

  factory PcTransferFileEntry.fromJson(Map<String, dynamic> json) {
    return PcTransferFileEntry(
      id: json['id'] as String,
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'size': size,
      };
}

class PcTransferManifest {
  const PcTransferManifest({
    required this.sessionId,
    required this.files,
  });

  final String sessionId;
  final List<PcTransferFileEntry> files;

  factory PcTransferManifest.fromJson(Map<String, dynamic> json) {
    final raw = json['files'];
    return PcTransferManifest(
      sessionId: json['sessionId'] as String,
      files: raw is List
          ? raw
              .map((e) => PcTransferFileEntry.fromJson(
                    Map<String, dynamic>.from(e as Map),
                  ))
              .toList()
          : const [],
    );
  }

  Map<String, dynamic> toJson() => {
        'sessionId': sessionId,
        'files': files.map((f) => f.toJson()).toList(),
      };
}

class PcReceivedFile {
  const PcReceivedFile({
    required this.name,
    required this.size,
    required this.savedPath,
    required this.timeSec,
  });

  final String name;
  final int size;
  final String savedPath;
  final int timeSec;

  Map<String, dynamic> toJson() => {
        'name': name,
        'size': size,
        'savedPath': savedPath,
        'time': timeSec,
      };
}

/// Parsed `http://host:port/pc/{sessionId}` URL.
class PcTransferEndpoint {
  const PcTransferEndpoint({
    required this.baseUrl,
    required this.sessionId,
  });

  final String baseUrl;
  final String sessionId;

  String get pageUrl => '$baseUrl/pc/$sessionId/';

  static PcTransferEndpoint? tryParse(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;
    final normalized = trimmed.contains('://') ? trimmed : 'http://$trimmed';
    final uri = Uri.tryParse(normalized);
    if (uri == null || uri.host.isEmpty) return null;

    final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    final idx = segs.indexOf('pc');
    if (idx < 0 || idx + 1 >= segs.length) return null;

    final sessionId = segs[idx + 1];
    if (sessionId.isEmpty) return null;

    final port = uri.hasPort ? uri.port : (uri.scheme == 'https' ? 443 : 80);
    final base = '${uri.scheme}://${uri.host}:$port';
    return PcTransferEndpoint(baseUrl: base, sessionId: sessionId);
  }
}

enum PcTransferMode { send, receive }
