import 'dart:io';

import 'package:flutter/services.dart';

/// iOS folder picks are security-scoped; Dart [Directory.list] fails unless native
/// code calls `startAccessingSecurityScopedResource` first.
class IosSecurityScopedFolder {
  IosSecurityScopedFolder._();

  static const _channel = MethodChannel('sendlargefiles/ios_folder');

  static String? _activeRootPath;

  static Future<List<IosFolderFile>?> listFiles(String directoryPath) async {
    if (!Platform.isIOS) return null;

    if (_activeRootPath != null && _activeRootPath != directoryPath) {
      await release(_activeRootPath!);
    }

    final result = await _channel.invokeMethod<List<dynamic>>(
      'listDirectoryFiles',
      {'path': directoryPath},
    );
    if (result == null) return null;

    _activeRootPath = directoryPath;
    return result
        .map((e) => IosFolderFile.fromMap(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  static Future<void> release(String directoryPath) async {
    if (!Platform.isIOS) return;
    await _channel.invokeMethod<void>('releaseDirectoryAccess', {'path': directoryPath});
    if (_activeRootPath == directoryPath) _activeRootPath = null;
  }

  static Future<void> releaseActive() async {
    final path = _activeRootPath;
    if (path == null) return;
    await release(path);
  }
}

class IosFolderFile {
  const IosFolderFile({
    required this.path,
    required this.name,
    required this.size,
    required this.originalPath,
  });

  final String path;
  final String name;
  final int size;
  final String originalPath;

  factory IosFolderFile.fromMap(Map<String, dynamic> map) {
    return IosFolderFile(
      path: map['path'] as String,
      name: map['name'] as String,
      size: (map['size'] as num).toInt(),
      originalPath: map['originalPath'] as String? ?? '',
    );
  }
}
