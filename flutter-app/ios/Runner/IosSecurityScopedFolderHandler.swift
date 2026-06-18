import Flutter
import UIKit

/// Handles security-scoped folder access for iOS document picker directories.
final class IosSecurityScopedFolderHandler: NSObject, FlutterPlugin {
  private static var scopedUrls: [String: URL] = [:]

  static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "sendlargefiles/ios_folder",
      binaryMessenger: registrar.messenger()
    )
    let instance = IosSecurityScopedFolderHandler()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "listDirectoryFiles":
      guard let args = call.arguments as? [String: Any],
            let path = args["path"] as? String else {
        result(FlutterError(code: "bad_args", message: "path required", details: nil))
        return
      }
      result(listDirectoryFiles(atPath: path))
    case "releaseDirectoryAccess":
      guard let args = call.arguments as? [String: Any],
            let path = args["path"] as? String else {
        result(FlutterError(code: "bad_args", message: "path required", details: nil))
        return
      }
      releaseAccess(forPath: path)
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func listDirectoryFiles(atPath path: String) -> [[String: Any]] {
    let normalized = (path as NSString).standardizingPath
    let url = URL(fileURLWithPath: normalized, isDirectory: true)

    if Self.scopedUrls[normalized] == nil {
      guard url.startAccessingSecurityScopedResource() else {
        NSLog("IosSecurityScopedFolder: startAccessingSecurityScopedResource failed for %@", normalized)
        return []
      }
      Self.scopedUrls[normalized] = url
    }

    var files: [[String: Any]] = []
    let fm = FileManager.default
    guard let enumerator = fm.enumerator(
      at: url,
      includingPropertiesForKeys: [.isRegularFileKey, .fileSizeKey, .isSymbolicLinkKey],
      options: [.skipsHiddenFiles, .skipsPackageDescendants]
    ) else {
      return []
    }

    let rootPrefix = url.path.hasSuffix("/") ? url.path : url.path + "/"

    for case let fileUrl as URL in enumerator {
      do {
        let values = try fileUrl.resourceValues(forKeys: [.isRegularFileKey, .fileSizeKey, .isSymbolicLinkKey])
        guard values.isRegularFile == true, values.isSymbolicLink != true else { continue }
        let filePath = fileUrl.path
        guard filePath.hasPrefix(rootPrefix) else { continue }
        let relative = String(filePath.dropFirst(rootPrefix.count))
        let relativeDir = (relative as NSString).deletingLastPathComponent
        let originalPath: String
        if relativeDir.isEmpty || relativeDir == "." {
          originalPath = ""
        } else {
          originalPath = relativeDir.replacingOccurrences(of: "\\", with: "/") + "/"
        }
        files.append([
          "path": filePath,
          "name": fileUrl.lastPathComponent,
          "size": values.fileSize ?? 0,
          "originalPath": originalPath,
        ])
      } catch {
        continue
      }
    }

    return files
  }

  private func releaseAccess(forPath path: String) {
    let normalized = (path as NSString).standardizingPath
    guard let url = Self.scopedUrls.removeValue(forKey: normalized) else { return }
    url.stopAccessingSecurityScopedResource()
  }
}
