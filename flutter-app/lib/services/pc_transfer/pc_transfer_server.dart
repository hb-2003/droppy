import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:path/path.dart' as p;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:sendlargefiles/data/repositories/upload_repository.dart';
import 'package:sendlargefiles/services/pc_transfer/pc_transfer_html.dart';
import 'package:sendlargefiles/services/pc_transfer/pc_transfer_models.dart';

typedef PcFileReceivedHandler = void Function(PcReceivedFile file);

/// Local HTTP server for PC browser ↔ phone transfer on the same Wi‑Fi.
class PcTransferServer {
  HttpServer? _server;
  String? _sessionId;
  PcTransferMode? _mode;
  final _sendFiles = <String, PickedFileItem>{};
  final receivedFiles = <PcReceivedFile>[];
  Directory? _receiveSaveDir;
  PcFileReceivedHandler? onFileReceived;

  bool get isRunning => _server != null;

  String? get sessionId => _sessionId;

  PcTransferMode? get mode => _mode;

  Future<String> startSend(List<PickedFileItem> items) async {
    await stop();
    if (items.isEmpty) throw StateError('no_files');

    final ip = await _resolveLocalIp();
    if (ip == null || ip.isEmpty) throw StateError('no_network');

    _mode = PcTransferMode.send;
    _sessionId = 'p${DateTime.now().millisecondsSinceEpoch}';
    _sendFiles.clear();
    receivedFiles.clear();
    for (var i = 0; i < items.length; i++) {
      _sendFiles['f$i'] = items[i];
    }

    _server = await _bindServer();
    final port = _server!.port;
    return 'http://$ip:$port/pc/$_sessionId/';
  }

  Future<String> startReceive({
    required Directory saveDir,
    PcFileReceivedHandler? onFile,
  }) async {
    await stop();

    final ip = await _resolveLocalIp();
    if (ip == null || ip.isEmpty) throw StateError('no_network');

    _mode = PcTransferMode.receive;
    _sessionId = 'p${DateTime.now().millisecondsSinceEpoch}';
    _sendFiles.clear();
    receivedFiles.clear();
    _receiveSaveDir = saveDir;
    onFileReceived = onFile;
    if (!await saveDir.exists()) {
      await saveDir.create(recursive: true);
    }

    _server = await _bindServer();
    final port = _server!.port;
    return 'http://$ip:$port/pc/$_sessionId/';
  }

  Future<HttpServer> _bindServer() async {
    final handler = Pipeline()
        .addMiddleware(_corsMiddleware())
        .addHandler(_handleRequest);
    return shelf_io.serve(handler, InternetAddress.anyIPv4, 0);
  }

  Future<void> stop() async {
    final s = _server;
    _server = null;
    _sessionId = null;
    _mode = null;
    _sendFiles.clear();
    receivedFiles.clear();
    _receiveSaveDir = null;
    onFileReceived = null;
    if (s != null) {
      await s.close(force: true);
    }
  }

