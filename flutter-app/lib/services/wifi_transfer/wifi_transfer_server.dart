import 'dart:convert';
import 'dart:io';

import 'package:network_info_plus/network_info_plus.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:sendlargefiles/data/repositories/upload_repository.dart';
import 'package:sendlargefiles/services/wifi_transfer/wifi_transfer_models.dart';

/// Local HTTP server that shares picked files on the same Wi‑Fi network.
class WifiTransferServer {
  HttpServer? _server;
  String? _sessionId;
  final _files = <String, PickedFileItem>{};

  bool get isRunning => _server != null;

  String? get sessionId => _sessionId;

  Future<String> start(List<PickedFileItem> items) async {
    await stop();
    if (items.isEmpty) {
      throw StateError('no_files');
    }

    final ip = await _resolveLocalIp();
    if (ip == null || ip.isEmpty) {
      throw StateError('no_network');
    }

    _sessionId = 's${DateTime.now().millisecondsSinceEpoch}';
    _files.clear();
    for (var i = 0; i < items.length; i++) {
      _files['f$i'] = items[i];
    }

    final handler = Pipeline()
        .addMiddleware(_corsMiddleware())
        .addHandler(_handleRequest);

    _server = await shelf_io.serve(
      handler,
      InternetAddress.anyIPv4,
      0,
    );

    final port = _server!.port;
    return 'http://$ip:$port/wifi/$_sessionId';
  }

  Future<void> stop() async {
    final s = _server;
    _server = null;
    _sessionId = null;
    _files.clear();
    if (s != null) {
      await s.close(force: true);
    }
  }

  Future<Response> _handleRequest(Request request) async {
    final session = _sessionId;
    if (session == null) {
      return Response.notFound('not_running');
    }

    final segments = request.url.pathSegments;
    if (segments.length < 3 || segments[0] != 'wifi' || segments[1] != session) {
      return Response.notFound('invalid_path');
    }

    if (segments.length == 3 && segments[2] == 'manifest.json') {
      final manifest = WifiTransferManifest(
        sessionId: session,
        files: _files.entries
            .map(
              (e) => WifiTransferFileEntry(
                id: e.key,
                name: e.value.name,
                size: e.value.size,
                relativePath: e.value.originalPath,
              ),
            )
            .toList(),
      );
      return Response.ok(
        jsonEncode(manifest.toJson()),
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    }

    if (segments.length == 4 && segments[2] == 'files') {
      final fileId = segments[3];
      final item = _files[fileId];
      if (item == null) return Response.notFound('file_not_found');

      final file = File(item.path);
      if (!await file.exists()) return Response.notFound('file_missing');

      final stream = file.openRead();
      return Response.ok(
        stream,
        headers: {
          'content-type': 'application/octet-stream',
          'content-disposition': 'attachment; filename="${item.name}"',
        },
      );
    }

    return Response.notFound('not_found');
  }

  static Middleware _corsMiddleware() {
    return (Handler inner) {
      return (Request request) async {
        if (request.method == 'OPTIONS') {
          return Response.ok('', headers: _corsHeaders);
        }
        final response = await inner(request);
        return response.change(headers: _corsHeaders);
      };
    };
  }

  static const _corsHeaders = {
    'access-control-allow-origin': '*',
    'access-control-allow-methods': 'GET, OPTIONS',
    'access-control-allow-headers': '*',
  };

  static Future<String?> _resolveLocalIp() async {
    final info = NetworkInfo();
    final wifiIp = await info.getWifiIP();
    if (wifiIp != null && wifiIp.isNotEmpty && wifiIp != '0.0.0.0') {
      return wifiIp;
    }
    try {
      for (final iface in await NetworkInterface.list(
        type: InternetAddressType.IPv4,
        includeLinkLocal: false,
      )) {
        for (final addr in iface.addresses) {
          if (!addr.isLoopback && addr.type == InternetAddressType.IPv4) {
            return addr.address;
          }
        }
      }
    } catch (_) {}
    return null;
  }
}
