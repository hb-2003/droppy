class WifiTransferFileEntry {
  const WifiTransferFileEntry({
    required this.id,
    required this.name,
    required this.size,
    this.relativePath = '',
  });

  final String id;
  final String name;
  final int size;
  final String relativePath;

  factory WifiTransferFileEntry.fromJson(Map<String, dynamic> json) {
    return WifiTransferFileEntry(
      id: json['id'] as String,
      name: json['name'] as String,
      size: (json['size'] as num).toInt(),
      relativePath: json['relativePath'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'size': size,
        'relativePath': relativePath,
      };
}

class WifiTransferManifest {
  const WifiTransferManifest({
    required this.sessionId,
    required this.files,
  });

  final String sessionId;
  final List<WifiTransferFileEntry> files;

  factory WifiTransferManifest.fromJson(Map<String, dynamic> json) {
    final raw = json['files'];
    return WifiTransferManifest(
      sessionId: json['sessionId'] as String,
      files: raw is List
          ? raw
              .map((e) => WifiTransferFileEntry.fromJson(
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

/// Parsed `http://host:port/wifi/{sessionId}` share URL.
class WifiTransferEndpoint {
  const WifiTransferEndpoint({
    required this.baseUrl,
    required this.sessionId,
  });

  final String baseUrl;
  final String sessionId;

  String get manifestUrl => '$baseUrl/wifi/$sessionId/manifest.json';

  String fileUrl(String fileId) => '$baseUrl/wifi/$sessionId/files/$fileId';

  static WifiTransferEndpoint? tryParse(String raw) {
    final trimmed = raw.trim();
    if (trimmed.isEmpty) return null;
    final normalized = trimmed.contains('://') ? trimmed : 'http://$trimmed';
    final uri = Uri.tryParse(normalized);
    if (uri == null || uri.host.isEmpty) return null;

    final segs = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    final wifiIdx = segs.indexOf('wifi');
    if (wifiIdx < 0 || wifiIdx + 1 >= segs.length) return null;

    final sessionId = segs[wifiIdx + 1];
    if (sessionId.isEmpty) return null;

    final port = uri.hasPort ? uri.port : (uri.scheme == 'https' ? 443 : 80);
    final base = '${uri.scheme}://${uri.host}:$port';
    return WifiTransferEndpoint(baseUrl: base, sessionId: sessionId);
  }
}
