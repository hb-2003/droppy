import 'dart:async';

import 'package:bonsoir/bonsoir.dart';
import 'package:sendlargefiles/services/nearby_transfer/nearby_models.dart';

/// mDNS discovery for nearby Me Transfer sessions on the local network.
class NearbyDiscoveryService {
  static const serviceType = '_metransfer._tcp';

  BonsoirBroadcast? _broadcast;
  BonsoirDiscovery? _discovery;
  StreamSubscription<BonsoirDiscoveryEvent>? _discoverySub;
  final _peers = <String, NearbyPeer>{};
  void Function(List<NearbyPeer> peers)? _onPeersChanged;
  ServiceResolver? _resolver;

  Future<void> advertise({
    required String deviceName,
    required int port,
    required String sessionId,
    required int fileCount,
  }) async {
    await stopAdvertise();

    final service = BonsoirService(
      name: deviceName,
      type: serviceType,
      port: port,
      attributes: {
        'session': sessionId,
        'files': '$fileCount',
      },
    );

    _broadcast = BonsoirBroadcast(service: service);
    await _broadcast!.initialize();
    await _broadcast!.start();
  }

  Future<void> stopAdvertise() async {
    final b = _broadcast;
    _broadcast = null;
    if (b != null) {
      await b.stop();
    }
  }

  Future<void> startBrowsing({
    required void Function(List<NearbyPeer> peers) onPeersChanged,
  }) async {
    await stopBrowsing();
    _onPeersChanged = onPeersChanged;
    _peers.clear();

    _discovery = BonsoirDiscovery(type: serviceType);
    await _discovery!.initialize();
    _resolver = _discovery!.serviceResolver;

    _discoverySub = _discovery!.eventStream?.listen(_onDiscoveryEvent);
    await _discovery!.start();
    _emitPeers();
  }

  void _onDiscoveryEvent(BonsoirDiscoveryEvent event) {
    final resolver = _resolver;
    if (resolver == null) return;

    switch (event) {
      case BonsoirDiscoveryServiceFoundEvent():
        resolver.resolveService(event.service);
        break;
      case BonsoirDiscoveryServiceResolvedEvent():
      case BonsoirDiscoveryServiceUpdatedEvent():
        final service = event.service;
        if (service != null) _upsertPeer(service);
        break;
      case BonsoirDiscoveryServiceLostEvent():
        _peers.remove(event.service.name);
        _emitPeers();
        break;
      default:
        break;
    }
  }

  void _upsertPeer(BonsoirService service) {
    final session = service.attributes['session']?.trim();
    if (session == null || session.isEmpty) return;

    final host = service.hostAddress;
    if (host == null || host.isEmpty) return;

    final port = service.port;
    if (port <= 0) return;

    final fileCount = int.tryParse(service.attributes['files'] ?? '') ?? 0;
    _peers[service.name] = NearbyPeer(
      name: service.name,
      host: host,
      port: port,
      sessionId: session,
      fileCount: fileCount,
    );
    _emitPeers();
  }

  void _emitPeers() {
    final list = _peers.values.toList()
      ..sort((a, b) => a.name.compareTo(b.name));
    _onPeersChanged?.call(list);
  }

  Future<void> stopBrowsing() async {
    await _discoverySub?.cancel();
    _discoverySub = null;
    final d = _discovery;
    _discovery = null;
    _resolver = null;
    _peers.clear();
    _onPeersChanged = null;
    if (d != null) {
      await d.stop();
    }
  }

  Future<void> dispose() async {
    await stopAdvertise();
    await stopBrowsing();
  }
}
