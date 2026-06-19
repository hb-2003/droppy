import 'dart:convert';

import 'package:sendlargefiles/services/pc_transfer/pc_transfer_models.dart';

abstract final class PcTransferHtml {
  static String sendPage({
    required String sessionId,
    required List<PcTransferFileEntry> files,
  }) {
    final rows = files.map((f) {
      final href = './files/${f.id}';
      final size = _fmtSize(f.size);
      final name = _escapeHtml(f.name);
      return '<tr><td>$name</td><td>$size</td><td><a class="btn" href="$href" download>Download</a></td></tr>';
    }).join();

    final downloadAll = files.length > 1
        ? '<a class="btn btn-all" href="./all.zip" download="transfer.zip">Download all (${files.length} files)</a>'
        : '';

    return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Me Transfer — Download files</title>
  <style>
    body { font-family: system-ui, sans-serif; background: #0b1220; color: #e8edf7; margin: 0; padding: 24px; }
    .card { max-width: 720px; margin: 0 auto; background: #141c2e; border: 1px solid #2a3550; border-radius: 16px; padding: 24px; }
    h1 { font-size: 1.35rem; margin: 0 0 8px; }
    p { color: #9aa8c4; line-height: 1.5; }
    table { width: 100%; border-collapse: collapse; margin-top: 16px; }
    th, td { text-align: left; padding: 10px 8px; border-bottom: 1px solid #2a3550; font-size: 14px; }
    th { color: #9aa8c4; font-weight: 600; }
    .btn { display: inline-block; background: #d4ff3b; color: #0b1220; padding: 8px 14px; border-radius: 999px; text-decoration: none; font-weight: 700; font-size: 13px; border: 0; cursor: pointer; }
    .btn-all { margin-top: 16px; padding: 12px 20px; font-size: 14px; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Download from phone</h1>
    <p>Session <code>${_escapeHtml(sessionId)}</code> — save these files to your computer.</p>
    $downloadAll
    <table>
      <thead><tr><th>File</th><th>Size</th><th></th></tr></thead>
      <tbody>$rows</tbody>
    </table>
  </div>
</body>
</html>''';
  }

  static String receivePage({required String sessionId}) {
    return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Me Transfer — Send to phone</title>
  <style>
    body { font-family: system-ui, sans-serif; background: #0b1220; color: #e8edf7; margin: 0; padding: 24px; }
    .card { max-width: 720px; margin: 0 auto; background: #141c2e; border: 1px solid #2a3550; border-radius: 16px; padding: 24px; }
    h1 { font-size: 1.35rem; margin: 0 0 8px; }
    p { color: #9aa8c4; line-height: 1.5; }
    .zone { margin-top: 20px; border: 2px dashed #3d4f75; border-radius: 14px; padding: 36px 20px; text-align: center; cursor: pointer; }
    .zone.drag { border-color: #d4ff3b; background: #1a2438; }
    input[type=file] { display: none; }
    .btn { margin-top: 16px; background: #d4ff3b; color: #0b1220; border: 0; padding: 12px 20px; border-radius: 999px; font-weight: 700; cursor: pointer; }
    .btn:disabled { opacity: 0.5; cursor: default; }
    #log { margin-top: 16px; font-size: 13px; color: #9aa8c4; white-space: pre-wrap; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Send to phone</h1>
    <p>Session <code>${_escapeHtml(sessionId)}</code> — upload files to the phone app on the same Wi‑Fi.</p>
    <div class="zone" id="zone">
      <p>Drag &amp; drop files here or click to choose</p>
      <input type="file" id="picker" multiple />
    </div>
    <button class="btn" id="uploadBtn" disabled>Upload</button>
    <div id="log"></div>
  </div>
  <script>
    const zone = document.getElementById('zone');
    const picker = document.getElementById('picker');
    const uploadBtn = document.getElementById('uploadBtn');
    const log = document.getElementById('log');
    let queue = [];

    function logLine(s) { log.textContent += s + '\\n'; }
    function refreshBtn() { uploadBtn.disabled = queue.length === 0; }

    zone.addEventListener('click', () => picker.click());
    zone.addEventListener('dragover', e => { e.preventDefault(); zone.classList.add('drag'); });
    zone.addEventListener('dragleave', () => zone.classList.remove('drag'));
    zone.addEventListener('drop', e => {
      e.preventDefault(); zone.classList.remove('drag');
      queue = Array.from(e.dataTransfer.files);
      log.textContent = queue.map(f => f.name + ' (' + f.size + ' bytes)').join('\\n');
      refreshBtn();
    });
    picker.addEventListener('change', () => {
      queue = Array.from(picker.files);
      log.textContent = queue.map(f => f.name + ' (' + f.size + ' bytes)').join('\\n');
      refreshBtn();
    });

    uploadBtn.addEventListener('click', async () => {
      uploadBtn.disabled = true;
      for (const file of queue) {
        logLine('Uploading ' + file.name + '...');
        const res = await fetch('./upload?name=' + encodeURIComponent(file.name), {
          method: 'POST',
          headers: {
            'Content-Type': 'application/octet-stream',
            'X-File-Name': file.name,
          },
          body: file,
        });
        if (!res.ok) {
          logLine('Failed: ' + file.name + ' (' + res.status + ')');
        } else {
          logLine('Sent: ' + file.name);
        }
      }
      logLine('Done.');
      queue = [];
      refreshBtn();
    });
  </script>
</body>
</html>''';
  }

  static String receivedJson(List<PcReceivedFile> files) {
    return jsonEncode({
      'files': files.map((f) => f.toJson()).toList(),
    });
  }

  static String _fmtSize(int bytes) {
    if (bytes >= 1073741824) return '${(bytes / 1073741824).toStringAsFixed(2)} GB';
    if (bytes >= 1048576) return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    if (bytes >= 1024) return '${(bytes / 1024).toStringAsFixed(0)} KB';
    return '$bytes B';
  }

  static String _escapeHtml(String raw) {
    return raw
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;');
  }
}
