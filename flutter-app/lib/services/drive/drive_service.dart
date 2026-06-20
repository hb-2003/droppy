import 'dart:io';

import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:path/path.dart' as p;
import 'package:sendlargefiles/data/repositories/download_repository.dart';
import 'package:sendlargefiles/services/drive/drive_config.dart';
import 'package:sendlargefiles/services/drive/drive_models.dart';

typedef DriveProgress = void Function(int fileIndex, int fileCount, double fraction);

class DriveService extends GetxService {
  late final GoogleSignIn _signIn;
  String? _folderId;

  @override
  void onInit() {
    super.onInit();
    _signIn = GoogleSignIn(
      scopes: const [drive.DriveApi.driveFileScope],
      serverClientId: DriveConfig.webClientId.isEmpty ? null : DriveConfig.webClientId,
      clientId: Platform.isIOS && DriveConfig.iosClientId.isNotEmpty
          ? DriveConfig.iosClientId
          : null,
    );
  }

  bool get isConfigured => DriveConfig.isConfigured;

  Future<bool> get isSignedIn async {
    try {
      return await _signIn.isSignedIn();
    } catch (_) {
      return false;
    }
  }

  Future<GoogleSignInAccount?> currentUser() async {
    try {
      return _signIn.currentUser ?? await _signIn.signInSilently();
    } catch (_) {
      return null;
    }
  }

  Future<GoogleSignInAccount?> signIn() async {
    if (!_isPlatformReady()) return null;
    return _signIn.signIn();
  }

  Future<void> signOut() async {
    _folderId = null;
    await _signIn.signOut();
  }

  bool _isPlatformReady() {
    if (Platform.isAndroid && DriveConfig.webClientId.isEmpty) return false;
    if (Platform.isIOS && DriveConfig.iosClientId.isEmpty) return false;
    return true;
  }

  Future<drive.DriveApi?> _api() async {
    final client = await _signIn.authenticatedClient();
    if (client == null) return null;
    return drive.DriveApi(client);
  }

  Future<String> _ensureFolder(drive.DriveApi api) async {
    if (_folderId != null) return _folderId!;
    final name = DriveConfig.appFolderName.replaceAll("'", r"\'");
    final list = await api.files.list(
      q: "mimeType='application/vnd.google-apps.folder' and name='$name' and trashed=false",
      spaces: 'drive',
      $fields: 'files(id)',
      pageSize: 1,
    );
    final existing = list.files;
    if (existing != null && existing.isNotEmpty && existing.first.id != null) {
      _folderId = existing.first.id;
      return _folderId!;
    }
    final folder = drive.File()
      ..name = DriveConfig.appFolderName
      ..mimeType = 'application/vnd.google-apps.folder';
    final created = await api.files.create(folder);
    _folderId = created.id;
    if (_folderId == null) throw StateError('drive_folder_create_failed');
    return _folderId!;
  }

  Future<List<DriveRemoteFile>> listBackupFiles() async {
    final api = await _api();
    if (api == null) throw StateError('drive_not_signed_in');
    final folderId = await _ensureFolder(api);
    final escaped = folderId.replaceAll("'", r"\'");
    final list = await api.files.list(
      q: "'$escaped' in parents and trashed=false and mimeType!='application/vnd.google-apps.folder'",
      spaces: 'drive',
      $fields: 'files(id,name,size,modifiedTime)',
      orderBy: 'modifiedTime desc',
      pageSize: 100,
    );
    final files = list.files ?? const <drive.File>[];
    return files
        .where((f) => f.id != null && (f.name ?? '').isNotEmpty)
        .map(
          (f) => DriveRemoteFile(
            id: f.id!,
            name: f.name!,
            size: int.tryParse(f.size ?? '') ?? 0,
            modifiedTime: f.modifiedTime,
          ),
        )
        .toList();
  }

  Future<void> uploadFiles(
    List<File> files, {
    required DriveProgress onProgress,
  }) async {
    if (files.isEmpty) return;
    final api = await _api();
    if (api == null) throw StateError('drive_not_signed_in');
    final folderId = await _ensureFolder(api);

    final totalBytes = await Future.wait(files.map((f) => f.length()))
        .then((sizes) => sizes.fold<int>(0, (a, b) => a + b));
    var sentBytes = 0;

    for (var i = 0; i < files.length; i++) {
      final file = files[i];
      final length = await file.length();
      final driveFile = drive.File()
        ..name = p.basename(file.path)
        ..parents = [folderId];
      final media = drive.Media(file.openRead(), length);
      await api.files.create(driveFile, uploadMedia: media);
      sentBytes += length;
      final fraction = totalBytes == 0 ? 1.0 : sentBytes / totalBytes;
      onProgress(i, files.length, fraction.clamp(0.0, 1.0));
    }
  }

  Future<File> downloadFile(
    DriveRemoteFile remote, {
    required void Function(double fraction) onProgress,
  }) async {
    final api = await _api();
    if (api == null) throw StateError('drive_not_signed_in');

    final media = await api.files.get(
      remote.id,
      downloadOptions: drive.DownloadOptions.fullMedia,
    ) as drive.Media;

    final saveDir = await DownloadRepository.resolveDownloadsDirectory();
    if (!await saveDir.exists()) await saveDir.create(recursive: true);

    var filename = remote.name;
    var out = File(p.join(saveDir.path, filename));
    if (await out.exists()) {
      final dot = filename.lastIndexOf('.');
      final base = dot >= 0 ? filename.substring(0, dot) : filename;
      final ext = dot >= 0 ? filename.substring(dot) : '';
      var n = 1;
      while (await out.exists()) {
        filename = '$base ($n)$ext';
        out = File(p.join(saveDir.path, filename));
        n++;
      }
    }

    final total = remote.size > 0 ? remote.size : null;
    var received = 0;
    final sink = out.openWrite();
    await for (final chunk in media.stream) {
      sink.add(chunk);
      received += chunk.length;
      if (total != null && total > 0) {
        onProgress((received / total).clamp(0.0, 1.0));
      }
    }
    await sink.close();
    onProgress(1.0);
    return out;
  }
}
