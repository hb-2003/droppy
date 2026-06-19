import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_models.dart';

/// A nearby device advertising a file transfer session.
class NearbyPeer {
  const NearbyPeer({
    required this.name,
    required this.host,
    required this.port,
    required this.sessionId,
    this.fileCount = 0,
  });

  final String name;
  final String host;
  final int port;
  final String sessionId;
  final int fileCount;

  String get shareUrl => 'http://$host:$port/wifi/$sessionId';

  WifiTransferEndpoint get endpoint => WifiTransferEndpoint(
        baseUrl: 'http://$host:$port',
        sessionId: sessionId,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NearbyPeer &&
          name == other.name &&
          host == other.host &&
          port == other.port &&
          sessionId == other.sessionId;

  @override
  int get hashCode => Object.hash(name, host, port, sessionId);
}
