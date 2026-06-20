// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Bagikan File Video Besar';

  @override
  String get heroAccent => 'secara instan.';

  @override
  String get heroTitle => 'Kirim dalam jumlah besar file';

  @override
  String get splashLoading => 'Memuat…';

  @override
  String get navSend => 'Dasbor';

  @override
  String get navHome => 'Beranda';

  @override
  String get navHistory => 'Riwayat';

  @override
  String get navReceive => 'Terima';

  @override
  String get navPlans => 'Paket';

  @override
  String get navDownload => 'Unduh';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get modeLink => 'Dapatkan tautan';

  @override
  String get modeEmail => 'Kirim melalui email';

  @override
  String get modeWifi => 'Wi‑Fi';

  @override
  String get modePc => 'PC';

  @override
  String get modeNearby => 'Nearby';

  @override
  String get nearbyTitle => 'Nearby share';

  @override
  String get nearbySubtitle =>
      'Send files to a device next to you on the same Wi‑Fi — no internet upload needed.';

  @override
  String get nearbySend => 'Send';

  @override
  String get nearbyReceive => 'Receive';

  @override
  String get nearbySendDesc =>
      'Pick files and wait for a nearby device to connect';

  @override
  String get nearbyReceiveDesc =>
      'Find nearby devices and download their files';

  @override
  String get nearbyPickFiles => 'Choose files to send';

  @override
  String get nearbyStartSharing => 'Start sharing nearby';

  @override
  String get nearbyWaitingForReceiver => 'Waiting for nearby device…';

  @override
  String get nearbyScanning => 'Looking for nearby devices…';

  @override
  String get nearbyNoDevices => 'No nearby devices found';

  @override
  String get nearbyNoDevicesHint =>
      'Ask the sender to tap Send, choose files, and start sharing on the same Wi‑Fi.';

  @override
  String nearbyFilesReady(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files ready',
      one: '1 file ready',
    );
    return '$_temp0';
  }

  @override
  String get nearbyDownloadAll => 'Download all';

  @override
  String get nearbySharingActive => 'Ready to share';

  @override
  String get nearbyStopSharing => 'Stop sharing';

  @override
  String get nearbyConnectFailed =>
      'Could not connect to this device. Try again.';

  @override
  String get nearbyComplete => 'Transfer complete';

  @override
  String get nearbyOpen => 'Share nearby';

  @override
  String get nearbyOpenDesc => 'Auto-find devices — no QR or link needed';

  @override
  String get driveTitle => 'Google Drive';

  @override
  String get driveSubtitle =>
      'Back up files to your Drive or download files you saved from this app.';

  @override
  String get driveBackup => 'Back up to Drive';

  @override
  String get driveBackupDesc =>
      'Pick files on this device and upload to your Google Drive';

  @override
  String get driveDownload => 'Download from Drive';

  @override
  String get driveDownloadDesc =>
      'Download files you previously backed up with this app';

  @override
  String get drivePickFilesHint =>
      'Choose one or more files to back up to Google Drive.';

  @override
  String get driveStartBackup => 'Back up now';

  @override
  String get driveStartDownload => 'Download to device';

  @override
  String get driveYourFiles => 'Your backed-up files';

  @override
  String get driveNoFiles => 'No files in Drive yet. Back up some files first.';

  @override
  String get driveBackingUp => 'Backing up…';

  @override
  String get driveDownloading => 'Downloading…';

  @override
  String driveUploadingFile(int current, int total) {
    return 'Uploading file $current of $total';
  }

  @override
  String get driveBackupDone => 'Backed up';

  @override
  String get driveBackupDoneBody => 'Your files are saved to Google Drive.';

  @override
  String get driveUploadFailed =>
      'Could not upload to Google Drive. Try again.';

  @override
  String get driveListFailed => 'Could not load files from Google Drive.';

  @override
  String get driveDownloadFailed => 'Could not download from Google Drive.';

  @override
  String get driveComplete => 'Done';

  @override
  String get driveDone => 'Back';

  @override
  String get driveSignOut => 'Sign out of Google';

  @override
  String driveSignedInAs(String email) {
    return 'Signed in as $email';
  }

  @override
  String get driveSetupTitle => 'Google Drive not configured';

  @override
  String get driveSetupBody =>
      'Add Google OAuth client IDs when building the app (see drive_config.dart).';

  @override
  String get driveOpen => 'Google Drive';

  @override
  String get driveOpenDesc => 'Back up or download your files';

  @override
  String get pcShareHint =>
      'Share files with a computer on the same Wi‑Fi network.';

  @override
  String get pcStartSharing => 'Share with PC';

  @override
  String get pcShareReady => 'Open on your computer';

  @override
  String get pcShareReadyBody =>
      'Open the link below in Chrome, Edge, or Safari on your computer to download the files.';

  @override
  String get pcOpenInBrowser => 'Scan the QR or open the link on your computer';

  @override
  String get pcBrowserUrlLabel => 'Computer link';

  @override
  String get snackPcNoNetwork => 'No network connection';

  @override
  String get snackPcShareFailed => 'Could not start PC sharing';

  @override
  String get snackPcShareFailedBody => 'Connect to Wi‑Fi and try again.';

  @override
  String get snackPcReceiveFailed => 'Could not start PC receive';

  @override
  String get snackPcReceiveFailedBody => 'Connect to Wi‑Fi and try again.';

  @override
  String get receivePcTitle => 'Receive from computer';

  @override
  String get pcReceiveStart => 'Start receiving';

  @override
  String get pcReceiveStop => 'Stop receiving';

  @override
  String get pcReceiveReady => 'Waiting for uploads';

  @override
  String get pcReceiveHint =>
      'On your computer, open the link below and upload files.';

  @override
  String pcReceivedFiles(int count) {
    return '$count files received';
  }

  @override
  String get receivePcHowTo1 => 'Start receiving on your phone';

  @override
  String get receivePcHowTo1Body =>
      'Tap Start receiving, then keep this screen open.';

  @override
  String get receivePcHowTo2 => 'Open the link on your computer';

  @override
  String get receivePcHowTo2Body =>
      'Use the QR code or copy the http:// address into your browser.';

  @override
  String get receivePcHowTo3 => 'Upload from the browser';

  @override
  String get receivePcHowTo3Body =>
      'Files are saved to Downloads on this phone.';

  @override
  String get historyPcSent => 'PC';

  @override
  String get historyPcReceived => 'From PC';

  @override
  String get historyPcSessionEnded =>
      'This PC session has ended. Share again from Send to transfer files.';

  @override
  String get historyPcReceivedNote =>
      'Files were saved to Downloads on this device.';

  @override
  String get wifiShareHint =>
      'Share files directly with a nearby device on the same Wi‑Fi network.';

  @override
  String get wifiSameNetworkHint =>
      'Both devices must be on the same Wi‑Fi network.';

  @override
  String get wifiStartSharing => 'Start sharing';

  @override
  String get wifiShareReady => 'Ready to receive';

  @override
  String get wifiShareReadyBody =>
      'Ask the receiver to scan the QR code or open the address below on the same Wi‑Fi network.';

  @override
  String get snackWifiNoNetwork => 'No Wi‑Fi connection';

  @override
  String get snackWifiNoNetworkBody =>
      'Connect to Wi‑Fi to share files locally.';

  @override
  String get snackWifiShareFailed => 'Could not start Wi‑Fi sharing';

  @override
  String get snackWifiShareFailedBody =>
      'Check your Wi‑Fi connection and try again.';

  @override
  String get receiveWifiTitle => 'Receive via Wi‑Fi';

  @override
  String get receiveWifiUrlLabel => 'Sender address';

  @override
  String get receiveWifiUrlHint => 'http://192.168.1.5:12345/wifi/...';

  @override
  String get receiveWifiFind => 'Find files';

  @override
  String get receiveWifiScanQr => 'Scan Wi‑Fi QR';

  @override
  String get receiveWifiInvalidUrl =>
      'This is not a valid Wi‑Fi share address.';

  @override
  String get receiveWifiConnectFailed =>
      'Could not reach the sender. Make sure both devices are on the same Wi‑Fi.';

  @override
  String get receiveWifiHowTo1 => 'Start sharing on the sender';

  @override
  String get receiveWifiHowTo1Body =>
      'On Send, choose Wi‑Fi and tap Start sharing.';

  @override
  String get receiveWifiHowTo2 => 'Scan or paste the address';

  @override
  String get receiveWifiHowTo2Body =>
      'Use the scanner or paste the http:// address from the sender.';

  @override
  String get receiveWifiHowTo3 => 'Download the files';

  @override
  String get receiveWifiHowTo3Body =>
      'Files are saved to your Downloads folder.';

  @override
  String get wifiDownloadAll => 'Download all';

  @override
  String wifiDownloadedFiles(int count) {
    return 'Saved $count files to Downloads';
  }

  @override
  String wifiDownloadingProgress(int current, int total) {
    return 'Downloading $current of $total…';
  }

  @override
  String get historyWifiSent => 'Wi‑Fi';

  @override
  String get historyWifiReceived => 'Received';

  @override
  String get historyWifiSessionEnded =>
      'This Wi‑Fi session has ended. Start a new share on Send to transfer again.';

  @override
  String get historyWifiReceivedNote =>
      'Files were saved to Downloads on this device.';

  @override
  String get pickFiles => 'Pilih file';

  @override
  String get pickFolder => 'Pilih folder';

  @override
  String get emailFrom => 'Email Anda';

  @override
  String get mailFromUsesAccount =>
      'Menggunakan email yang Anda gunakan untuk masuk.';

  @override
  String get recipientEmailsHelper =>
      'Beberapa penerima: pisahkan dengan koma, titik koma, atau spasi.';

  @override
  String get emailTo => 'Email penerima';

  @override
  String get messageOptional => 'Pesan (opsional)';

  @override
  String get passwordOptional => 'Kata Sandi (opsional)';

  @override
  String get destructAfterDownload => 'Hapus setelah diunduh';

  @override
  String get destructNo => 'Simpan tersedia';

  @override
  String get sendButton => 'Kirim';

  @override
  String get uploading => 'Mengunggah…';

  @override
  String get uploadComplete => 'Selesai';

  @override
  String get shareLinkTitle => 'Tautan Anda';

  @override
  String get copyLink => 'Salin tautan';

  @override
  String get share => 'Bagikan';

  @override
  String get shareQrCode => 'Bagikan kode QR';

  @override
  String get uploadMore => 'Kirim yang lain';

  @override
  String get emailSentTitle => 'Email terkirim';

  @override
  String get verifyEmailTitle => 'Verifikasi email Anda';

  @override
  String get verifyCodeHint => 'Masukkan kode dari email Anda';

  @override
  String get verifySubmit => 'Verifikasi';

  @override
  String get verifyResendCode => 'Kirim ulang kode';

  @override
  String get verifyCodeSent =>
      'Kode verifikasi baru telah dikirimkan ke email Anda.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Email verifikasi mungkin tidak ada telah terkirim';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Server tidak dapat mengonfirmasi pengiriman (seringkali SMTP salah dikonfigurasi). Minta admin situs Anda untuk memeriksa pengaturan Mail di panel admin, lalu ketuk Kirim ulang kode.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Jika tidak sampai: periksa Sampah/Spam dan Promosi, tunggu sebentar, konfirmasi $email tidak ada kesalahan ketik, lalu ketuk Kirim Ulang.';
  }

  @override
  String get loginTitle => 'Masuk';

  @override
  String get signupHint => 'Gunakan email akun situs Anda dan kata sandi.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Kata Sandi';

  @override
  String get cancel => 'Batal';

  @override
  String get signIn => 'Masuk';

  @override
  String get downloadIdHint => 'ID Transfer';

  @override
  String get privateIdHint => 'ID Pribadi (opsional)';

  @override
  String get fetchTransfer => 'Buka transfer';

  @override
  String get downloadFile => 'Unduh';

  @override
  String get unlockDownload => 'Buka kunci unduhan';

  @override
  String get downloadSaved => 'Disimpan ke Unduhan';

  @override
  String get errorGeneric => 'Ada yang tidak beres';

  @override
  String get errorNetwork => 'Kesalahan jaringan';

  @override
  String get errorBadResponse => 'Respon server tidak terduga';

  @override
  String get termsAccept => 'Saya menyetujui persyaratan';

  @override
  String get settingsApiUrl => 'Situs publik URL';

  @override
  String get settingsAccount => 'Akun';

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Terang';

  @override
  String get themeDark => 'Gelap';

  @override
  String get settingsSignedIn => 'Anda sudah masuk.';

  @override
  String get settingsSignedOut => 'Anda belum masuk di.';

  @override
  String get settingsOpenWebsite => 'Buka situs web';

  @override
  String get signUp => 'Daftar';

  @override
  String get settingsLinks => 'Tautan';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get termsOfService => 'Ketentuan layanan';

  @override
  String get about => 'Tentang';

  @override
  String get moreApps => 'Selengkapnya apps';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get languageEnglish => 'Bahasa Inggris';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Keluar';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get deleteAccountConfirmTitle => 'Hapus akun Anda?';

  @override
  String get deleteAccountConfirmBody =>
      'Ini akan menghapus akun Anda secara permanen dan mengeluarkan Anda. Tautan transfer Anda akan tetap berfungsi, tetapi tidak akan muncul lagi di riwayat Anda.';

  @override
  String get deleteAccountSuccess => 'Akun dihapus';

  @override
  String get deleteAccountSuccessBody => 'Akun Anda telah dihapus.';

  @override
  String get deleteAccountFailed => 'Tidak dapat menghapus akun';

  @override
  String get deleteAccountFailedBody =>
      'Silakan coba lagi atau hubungi dukungan.';

  @override
  String get maxFilesReached => 'Terlalu banyak file';

  @override
  String get fileTooLarge => 'File juga besar';

  @override
  String get ipLimit => 'Terlalu banyak unggahan dari jaringan ini';

  @override
  String get fillFields => 'Silakan isi kolom yang wajib diisi';

  @override
  String get invalidEmail => 'Email tidak valid';

  @override
  String get maxRecipientsReached => 'Terlalu banyak penerima';

  @override
  String get loginRequiredTitle => 'Harus masuk';

  @override
  String get loginRequiredBody =>
      'Server ini memerlukan akun untuk mengunggah atau mengunduh.';

  @override
  String get settingsSubtitle => 'Preferensi aplikasi dan akun.';

  @override
  String get dropHeavyFile => 'Lepaskan file berat di sini.';

  @override
  String upToTotal(String max) {
    return 'Hingga $max total';
  }

  @override
  String get removeAll => 'Hapus semua';

  @override
  String get addFiles => 'Tambahkan file';

  @override
  String get adding => 'Menambahkan…';

  @override
  String get options => 'Opsi';

  @override
  String get selfDestruct => 'Penghancuran otomatis setelahnya unduh';

  @override
  String get expiry => 'Kedaluwarsa';

  @override
  String get cancelUpload => 'Batalkan unggahan';

  @override
  String get transferReady => 'Transfer siap!';

  @override
  String get emailSentReady => 'Email terkirim!';

  @override
  String get shareRecipientHint => 'Bagikan tautan ini kepada penerima Anda.';

  @override
  String get emailSentBody => 'Kami telah memberi tahu penerima Anda.';

  @override
  String get scanQr => 'Pindai untuk membuka tautan transfer.';

  @override
  String get shareLinkButton => 'BAGIKAN LINK';

  @override
  String get verifyFourDigit =>
      'Masukkan 4 digit kode yang dikirimkan ke email pengirim Anda.';

  @override
  String get starting => 'Mulai…';

  @override
  String filesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0';
  }

  @override
  String mbLeft(String amount) {
    return '$amount MB tersisa';
  }

  @override
  String get fillField => 'Silakan isi kolom ini.';

  @override
  String get enterValidEmail => 'Masukkan yang valid email.';

  @override
  String get message => 'Pesan';

  @override
  String get recipientEmail => 'Email penerima';

  @override
  String get active => 'Aktif';

  @override
  String get expired => 'Kedaluwarsa';

  @override
  String get historyTitle => 'Transfer Saya';

  @override
  String get signInToSeeTransfers => 'Masuk untuk melihat transfer Anda';

  @override
  String get signInTransfersBody =>
      'Kami menggunakan email Anda untuk menghubungkan transfer ke akun Anda — tidak perlu kata sandi.';

  @override
  String get couldNotLoadTransfers => 'Bisa tidak memuat transfer';

  @override
  String get retry => 'Coba lagi';

  @override
  String get noTransfersYet => 'Belum ada transfer';

  @override
  String get noTransfersBody =>
      'Setelah Anda mengirim file, file tersebut akan muncul di sini.';

  @override
  String get transferDetails => 'Rincian transfer';

  @override
  String get filesSection => 'File';

  @override
  String get receiveTitle => 'Terima File';

  @override
  String get receiveSubtitle => 'Tempel tautan transfer untuk mengunduh file.';

  @override
  String get pasteTooltip => 'Tempel';

  @override
  String get findTransfer => 'Temukan Transfer';

  @override
  String get receiveScanQr => 'Pindai QR';

  @override
  String get receiveScanQrTitle => 'Pindai transfer QR';

  @override
  String get receiveScanQrHint => 'Sejajarkan kode QR di dalam bingkai.';

  @override
  String get receiveScanQrInvalid =>
      'Kode QR ini bukan tautan transfer yang valid.';

  @override
  String get receiveScanQrCameraDenied =>
      'Akses kamera diperlukan untuk memindai QR kode.';

  @override
  String get receiveStepGetLink => 'Dapatkan tautannya';

  @override
  String get receiveStepGetLinkBody =>
      'Minta pengirim untuk membagikan tautan transfer dengan Anda.';

  @override
  String get receiveStepPaste => 'Tempel & temukan';

  @override
  String get receiveStepPasteBody =>
      'Tempel tautan di atas dan ketuk \"Temukan Transfer\".';

  @override
  String get receiveStepDownload => 'Unduh file';

  @override
  String get receiveStepDownloadBody =>
      'Lihat detail file dan unduh semuanya di sekali.';

  @override
  String get lookingUpTransfer => 'Mencari transfer…';

  @override
  String get transferNotFound =>
      'Transfer tidak ditemukan. Periksa tautannya dan coba lagi.';

  @override
  String get transferExpired =>
      'Transfer ini telah kedaluwarsa dan tidak tersedia lagi.';

  @override
  String get transferLoginRequired =>
      'Harus masuk untuk mengakses transfer ini.';

  @override
  String get transferBadResponse =>
      'Respon server tak terduga. Periksa koneksi Anda.';

  @override
  String get transferNetworkError =>
      'Kesalahan jaringan. Periksa koneksi internet Anda.';

  @override
  String transferLoadFailed(String error) {
    return 'Tidak dapat memuat transfer: $error';
  }

  @override
  String get passwordProtected => 'Dilindungi kata sandi';

  @override
  String get enterPassword => 'Masukkan kata sandi';

  @override
  String get unlock => 'Buka kunci';

  @override
  String get downloading => 'Mengunduh…';

  @override
  String get downloadAllFiles => 'Unduh semua file';

  @override
  String get downloadSingleFile => 'Unduh file';

  @override
  String get receiveAnother => 'Terima transfer lagi';

  @override
  String get plansTitle => 'Paket';

  @override
  String get plansSubtitle =>
      'Tingkatkan versi untuk menghapus iklan dan mengirim file yang lebih besar.';

  @override
  String get storeUnavailable => 'Toko tidak tersedia';

  @override
  String get storeUnavailableBody =>
      'Pembelian dalam aplikasi tidak tersedia, kan sekarang.';

  @override
  String get storeLoadingPrices => 'Memuat harga dari App Store…';

  @override
  String get storePricesUnavailable => 'Harga tidak tersedia';

  @override
  String get storePricesPartial => 'Beberapa harga tidak dapat dimuat';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded dari $total produk langganan dimuat.';
  }

  @override
  String get storeSetupHint =>
      'Uji pada iPhone asli (bukan Simulator), gunakan ID Apple Sandbox, dan pastikan semua 6 langganan dibuat berdasarkan ini ID paket aplikasi di App Store Terhubung dengan harga yang ditetapkan.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/bulan';
  }

  @override
  String get freeVersionAds =>
      'Saat ini Anda menggunakan versi gratis kami dengan iklan';

  @override
  String get restorePurchases => 'Pulihkan pembelian';

  @override
  String get plansContinue => 'Lanjutkan';

  @override
  String get planLinkRestore => 'Pulihkan';

  @override
  String get termsAndConditions => 'Syarat dan ketentuan';

  @override
  String get createAccountTitle => 'Buat akun';

  @override
  String get signUpSubtitle => 'Daftar dengan email dan kata sandi.';

  @override
  String get confirmPassword => 'Konfirmasi kata sandi';

  @override
  String get passwordMin8 => 'Kata sandi (min 8 karakter)';

  @override
  String get alreadyHaveAccount => 'Sudah punya akun?';

  @override
  String get checkEmailTitle => 'Periksa\nemail';

  @override
  String otpSentTo(String email) {
    return 'Kami mengirimkan kode 6 digit ke\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verifikasi & Masuk';

  @override
  String get didntReceiveCode => 'Tidak menerimanya?';

  @override
  String get tryAgain => 'Coba lagi';

  @override
  String get otpExpiresHint =>
      'Kode kedaluwarsa dalam 5 menit. Periksa folder spam Anda jika Anda tidak melihatnya.';

  @override
  String get snackError => 'Error';

  @override
  String get snackCopied => 'Disalin';

  @override
  String get snackCopiedBody => 'Tautan disalin ke clipboard';

  @override
  String get snackWelcome => 'Selamat datang';

  @override
  String get snackAccountCreated => 'Akun dibuat';

  @override
  String get snackEnterEmail => 'Silakan masukkan email Anda';

  @override
  String get snackEnterPassword => 'Silakan masukkan email Anda kata sandi';

  @override
  String get snackInvalidEmail => 'Alamat email tidak valid';

  @override
  String get snackInvalidCredentials => 'Email atau kata sandi salah';

  @override
  String get snackPasswordMin8 => 'Kata sandi minimal harus 8 karakter';

  @override
  String get snackPasswordMismatch => 'Kata sandi tidak cocok.';

  @override
  String get snackAccountExists => 'Akun sudah ada. Silakan masuk.';

  @override
  String get snackSignupFailed => 'Tidak dapat membuat akun. Coba lagi.';

  @override
  String get snackEnterOtp => 'Silakan masukkan kode 6 digit';

  @override
  String get snackOtpExpired => 'Kode habis masa berlakunya';

  @override
  String get snackOtpExpiredBody => 'Silakan minta kode baru.';

  @override
  String get snackInvalidCode => 'Kode tidak valid';

  @override
  String get snackInvalidCodeBody => 'Kode salah. Silakan coba lagi.';

  @override
  String get snackSendCodeFailed =>
      'Tidak dapat mengirim kode. Periksa koneksi Anda dan coba lagi.';

  @override
  String get snackEmptyFolder => 'Folder kosong';

  @override
  String get snackEmptyFolderBody =>
      'Tidak ada file yang ditemukan di folder yang dipilih.';

  @override
  String get snackFolderUnsupported => 'Tidak didukung';

  @override
  String get snackFolderUnsupportedBody =>
      'Unggahan folder tidak tersedia di platform ini.';

  @override
  String get snackFolderReadError => 'Tidak dapat membaca folder yang dipilih.';

  @override
  String get snackLimitReached => 'Batas tercapai';

  @override
  String get snackLimitFilesBody =>
      'Beberapa file tidak ditambahkan karena batas ukuran atau jumlah file.';

  @override
  String get snackFreePlanLimit =>
      'Paket gratis memungkinkan hingga 5GB per transfer. Harap hapus beberapa file atau tingkatkan.';

  @override
  String get snackSignInEmail => 'Silakan masuk untuk mengirim melalui email.';

  @override
  String get snackUploadStartFailed => 'Tidak dapat memulai pengunggahan.';

  @override
  String get snackVerifyEnterCode => 'Masukkan kode 4 digit dari email Anda.';

  @override
  String get snackVerifyInvalid =>
      'Kode tidak valid atau kedaluwarsa. Periksa email dan coba lagi.';

  @override
  String get snackVerifyResendFailed =>
      'Tidak dapat mengirim ulang kode. Coba lagi.';

  @override
  String get snackDownloadComplete => 'Unduhan selesai';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" disimpan ke Unduhan';
  }

  @override
  String get snackDownloadFailed => 'Pengunduhan gagal';

  @override
  String get snackSaved => 'Tersimpan';

  @override
  String get snackServerUrlUpdated =>
      'URL server diperbarui. Mulai ulang aplikasi untuk menerapkan.';

  @override
  String get snackStoreError => 'Kesalahan penyimpanan';

  @override
  String get snackMissingProducts => 'Produk hilang';

  @override
  String get snackStoreUnavailable => 'Toko tidak tersedia';

  @override
  String get snackStoreUnavailableBody =>
      'Pembelian dalam aplikasi tidak tersedia di perangkat ini.';

  @override
  String get snackProductNotLoaded => 'Produk belum dimuat.';

  @override
  String get snackRestoreStarted => 'Pemulihan dimulai';

  @override
  String get snackRestoreStartedBody => 'Kami sedang memeriksa pembelian.';

  @override
  String get snackRestoreFailed => 'Pemulihan gagal';

  @override
  String get snackProcessing => 'Pemrosesan';

  @override
  String get snackPleaseWait => 'Harap tunggu…';

  @override
  String get snackSuccess => 'Sukses';

  @override
  String get snackPurchaseCompleted => 'Pembelian selesai.';

  @override
  String get snackPurchaseError => 'Kesalahan pembelian';

  @override
  String get snackPurchaseFailed => 'Pembelian gagal.';

  @override
  String get snackCanceled => 'Dibatalkan';

  @override
  String get snackPurchaseCanceled => 'Pembelian dibatalkan.';

  @override
  String get snackUpload => 'Unggah';

  @override
  String get snackVerify => 'Verifikasi';

  @override
  String get doNotExpire => 'Jangan kadaluwarsa';

  @override
  String get hourSingular => 'jam';

  @override
  String get hourPlural => 'jam';

  @override
  String get daySingular => 'hari';

  @override
  String get dayPlural => 'hari';

  @override
  String get emailAddressLabel => 'ALAMAT EMAIL';

  @override
  String get passwordLabelCaps => 'PASSWORD';

  @override
  String get confirmPasswordLabelCaps => 'KONFIRMASI PASSWORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK TRANSFER ATAU ID';

  @override
  String get howToReceive => 'CARA MENERIMA';

  @override
  String get transferLinkHint => 'https://… or paste ID';

  @override
  String filesReady(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files ready',
      one: '1 file ready',
    );
    return '$_temp0';
  }

  @override
  String get planAdsTitle => 'Paket Iklan';

  @override
  String get planAdsBullet1 => 'Akses ke aplikasi gratis iklan';

  @override
  String get planAdsBullet2 => 'Hapus semua iklan';

  @override
  String get planProTitle => 'Paket Pro';

  @override
  String get planProBullet1 => 'Kirim file hingga 20GB';

  @override
  String get planProBullet2 => 'Unggah Cepat';

  @override
  String get planPremiumTitle => 'Paket Premium';

  @override
  String get planPremiumBullet1 => 'Kirim file hingga 100GB';

  @override
  String get planPremiumBullet2 => 'Unggah super cepat';

  @override
  String get planSubscriptionDisclaimer =>
      'Tidak ada masa uji coba — diperlukan langganan untuk menggunakan fungsionalitas aplikasi tambahan. Anda akan segera ditagih. Anda dapat membatalkan kapan saja.';

  @override
  String get perMonth => '/ bulan';

  @override
  String get perYear => '/ tahun';

  @override
  String get snackConnectionProblem => 'Masalah koneksi. Silakan coba lagi.';

  @override
  String get networkTitle => 'Jaringan';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'File: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Hari ini · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Kemarin · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d lalu · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining kiri';
  }

  @override
  String get loadingShort => 'Memuat…';

  @override
  String get colorPaletteTitle => 'Warna Palet';

  @override
  String get colorPaletteSectionBackgrounds => 'Latar Belakang (skala tinta)';

  @override
  String get colorPaletteSectionAccent => 'Aksen / Utama';

  @override
  String get colorPaletteSectionText => 'Teks';

  @override
  String get colorPaletteSectionBorders => 'Perbatasan & Kaca';

  @override
  String get colorPaletteSectionSemantic => 'Semantik';

  @override
  String get colorPaletteSectionLive => 'Tema Langsung (saat ini)';

  @override
  String get colorPaletteActiveHint => '★ = aktif digunakan di layar';

  @override
  String get colorPaletteCopyHint =>
      'Tekan lama contoh apa pun untuk menyalin nilai hexnya.';

  @override
  String historyFilesSize(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count files',
      one: '1 file',
    );
    return '$_temp0 · $size';
  }

  @override
  String get settingsAppBrand => 'Bagikan Besar\nFile Video';

  @override
  String get loginEmailPasswordPrompt =>
      'Masukkan email dan kata sandi Anda untuk masuk.';

  @override
  String get forgotPassword => 'Lupa kata sandi?';

  @override
  String get forgotPasswordTitle => 'Reset kata sandi';

  @override
  String get forgotPasswordBody =>
      'Masukkan email akun Anda dan kami akan mengirimkan kode reset.';

  @override
  String get forgotPasswordSubmit => 'Kirim kode reset';

  @override
  String get resetPasswordTitle => 'Buat baru kata sandi';

  @override
  String get resetPasswordBody =>
      'Masukkan kode 6 digit dari email Anda dan pilih kata sandi baru.';

  @override
  String get resetPasswordSubmit => 'Perbarui kata sandi';

  @override
  String get snackPasswordResetSent => 'Kode reset terkirim';

  @override
  String get snackPasswordResetSentBody =>
      'Periksa email Anda untuk kode reset 6 digit.';

  @override
  String get snackPasswordResetFailed =>
      'Tidak dapat mengirim kode reset. Coba lagi.';

  @override
  String get snackPasswordUpdated => 'Kata sandi diperbarui';

  @override
  String get snackPasswordUpdatedBody => 'Masuk dengan kata sandi baru Anda.';

  @override
  String get snackPasswordResetInvalid =>
      'Kode reset tidak valid atau kedaluwarsa.';

  @override
  String get otpDigitLabel => 'KODE 6 DIGIT';

  @override
  String receiveMoreFiles(int count) {
    return '+$count file lainnya';
  }
}