  Future<Response> _handleRequest(Request request) async {
    final session = _sessionId;
    final mode = _mode;
    if (session == null || mode == null) {
      return Response.notFound('not_running');
    }

    final segments = request.url.pathSegments;
    if (segments.length < 2 || segments[0] != 'pc' || segments[1] != session) {
      return Response.notFound('invalid_path');
    }

    final sub = segments.length > 2 ? segments[2] : '';

    if (request.method == 'GET' &&
        (sub.isEmpty || sub == 'index.html') &&
        mode == PcTransferMode.send) {
      final files = _sendFiles.entries
          .map(
            (e) => PcTransferFileEntry(
              id: e.key,
              name: e.value.name,
              size: e.value.size,
            ),
          )
          .toList();
      return Response.ok(
        PcTransferHtml.sendPage(sessionId: session, files: files),
        headers: {'content-type': 'text/html; charset=utf-8'},
      );
    }

    if (request.method == 'GET' &&
        (sub.isEmpty || sub == 'index.html') &&
        mode == PcTransferMode.receive) {
      return Response.ok(
        PcTransferHtml.receivePage(sessionId: session),
        headers: {'content-type': 'text/html; charset=utf-8'},
      );
    }

    if (sub == 'manifest.json' && mode == PcTransferMode.send) {
      final manifest = PcTransferManifest(
        sessionId: session,
        files: _sendFiles.entries
            .map(
              (e) => PcTransferFileEntry(
                id: e.key,
                name: e.value.name,
                size: e.value.size,
              ),
            )
            .toList(),
      );
      return Response.ok(
        jsonEncode(manifest.toJson()),
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    }

    if (sub == 'received.json' && mode == PcTransferMode.receive) {
      return Response.ok(
        PcTransferHtml.receivedJson(receivedFiles),
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    }

    if (sub == 'all.zip' && request.method == 'GET' && mode == PcTransferMode.send) {
      return _handleDownloadAllZip(session);
    }

    if (sub == 'files' && segments.length == 4 && mode == PcTransferMode.send) {
      final fileId = segments[3];
      final item = _sendFiles[fileId];
      if (item == null) return Response.notFound('file_not_found');

      final file = File(item.path);
      if (!await file.exists()) return Response.notFound('file_missing');

      return Response.ok(
        file.openRead(),
        headers: {
          'content-type': 'application/octet-stream',
          'content-disposition': 'attachment; filename="${item.name}"',
        },
      );
    }

    if (sub == 'upload' &&
        request.method == 'POST' &&
        mode == PcTransferMode.receive) {
      return _handleUpload(request);
    }

    return Response.notFound('not_found');
  }

  Future<Response> _handleDownloadAllZip(String session) async {
    if (_sendFiles.length < 2) {
      return Response.notFound('single_file');
    }

    final archive = Archive();
    final usedNames = <String>{};

    for (final item in _sendFiles.values) {
      final file = File(item.path);
      if (!await file.exists()) continue;

      var name = item.name;
      if (usedNames.contains(name)) {
        final dot = name.lastIndexOf('.');
        var n = 1;
        while (usedNames.contains(name)) {
          if (dot > 0) {
            name = '${name.substring(0, dot)} ($n)${name.substring(dot)}';
          } else {
            name = '${item.name} ($n)';
          }
          n++;
        }
      }
      usedNames.add(name);

      final bytes = await file.readAsBytes();
      archive.addFile(ArchiveFile(name, bytes.length, bytes));
    }

    if (archive.files.isEmpty) {
      return Response.notFound('no_files');
    }

    final zipBytes = ZipEncoder().encode(archive);

    return Response.ok(
      Uint8List.fromList(zipBytes),
      headers: {
        'content-type': 'application/zip',
        'content-disposition': 'attachment; filename="transfer-$session.zip"',
      },
    );
  }

  Future<Response> _handleUpload(Request request) async {
    final saveDir = _receiveSaveDir;
    if (saveDir == null) return Response.internalServerError();

    try {
      final rawName = request.headers['x-file-name'] ??
          request.url.queryParameters['name'] ??
          'upload.bin';
      final filename = Uri.decodeComponent(rawName);
      if (filename.isEmpty) return Response(400, body: 'missing_filename');

      final bytes = await request.read().expand((chunk) => chunk).toList();
      if (bytes.isEmpty) return Response(400, body: 'empty_body');

      final outPath = await _uniquePath(saveDir.path, filename);
      await File(outPath).writeAsBytes(bytes, flush: true);

      final entry = PcReceivedFile(
        name: p.basename(outPath),
        size: bytes.length,
        savedPath: outPath,
        timeSec: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      );
      receivedFiles.add(entry);
      onFileReceived?.call(entry);

      return Response.ok(
        jsonEncode({'ok': true, 'count': receivedFiles.length}),
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    } catch (e) {
      return Response.internalServerError(body: '$e');
    }
  }

  static Future<String> _uniquePath(String dir, String filename) async {
    var out = p.join(dir, filename);
    if (!await File(out).exists()) return out;
    final dot = filename.lastIndexOf('.');
    final base = dot >= 0 ? filename.substring(0, dot) : filename;
    final ext = dot >= 0 ? filename.substring(dot) : '';
    var n = 1;
    while (await File(out).exists()) {
      out = p.join(dir, '$base ($n)$ext');
      n++;
    }
    return out;
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
    'access-control-allow-methods': 'GET, POST, OPTIONS',
    'access-control-allow-headers': '*, X-File-Name',
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
