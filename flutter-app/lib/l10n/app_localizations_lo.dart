// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'ແບ່ງປັນໄຟລ໌ວິດີໂອຂະຫນາດໃຫຍ່';

  @override
  String get heroAccent => 'ທັນທີ.';

  @override
  String get heroTitle => 'ສົ່ງໄຟລ໌ທີ່ຮຸນແຮງ';

  @override
  String get splashLoading => 'ກຳລັງໂຫລດ...';

  @override
  String get navSend => 'ແຜງໜ້າປັດ';

  @override
  String get navHome => 'ບ້ານ';

  @override
  String get navHistory => 'ປະຫວັດສາດ';

  @override
  String get navReceive => 'ຮັບ';

  @override
  String get navPlans => 'ແຜນການ';

  @override
  String get navDownload => 'ດາວໂຫຼດ';

  @override
  String get navSettings => 'ການຕັ້ງຄ່າ';

  @override
  String get modeLink => 'ໄດ້ຮັບການເຊື່ອມຕໍ່';

  @override
  String get modeEmail => 'ສົ່ງທາງອີເມວ';

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
  String get pickFiles => 'ເລືອກໄຟລ໌';

  @override
  String get pickFolder => 'ເລືອກໂຟນເດີ';

  @override
  String get emailFrom => 'ອີເມວຂອງເຈົ້າ';

  @override
  String get mailFromUsesAccount => 'ໃຊ້ອີເມວທີ່ເຂົ້າສູ່ລະບົບຂອງທ່ານ.';

  @override
  String get recipientEmailsHelper =>
      'ຜູ້ຮັບຫຼາຍອັນ: ແຍກດ້ວຍເຄື່ອງໝາຍຈຸດ, ເຄື່ອງໝາຍຈຸດ, ຫຼືຍະຫວ່າງ.';

  @override
  String get emailTo => 'ອີເມວຜູ້ຮັບ';

  @override
  String get messageOptional => 'ຂໍ້ຄວາມ (ທາງເລືອກ)';

  @override
  String get passwordOptional => 'ລະຫັດຜ່ານ (ທາງເລືອກ)';

  @override
  String get destructAfterDownload => 'ລົບຫຼັງຈາກດາວໂຫຼດ';

  @override
  String get destructNo => 'ຮັກສາໄວ້';

  @override
  String get sendButton => 'ສົ່ງ';

  @override
  String get uploading => 'ກຳລັງອັບໂຫລດ...';

  @override
  String get uploadComplete => 'ສຳເລັດແລ້ວ';

  @override
  String get shareLinkTitle => 'ລິ້ງຂອງເຈົ້າ';

  @override
  String get copyLink => 'ສຳເນົາລິ້ງ';

  @override
  String get share => 'ແບ່ງປັນ';

  @override
  String get shareQrCode => 'ແບ່ງປັນລະຫັດ QR';

  @override
  String get uploadMore => 'ສົ່ງອັນອື່ນ';

  @override
  String get emailSentTitle => 'ສົ່ງອີເມວແລ້ວ';

  @override
  String get verifyEmailTitle => 'ຢືນຢັນອີເມວຂອງທ່ານ';

  @override
  String get verifyCodeHint => 'ໃສ່ລະຫັດຈາກອີເມວຂອງທ່ານ';

  @override
  String get verifySubmit => 'ຢືນຢັນ';

  @override
  String get verifyResendCode => 'ສົ່ງລະຫັດຄືນໃໝ່';

  @override
  String get verifyCodeSent => 'ລະຫັດຢືນຢັນໃຫມ່ຖືກສົ່ງໄປຫາອີເມວຂອງທ່ານ.';

  @override
  String get verifyEmailSmtpWarningTitle => 'ອີເມວຢືນຢັນອາດຈະບໍ່ໄດ້ຖືກສົ່ງໄປ';

  @override
  String get verifyEmailSmtpWarningBody =>
      'ເຊີບເວີບໍ່ສາມາດຢືນຢັນການຈັດສົ່ງໄດ້ (ເລື້ອຍໆ SMTP ຖືກຕັ້ງຄ່າຜິດ). ຂໍໃຫ້ຜູ້ເບິ່ງແຍງເວັບໄຊທ໌ຂອງເຈົ້າກວດເບິ່ງການຕັ້ງຄ່າ Mail ໃນກະດານຜູ້ເບິ່ງແຍງ, ຈາກນັ້ນແຕະສົ່ງລະຫັດຄືນ.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'ຖ້າມັນບໍ່ມາຮອດ: ກວດເບິ່ງ Junk/Spam ແລະ Promotions, ລໍຖ້ານາທີ, ຢືນຢັນວ່າ $email ບໍ່ມີການພິມຜິດ, ຈາກນັ້ນແຕະ Resend.';
  }

  @override
  String get loginTitle => 'ເຂົ້າສູ່ລະບົບ';

  @override
  String get signupHint => 'ໃຊ້ບັນຊີເວັບໄຊທ໌ຂອງເຈົ້າອີເມລ໌ແລະລະຫັດຜ່ານ.';

  @override
  String get emailHint => 'ອີເມວ';

  @override
  String get passwordHint => 'ລະຫັດຜ່ານ';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get signIn => 'ເຂົ້າສູ່ລະບົບ';

  @override
  String get downloadIdHint => 'ID ໂອນ';

  @override
  String get privateIdHint => 'ID ສ່ວນຕົວ (ທາງເລືອກ)';

  @override
  String get fetchTransfer => 'ເປີດການໂອນ';

  @override
  String get downloadFile => 'ດາວໂຫຼດ';

  @override
  String get unlockDownload => 'ປົດລັອກການດາວໂຫຼດ';

  @override
  String get downloadSaved => 'ບັນທຶກໃສ່ການດາວໂຫຼດ';

  @override
  String get errorGeneric => 'ມີບາງຢ່າງຜິດພາດ';

  @override
  String get errorNetwork => 'ເຄືອຂ່າຍຜິດພາດ';

  @override
  String get errorBadResponse => 'ການຕອບສະໜອງຂອງເຊີບເວີທີ່ບໍ່ຄາດຄິດ';

  @override
  String get termsAccept => 'ຂ້ອຍຕົກລົງເຫັນດີກັບເງື່ອນໄຂ';

  @override
  String get settingsApiUrl => 'URL ເວັບໄຊສາທາລະນະ';

  @override
  String get settingsAccount => 'ບັນຊີ';

  @override
  String get settingsAppearance => 'ຮູບລັກສະນະ';

  @override
  String get settingsTheme => 'ຫົວຂໍ້';

  @override
  String get themeSystem => 'ລະບົບ';

  @override
  String get themeLight => 'ແສງສະຫວ່າງ';

  @override
  String get themeDark => 'ມືດ';

  @override
  String get settingsSignedIn => 'ເຈົ້າເຂົ້າສູ່ລະບົບແລ້ວ.';

  @override
  String get settingsSignedOut => 'ເຈົ້າຍັງບໍ່ໄດ້ເຂົ້າສູ່ລະບົບ.';

  @override
  String get settingsOpenWebsite => 'ເປີດເວັບໄຊທ໌';

  @override
  String get signUp => 'ລົງທະບຽນ';

  @override
  String get settingsLinks => 'ລິ້ງຄ໌';

  @override
  String get privacyPolicy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get termsOfService => 'ເງື່ອນໄຂການໃຫ້ບໍລິການ';

  @override
  String get about => 'ກ່ຽວກັບ';

  @override
  String get moreApps => 'ແອັບເພີ່ມເຕີມ';

  @override
  String get settingsLanguage => 'ພາສາ';

  @override
  String get languageEnglish => 'ພາສາອັງກິດ';

  @override
  String get languageHindi => 'ຮິນດູ';

  @override
  String get logout => 'ອອກຈາກລະບົບ';

  @override
  String get deleteAccount => 'ລຶບບັນຊີ';

  @override
  String get deleteAccountConfirmTitle => 'ລຶບບັນຊີຂອງທ່ານບໍ?';

  @override
  String get deleteAccountConfirmBody =>
      'ນີ້ຈະເປັນການລຶບບັນຊີຂອງທ່ານຢ່າງຖາວອນ ແລະນຳທ່ານອອກຈາກລະບົບ. ການເຊື່ອມຕໍ່ການໂອນຍ້າຍຂອງທ່ານຈະເຮັດວຽກຕໍ່ໄປ, ແຕ່ພວກມັນຈະບໍ່ປາກົດຢູ່ໃນປະຫວັດຂອງທ່ານອີກຕໍ່ໄປ.';

  @override
  String get deleteAccountSuccess => 'ລຶບບັນຊີແລ້ວ';

  @override
  String get deleteAccountSuccessBody => 'ບັນຊີຂອງທ່ານໄດ້ຖືກລຶບອອກແລ້ວ.';

  @override
  String get deleteAccountFailed => 'ບໍ່ສາມາດລຶບບັນຊີໄດ້';

  @override
  String get deleteAccountFailedBody =>
      'ກະລຸນາລອງອີກຄັ້ງ ຫຼືຕິດຕໍ່ຝ່າຍຊ່ວຍເຫຼືອ.';

  @override
  String get maxFilesReached => 'ໄຟລ໌ຫຼາຍເກີນໄປ';

  @override
  String get fileTooLarge => 'ໄຟລ໌ໃຫຍ່ເກີນໄປ';

  @override
  String get ipLimit => 'ອັບໂຫຼດຈາກເຄືອຂ່າຍນີ້ຫຼາຍເກີນໄປ';

  @override
  String get fillFields => 'ກະລຸນາຕື່ມຂໍ້ມູນໃສ່ຊ່ອງຂໍ້ມູນທີ່ຕ້ອງການ';

  @override
  String get invalidEmail => 'ອີເມວບໍ່ຖືກຕ້ອງ';

  @override
  String get maxRecipientsReached => 'ຜູ້ຮັບຫຼາຍເກີນໄປ';

  @override
  String get loginRequiredTitle => 'ຕ້ອງເຂົ້າສູ່ລະບົບ';

  @override
  String get loginRequiredBody =>
      'ເຊີບເວີນີ້ຕ້ອງການບັນຊີເພື່ອອັບໂຫລດ ຫຼືດາວໂຫລດ.';

  @override
  String get settingsSubtitle => 'ການຕັ້ງຄ່າແອັບ ແລະບັນຊີ.';

  @override
  String get dropHeavyFile => 'ວາງໄຟລ໌ໜັກໃສ່ບ່ອນນີ້.';

  @override
  String upToTotal(String max) {
    return 'ສູງສຸດ $max ທັງໝົດ';
  }

  @override
  String get removeAll => 'ເອົາອອກທັງໝົດ';

  @override
  String get addFiles => 'ເພີ່ມໄຟລ໌';

  @override
  String get adding => 'ກຳລັງເພີ່ມ...';

  @override
  String get options => 'ທາງເລືອກ';

  @override
  String get selfDestruct => 'ທໍາລາຍຕົນເອງຫຼັງຈາກການດາວໂຫຼດ';

  @override
  String get expiry => 'ໝົດອາຍຸ';

  @override
  String get cancelUpload => 'ຍົກເລີກການອັບໂຫລດ';

  @override
  String get transferReady => 'ພ້ອມໂອນແລ້ວ!';

  @override
  String get emailSentReady => 'ສົ່ງອີເມວແລ້ວ!';

  @override
  String get shareRecipientHint => 'ແບ່ງປັນລິ້ງນີ້ກັບຜູ້ຮັບຂອງທ່ານ.';

  @override
  String get emailSentBody => 'ພວກເຮົາໄດ້ແຈ້ງໃຫ້ຜູ້ຮັບຂອງທ່ານແລ້ວ.';

  @override
  String get scanQr => 'ສະແກນເພື່ອເປີດລິ້ງໂອນຍ້າຍ.';

  @override
  String get shareLinkButton => 'ແບ່ງປັນລິ້ງ';

  @override
  String get verifyFourDigit =>
      'ໃສ່ລະຫັດ 4 ຕົວເລກທີ່ສົ່ງໄປຫາອີເມວຜູ້ສົ່ງຂອງທ່ານ.';

  @override
  String get starting => 'ກຳລັງເລີ່ມ...';

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
    return '$amount MB ຍັງເຫຼືອ';
  }

  @override
  String get fillField => 'ກະລຸນາຕື່ມຂໍ້ມູນໃສ່ໃນຊ່ອງນີ້.';

  @override
  String get enterValidEmail => 'ໃສ່ອີເມວທີ່ຖືກຕ້ອງ.';

  @override
  String get message => 'ຂໍ້ຄວາມ';

  @override
  String get recipientEmail => 'ອີເມວຜູ້ຮັບ';

  @override
  String get active => 'ເຄື່ອນໄຫວ';

  @override
  String get expired => 'ໝົດອາຍຸແລ້ວ';

  @override
  String get historyTitle => 'ການໂອນຂອງຂ້ອຍ';

  @override
  String get signInToSeeTransfers => 'ເຂົ້າສູ່ລະບົບເພື່ອເບິ່ງການໂອນຍ້າຍຂອງທ່ານ';

  @override
  String get signInTransfersBody =>
      'ພວກ​ເຮົາ​ໃຊ້​ອີ​ເມວ​ຂອງ​ທ່ານ​ເພື່ອ​ເຊື່ອມ​ຕໍ່​ການ​ໂອນ​ເຂົ້າ​ບັນ​ຊີ​ຂອງ​ທ່ານ — ບໍ່​ຈໍາ​ເປັນ​ຕ້ອງ​ມີ​ລະ​ຫັດ​ຜ່ານ.';

  @override
  String get couldNotLoadTransfers => 'ບໍ່ສາມາດໂຫຼດການໂອນຍ້າຍໄດ້';

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get noTransfersYet => 'ບໍ່ມີການໂອນຍ້າຍເທື່ອ';

  @override
  String get noTransfersBody => 'ເມື່ອທ່ານສົ່ງໄຟລ໌, ມັນຈະປາກົດຢູ່ທີ່ນີ້.';

  @override
  String get transferDetails => 'ລາຍລະອຽດການໂອນ';

  @override
  String get filesSection => 'ໄຟລ໌';

  @override
  String get receiveTitle => 'ຮັບໄຟລ໌';

  @override
  String get receiveSubtitle => 'ວາງລິ້ງໂອນຍ້າຍເພື່ອດາວໂຫລດໄຟລ໌.';

  @override
  String get pasteTooltip => 'ວາງ';

  @override
  String get findTransfer => 'ຊອກຫາການໂອນ';

  @override
  String get receiveScanQr => 'ສະແກນ QR';

  @override
  String get receiveScanQrTitle => 'ສະແກນ QR ໂອນ';

  @override
  String get receiveScanQrHint => 'ຈັດຮຽງລະຫັດ QR ພາຍໃນກອບ.';

  @override
  String get receiveScanQrInvalid =>
      'ລະຫັດ QR ນີ້ບໍ່ແມ່ນການເຊື່ອມຕໍ່ການໂອນທີ່ຖືກຕ້ອງ.';

  @override
  String get receiveScanQrCameraDenied =>
      'ຕ້ອງມີການເຂົ້າເຖິງກ້ອງຖ່າຍຮູບເພື່ອສະແກນລະຫັດ QR.';

  @override
  String get receiveStepGetLink => 'ໄດ້ຮັບການເຊື່ອມຕໍ່';

  @override
  String get receiveStepGetLinkBody =>
      'ຂໍໃຫ້ຜູ້ສົ່ງແບ່ງປັນການເຊື່ອມຕໍ່ການໂອນກັບທ່ານ.';

  @override
  String get receiveStepPaste => 'ວາງ & ຊອກຫາ';

  @override
  String get receiveStepPasteBody =>
      'ວາງການເຊື່ອມຕໍ່ຂ້າງເທິງແລະແຕະ \"ຊອກຫາການໂອນ\".';

  @override
  String get receiveStepDownload => 'ດາວໂຫຼດໄຟລ໌';

  @override
  String get receiveStepDownloadBody =>
      'ເບິ່ງລາຍລະອຽດໄຟລ໌ ແລະດາວໂຫຼດທຸກຢ່າງພ້ອມໆກັນ.';

  @override
  String get lookingUpTransfer => 'ກຳລັງຊອກຫາການໂອນຍ້າຍ...';

  @override
  String get transferNotFound =>
      'ບໍ່ພົບການໂອນຍ້າຍ. ກວດເບິ່ງລິ້ງແລ້ວລອງໃໝ່ອີກຄັ້ງ.';

  @override
  String get transferExpired =>
      'ການໂອນຍ້າຍນີ້ໝົດອາຍຸແລ້ວ ແລະບໍ່ສາມາດນຳໃຊ້ໄດ້ອີກຕໍ່ໄປ.';

  @override
  String get transferLoginRequired =>
      'ຕ້ອງເຂົ້າສູ່ລະບົບເພື່ອເຂົ້າເຖິງການໂອນຍ້າຍນີ້.';

  @override
  String get transferBadResponse =>
      'ການຕອບສະໜອງຂອງເຊີບເວີທີ່ບໍ່ຄາດຄິດ. ກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານ.';

  @override
  String get transferNetworkError =>
      'ເຄືອຂ່າຍຜິດພາດ. ກວດເບິ່ງການເຊື່ອມຕໍ່ອິນເຕີເນັດຂອງທ່ານ.';

  @override
  String transferLoadFailed(String error) {
    return 'ບໍ່ສາມາດໂຫຼດການໂອນຍ້າຍໄດ້: $error';
  }

  @override
  String get passwordProtected => 'ປ້ອງກັນລະຫັດຜ່ານ';

  @override
  String get enterPassword => 'ໃສ່ລະຫັດຜ່ານ';

  @override
  String get unlock => 'ປົດລັອກ';

  @override
  String get downloading => 'ກຳລັງດາວໂຫຼດ...';

  @override
  String get downloadAllFiles => 'ດາວໂຫຼດໄຟລ໌ທັງໝົດ';

  @override
  String get downloadSingleFile => 'ດາວໂຫຼດໄຟລ໌';

  @override
  String get receiveAnother => 'ຮັບການໂອນເງິນອື່ນ';

  @override
  String get plansTitle => 'ແຜນການ';

  @override
  String get plansSubtitle => 'ອັບເກຣດເພື່ອລຶບໂຄສະນາ ແລະສົ່ງໄຟລ໌ທີ່ໃຫຍ່ກວ່າ.';

  @override
  String get storeUnavailable => 'ຮ້ານຄ້າບໍ່ສາມາດໃຊ້ໄດ້';

  @override
  String get storeUnavailableBody => 'ການຊື້ໃນແອັບບໍ່ສາມາດໃຊ້ໄດ້ໃນຕອນນີ້.';

  @override
  String get storeLoadingPrices => 'ກຳລັງໂຫຼດລາຄາຈາກ App Store...';

  @override
  String get storePricesUnavailable => 'ບໍ່ມີລາຄາ';

  @override
  String get storePricesPartial => 'ລາຄາບາງອັນບໍ່ສາມາດໂຫຼດໄດ້';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded ຂອງ $total ຜະລິດຕະພັນການສະໝັກໃຊ້ຖືກໂຫຼດແລ້ວ.';
  }

  @override
  String get storeSetupHint =>
      'ທົດສອບໃນ iPhone ທີ່ແທ້ຈິງ (ບໍ່ແມ່ນ Simulator), ໃຊ້ Sandbox Apple ID, ແລະໃຫ້ແນ່ໃຈວ່າການສະຫມັກທັງຫມົດ 6 ໄດ້ຖືກສ້າງຂື້ນພາຍໃຕ້ bundle ID ຂອງແອັບຯນີ້ໃນ App Store Connect ກັບລາຄາທີ່ກໍານົດໄວ້.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ເດືອນ';
  }

  @override
  String get freeVersionAds =>
      'ໃນປັດຈຸບັນທ່ານກໍາລັງໃຊ້ສະບັບຟຣີຂອງພວກເຮົາກັບການໂຄສະນາ';

  @override
  String get restorePurchases => 'ຟື້ນຟູການຊື້';

  @override
  String get plansContinue => 'ສືບຕໍ່';

  @override
  String get planLinkRestore => 'ຟື້ນຟູ';

  @override
  String get termsAndConditions => 'ຂໍ້ກໍານົດແລະເງື່ອນໄຂ';

  @override
  String get createAccountTitle => 'ສ້າງບັນຊີ';

  @override
  String get signUpSubtitle => 'ລົງທະບຽນດ້ວຍອີເມວ ແລະລະຫັດຜ່ານ.';

  @override
  String get confirmPassword => 'ຢືນຢັນລະຫັດຜ່ານ';

  @override
  String get passwordMin8 => 'ລະຫັດຜ່ານ (ຂັ້ນຕ່ຳ 8 ຕົວອັກສອນ)';

  @override
  String get alreadyHaveAccount => 'ມີບັນຊີຢູ່ແລ້ວບໍ?';

  @override
  String get checkEmailTitle => 'ກວດເບິ່ງຂອງທ່ານ\nອີເມວ';

  @override
  String otpSentTo(String email) {
    return 'ພວກເຮົາໄດ້ສົ່ງລະຫັດ 6 ຕົວເລກໄປໃຫ້\n$email';
  }

  @override
  String get verifyAndSignIn => 'ຢືນຢັນ & ເຂົ້າສູ່ລະບົບ';

  @override
  String get didntReceiveCode => 'ບໍ່ໄດ້ຮັບມັນບໍ?';

  @override
  String get tryAgain => 'ລອງອີກຄັ້ງ';

  @override
  String get otpExpiresHint =>
      'ລະຫັດໝົດອາຍຸໃນ 5 ນາທີ. ກວດເບິ່ງໂຟນເດີ spam ຂອງທ່ານຖ້າທ່ານບໍ່ເຫັນມັນ.';

  @override
  String get snackError => 'ຜິດພາດ';

  @override
  String get snackCopied => 'ສຳເນົາແລ້ວ';

  @override
  String get snackCopiedBody => 'ສຳເນົາລິ້ງໃສ່ຄລິບບອດແລ້ວ';

  @override
  String get snackWelcome => 'ຍິນດີຕ້ອນຮັບ';

  @override
  String get snackAccountCreated => 'ສ້າງບັນຊີແລ້ວ';

  @override
  String get snackEnterEmail => 'ກະລຸນາໃສ່ອີເມວຂອງທ່ານ';

  @override
  String get snackEnterPassword => 'ກະລຸນາໃສ່ລະຫັດຜ່ານຂອງທ່ານ';

  @override
  String get snackInvalidEmail => 'ທີ່ຢູ່ອີເມວບໍ່ຖືກຕ້ອງ';

  @override
  String get snackInvalidCredentials => 'ອີເມວ ຫຼືລະຫັດຜ່ານບໍ່ຖືກຕ້ອງ';

  @override
  String get snackPasswordMin8 => 'ລະຫັດຜ່ານຕ້ອງມີຢ່າງໜ້ອຍ 8 ຕົວອັກສອນ';

  @override
  String get snackPasswordMismatch => 'ລະຫັດຜ່ານບໍ່ກົງກັນ.';

  @override
  String get snackAccountExists => 'ມີບັນຊີຢູ່ແລ້ວ. ກະລຸນາເຂົ້າສູ່ລະບົບ.';

  @override
  String get snackSignupFailed => 'ບໍ່ສາມາດສ້າງບັນຊີໄດ້. ລອງອີກຄັ້ງ.';

  @override
  String get snackEnterOtp => 'ກະລຸນາໃສ່ລະຫັດ 6 ຕົວເລກ';

  @override
  String get snackOtpExpired => 'ລະຫັດໝົດອາຍຸແລ້ວ';

  @override
  String get snackOtpExpiredBody => 'ກະລຸນາຮ້ອງຂໍລະຫັດໃຫມ່.';

  @override
  String get snackInvalidCode => 'ລະຫັດບໍ່ຖືກຕ້ອງ';

  @override
  String get snackInvalidCodeBody => 'ລະຫັດບໍ່ຖືກຕ້ອງ. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get snackSendCodeFailed =>
      'ບໍ່ສາມາດສົ່ງລະຫັດໄດ້. ກວດເບິ່ງການເຊື່ອມຕໍ່ຂອງທ່ານແລ້ວລອງໃໝ່ອີກຄັ້ງ.';

  @override
  String get snackEmptyFolder => 'ໂຟນເດີເປົ່າ';

  @override
  String get snackEmptyFolderBody => 'ບໍ່ພົບໄຟລ໌ໃນໂຟນເດີທີ່ເລືອກ.';

  @override
  String get snackFolderUnsupported => 'ບໍ່ຮອງຮັບ';

  @override
  String get snackFolderUnsupportedBody =>
      'ການອັບໂຫລດໂຟນເດີບໍ່ສາມາດໃຊ້ໄດ້ໃນເວທີນີ້.';

  @override
  String get snackFolderReadError => 'ບໍ່ສາມາດອ່ານໂຟນເດີທີ່ເລືອກໄດ້.';

  @override
  String get snackLimitReached => 'ຮອດຂີດຈຳກັດແລ້ວ';

  @override
  String get snackLimitFilesBody =>
      'ບາງໄຟລ໌ບໍ່ໄດ້ຖືກເພີ່ມເນື່ອງຈາກຂະໜາດ ຫຼືຈຳນວນໄຟລ໌ຈຳກັດ.';

  @override
  String get snackFreePlanLimit =>
      'ແຜນການຟຣີອະນຸຍາດໃຫ້ສູງເຖິງ 5GB ຕໍ່ການໂອນ. ກະລຸນາລຶບບາງໄຟລ໌ອອກ ຫຼືອັບເກຣດ.';

  @override
  String get snackSignInEmail => 'ກະລຸນາເຂົ້າສູ່ລະບົບເພື່ອສົ່ງອີເມວ.';

  @override
  String get snackUploadStartFailed => 'ບໍ່ສາມາດເລີ່ມອັບໂຫລດໄດ້.';

  @override
  String get snackVerifyEnterCode => 'ໃສ່ລະຫັດ 4 ຕົວເລກຈາກອີເມວຂອງທ່ານ.';

  @override
  String get snackVerifyInvalid =>
      'ລະຫັດບໍ່ຖືກຕ້ອງ ຫຼືໝົດອາຍຸ. ກວດເບິ່ງອີເມວແລ້ວລອງອີກຄັ້ງ.';

  @override
  String get snackVerifyResendFailed =>
      'ບໍ່ສາມາດສົ່ງລະຫັດຄືນໃໝ່ໄດ້. ລອງອີກຄັ້ງ.';

  @override
  String get snackDownloadComplete => 'ດາວໂຫຼດສຳເລັດ';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" ຖືກບັນທຶກໃສ່ການດາວໂຫຼດແລ້ວ';
  }

  @override
  String get snackDownloadFailed => 'ການດາວໂຫຼດລົ້ມເຫລວ';

  @override
  String get snackSaved => 'ບັນທຶກແລ້ວ';

  @override
  String get snackServerUrlUpdated =>
      'ອັບເດດ URL ຂອງເຊີບເວີແລ້ວ. ຣີສະຕາດແອັບເພື່ອນຳໃຊ້.';

  @override
  String get snackStoreError => 'ຮ້ານຄ້າຜິດພາດ';

  @override
  String get snackMissingProducts => 'ຜະລິດຕະພັນທີ່ຂາດຫາຍໄປ';

  @override
  String get snackStoreUnavailable => 'ຮ້ານຄ້າບໍ່ສາມາດໃຊ້ໄດ້';

  @override
  String get snackStoreUnavailableBody =>
      'ການຊື້ໃນແອັບບໍ່ສາມາດໃຊ້ໄດ້ໃນອຸປະກອນນີ້.';

  @override
  String get snackProductNotLoaded => 'ສິນຄ້າຍັງບໍ່ໄດ້ໂຫລດເທື່ອ.';

  @override
  String get snackRestoreStarted => 'ການ​ຟື້ນ​ຟູ​ໄດ້​ເລີ່ມ​ຕົ້ນ​';

  @override
  String get snackRestoreStartedBody => 'ພວກເຮົາກວດສອບການຊື້ຂອງທ່ານ.';

  @override
  String get snackRestoreFailed => 'ກູ້ຄືນບໍ່ສຳເລັດ';

  @override
  String get snackProcessing => 'ການປຸງແຕ່ງ';

  @override
  String get snackPleaseWait => 'ກະລຸນາລໍຖ້າ...';

  @override
  String get snackSuccess => 'ສຳເລັດ';

  @override
  String get snackPurchaseCompleted => 'ສຳເລັດການຊື້.';

  @override
  String get snackPurchaseError => 'ການຊື້ຜິດພາດ';

  @override
  String get snackPurchaseFailed => 'ການຊື້ລົ້ມເຫລວ.';

  @override
  String get snackCanceled => 'ຍົກເລີກ';

  @override
  String get snackPurchaseCanceled => 'ຍົກເລີກການຊື້ແລ້ວ.';

  @override
  String get snackUpload => 'ອັບໂຫຼດ';

  @override
  String get snackVerify => 'ຢືນຢັນ';

  @override
  String get doNotExpire => 'ບໍ່ໝົດອາຍຸ';

  @override
  String get hourSingular => 'ຊົ່ວໂມງ';

  @override
  String get hourPlural => 'ຊົ່ວໂມງ';

  @override
  String get daySingular => 'ມື້';

  @override
  String get dayPlural => 'ມື້';

  @override
  String get emailAddressLabel => 'ທີ່ຢູ່ອີເມວ';

  @override
  String get passwordLabelCaps => 'ລະຫັດຜ່ານ';

  @override
  String get confirmPasswordLabelCaps => 'ຢືນຢັນລະຫັດຜ່ານ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ໂອນຍ້າຍລິ້ງ ຫຼື ID';

  @override
  String get howToReceive => 'ວິທີການຮັບ';

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
  String get planAdsTitle => 'ແຜນການໂຄສະນາ';

  @override
  String get planAdsBullet1 => 'ເຂົ້າເຖິງແອັບຟຣີໂຄສະນາ';

  @override
  String get planAdsBullet2 => 'ເອົາໂຄສະນາທັງໝົດອອກ';

  @override
  String get planProTitle => 'ແຜນ Pro';

  @override
  String get planProBullet1 => 'ສົ່ງໄຟລ໌ສູງສຸດ 20GB';

  @override
  String get planProBullet2 => 'ອັບໂຫຼດໄວ';

  @override
  String get planPremiumTitle => 'ແຜນພຣີມຽມ';

  @override
  String get planPremiumBullet1 => 'ສົ່ງໄຟລ໌ສູງສຸດ 100GB';

  @override
  String get planPremiumBullet2 => 'ອັບໂຫຼດໄວຫຼາຍ';

  @override
  String get planSubscriptionDisclaimer =>
      'ບໍ່​ມີ​ໄລ​ຍະ​ການ​ທົດ​ລອງ — ຈໍາ​ເປັນ​ຕ້ອງ​ມີ​ການ​ສະ​ຫມັກ​ເພື່ອ​ນໍາ​ໃຊ້​ການ​ທໍາ​ງານ​ຂອງ app ເພີ່ມ​ເຕີມ​. ທ່ານຈະຖືກຄິດຄ່າບໍລິການທັນທີ. ທ່ານສາມາດຍົກເລີກໄດ້ທຸກເວລາ.';

  @override
  String get perMonth => '/ ເດືອນ';

  @override
  String get perYear => '/ ປີ';

  @override
  String get snackConnectionProblem => 'ບັນຫາການເຊື່ອມຕໍ່. ກະລຸນາລອງອີກຄັ້ງ.';

  @override
  String get networkTitle => 'ເຄືອຂ່າຍ';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ໄຟລ໌: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'ມື້ນີ້ · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'ມື້ວານນີ້ · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysມື້ກ່ອນ · $time';
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
    return '$sent / $total • $remaining ຊ້າຍ';
  }

  @override
  String get loadingShort => 'ກຳລັງໂຫລດ...';

  @override
  String get colorPaletteTitle => 'ສີ Palette';

  @override
  String get colorPaletteSectionBackgrounds => 'ພື້ນຫຼັງ (ຂະຫນາດຫມຶກ)';

  @override
  String get colorPaletteSectionAccent => 'ສຳນຽງ/ປະຖົມ';

  @override
  String get colorPaletteSectionText => 'ຂໍ້ຄວາມ';

  @override
  String get colorPaletteSectionBorders => 'ຂອບ & ແກ້ວ';

  @override
  String get colorPaletteSectionSemantic => 'ຄວາມຫມາຍ';

  @override
  String get colorPaletteSectionLive => 'ຮູບແບບສີສັນສົດ (ປັດຈຸບັນ)';

  @override
  String get colorPaletteActiveHint => '★ = ຖືກນໍາໃຊ້ຢ່າງຫ້າວຫັນໃນຫນ້າຈໍ';

  @override
  String get colorPaletteCopyHint =>
      'ກົດປຸ່ມໃດນຶ່ງຄ້າງໄວ້ເພື່ອສຳເນົາຄ່າ hex ຂອງມັນ.';

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
  String get settingsAppBrand => 'ແບ່ງປັນຂະຫນາດໃຫຍ່\nໄຟລ໌ວິດີໂອ';

  @override
  String get loginEmailPasswordPrompt =>
      'ໃສ່ອີເມວ ແລະລະຫັດຜ່ານຂອງທ່ານເພື່ອເຂົ້າສູ່ລະບົບ.';

  @override
  String get forgotPassword => 'ລືມລະຫັດຜ່ານ?';

  @override
  String get forgotPasswordTitle => 'ຣີເຊັດລະຫັດຜ່ານ';

  @override
  String get forgotPasswordBody =>
      'ໃສ່ອີເມລ໌ບັນຊີຂອງທ່ານ ແລ້ວພວກເຮົາຈະສົ່ງລະຫັດຣີເຊັດ.';

  @override
  String get forgotPasswordSubmit => 'ສົ່ງລະຫັດຣີເຊັດ';

  @override
  String get resetPasswordTitle => 'ສ້າງລະຫັດຜ່ານໃຫມ່';

  @override
  String get resetPasswordBody =>
      'ໃສ່ລະຫັດ 6 ຕົວເລກຈາກອີເມວຂອງທ່ານແລະເລືອກລະຫັດຜ່ານໃຫມ່.';

  @override
  String get resetPasswordSubmit => 'ອັບເດດລະຫັດຜ່ານ';

  @override
  String get snackPasswordResetSent => 'ສົ່ງລະຫັດຄືນໃຫມ່';

  @override
  String get snackPasswordResetSentBody =>
      'ກວດເບິ່ງອີເມວຂອງທ່ານສຳລັບລະຫັດຣີເຊັດ 6 ຕົວເລກ.';

  @override
  String get snackPasswordResetFailed =>
      'ບໍ່ສາມາດສົ່ງລະຫັດຣີເຊັດໄດ້. ລອງອີກຄັ້ງ.';

  @override
  String get snackPasswordUpdated => 'ອັບເດດລະຫັດຜ່ານ';

  @override
  String get snackPasswordUpdatedBody =>
      'ເຂົ້າສູ່ລະບົບດ້ວຍລະຫັດຜ່ານໃໝ່ຂອງເຈົ້າ.';

  @override
  String get snackPasswordResetInvalid => 'ລະຫັດຣີເຊັດບໍ່ຖືກຕ້ອງ ຫຼືໝົດອາຍຸ.';

  @override
  String get otpDigitLabel => 'ລະຫັດ 6 ຕົວເລກ';

  @override
  String receiveMoreFiles(int count) {
    return '+$count ໄຟລ໌ເພີ່ມເຕີມ';
  }
}
