// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'Ibahagi ang Malaking Video File';

  @override
  String get heroAccent => 'kaagad.';

  @override
  String get heroTitle => 'Magpadala ng mabibigat na file';

  @override
  String get splashLoading => 'Naglo-load…';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Bahay';

  @override
  String get navHistory => 'Kasaysayan';

  @override
  String get navReceive => 'Tumanggap';

  @override
  String get navPlans => 'Mga plano';

  @override
  String get navDownload => 'I-download';

  @override
  String get navSettings => 'Mga setting';

  @override
  String get modeLink => 'Kumuha ng link';

  @override
  String get modeEmail => 'Ipadala sa pamamagitan ng email';

  @override
  String get modeWifi => 'Wi‑Fi';

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
  String get pickFiles => 'Pumili ng mga file';

  @override
  String get pickFolder => 'Pumili ng folder';

  @override
  String get emailFrom => 'Ang iyong email';

  @override
  String get mailFromUsesAccount =>
      'Ginagamit ang iyong naka-sign-in na email.';

  @override
  String get recipientEmailsHelper =>
      'Maramihang tatanggap: hiwalay na may mga kuwit, semicolon, o mga puwang.';

  @override
  String get emailTo => 'Email ng tatanggap';

  @override
  String get messageOptional => 'Mensahe (opsyonal)';

  @override
  String get passwordOptional => 'Password (opsyonal)';

  @override
  String get destructAfterDownload => 'Tanggalin pagkatapos i-download';

  @override
  String get destructNo => 'Panatilihing available';

  @override
  String get sendButton => 'Ipadala';

  @override
  String get uploading => 'Ina-upload…';

  @override
  String get uploadComplete => 'Tapos na';

  @override
  String get shareLinkTitle => 'Ang iyong link';

  @override
  String get copyLink => 'Kopyahin ang link';

  @override
  String get share => 'Ibahagi';

  @override
  String get shareQrCode => 'Ibahagi ang QR code';

  @override
  String get uploadMore => 'Magpadala ng isa pa';

  @override
  String get emailSentTitle => 'Ipinadala ang mga email';

  @override
  String get verifyEmailTitle => 'I-verify ang iyong email';

  @override
  String get verifyCodeHint => 'Ilagay ang code mula sa iyong email';

  @override
  String get verifySubmit => 'I-verify';

  @override
  String get verifyResendCode => 'Muling ipadala ang code';

  @override
  String get verifyCodeSent =>
      'Isang bagong verification code ang ipinadala sa iyong email.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Maaaring hindi naipadala ang email ng pagpapatunay';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Hindi makumpirma ng server ang paghahatid (kadalasan ay mali ang pagkaka-configure ng SMTP). Hilingin sa admin ng iyong site na tingnan ang mga setting ng Mail sa admin panel, pagkatapos ay i-tap ang Ipadala muli ang code.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Kung hindi ito dumating: tingnan ang Junk/Spam at Promotions, maghintay ng isang minuto, kumpirmahin na walang typo ang $email, pagkatapos ay i-tap ang Ipadala muli.';
  }

  @override
  String get loginTitle => 'Mag-sign in';

  @override
  String get signupHint =>
      'Gamitin ang email at password ng iyong site account.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Password';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get downloadIdHint => 'Transfer ID';

  @override
  String get privateIdHint => 'Pribadong ID (opsyonal)';

  @override
  String get fetchTransfer => 'Buksan ang paglipat';

  @override
  String get downloadFile => 'I-download';

  @override
  String get unlockDownload => 'I-unlock ang pag-download';

  @override
  String get downloadSaved => 'Na-save sa Mga Download';

  @override
  String get errorGeneric => 'Nagkaproblema';

  @override
  String get errorNetwork => 'Error sa network';

  @override
  String get errorBadResponse => 'Hindi inaasahang tugon ng server';

  @override
  String get termsAccept => 'Sumasang-ayon ako sa mga tuntunin';

  @override
  String get settingsApiUrl => 'URL ng pampublikong site';

  @override
  String get settingsAccount => 'Account';

  @override
  String get settingsAppearance => 'Hitsura';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Liwanag';

  @override
  String get themeDark => 'Madilim';

  @override
  String get settingsSignedIn => 'Naka-sign in ka.';

  @override
  String get settingsSignedOut => 'Hindi ka naka-sign in.';

  @override
  String get settingsOpenWebsite => 'Buksan ang website';

  @override
  String get signUp => 'Mag-sign up';

  @override
  String get settingsLinks => 'Mga link';

  @override
  String get privacyPolicy => 'Patakaran sa privacy';

  @override
  String get termsOfService => 'Mga tuntunin ng serbisyo';

  @override
  String get about => 'Tungkol sa';

  @override
  String get moreApps => 'Higit pang mga app';

  @override
  String get settingsLanguage => 'Wika';

  @override
  String get languageEnglish => 'Ingles';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Log out';

  @override
  String get deleteAccount => 'Tanggalin ang account';

  @override
  String get deleteAccountConfirmTitle => 'Tanggalin ang iyong account?';

  @override
  String get deleteAccountConfirmBody =>
      'Permanente nitong dine-delete ang iyong account at masa-sign out ka. Patuloy na gagana ang iyong mga link sa paglilipat, ngunit hindi na lilitaw ang mga ito sa iyong kasaysayan.';

  @override
  String get deleteAccountSuccess => 'Na-delete ang account';

  @override
  String get deleteAccountSuccessBody => 'Inalis na ang iyong account.';

  @override
  String get deleteAccountFailed => 'Hindi matanggal ang account';

  @override
  String get deleteAccountFailedBody =>
      'Pakisubukang muli o makipag-ugnayan sa suporta.';

  @override
  String get maxFilesReached => 'Masyadong maraming file';

  @override
  String get fileTooLarge => 'Masyadong malaki ang file';

  @override
  String get ipLimit => 'Masyadong maraming pag-upload mula sa network na ito';

  @override
  String get fillFields => 'Mangyaring punan ang mga kinakailangang field';

  @override
  String get invalidEmail => 'Di-wastong email';

  @override
  String get maxRecipientsReached => 'Masyadong maraming tatanggap';

  @override
  String get loginRequiredTitle => 'Kailangang mag-sign in';

  @override
  String get loginRequiredBody =>
      'Nangangailangan ang server na ito ng account para mag-upload o mag-download.';

  @override
  String get settingsSubtitle => 'Mga kagustuhan sa app at account.';

  @override
  String get dropHeavyFile => 'Mag-drop ng mabigat na file dito.';

  @override
  String upToTotal(String max) {
    return 'Hanggang $max kabuuan';
  }

  @override
  String get removeAll => 'Alisin lahat';

  @override
  String get addFiles => 'Magdagdag ng mga file';

  @override
  String get adding => 'Idinaragdag…';

  @override
  String get options => 'Mga pagpipilian';

  @override
  String get selfDestruct => 'Self-destruct pagkatapos ng pag-download';

  @override
  String get expiry => 'Expiry';

  @override
  String get cancelUpload => 'Kanselahin ang pag-upload';

  @override
  String get transferReady => 'Handa na ang paglipat!';

  @override
  String get emailSentReady => 'Naipadala na ang email!';

  @override
  String get shareRecipientHint =>
      'Ibahagi ang link na ito sa iyong tatanggap.';

  @override
  String get emailSentBody => 'Inabisuhan namin ang iyong (mga) tatanggap.';

  @override
  String get scanQr => 'I-scan para buksan ang link ng paglilipat.';

  @override
  String get shareLinkButton => 'IBAHAGI ANG LINK';

  @override
  String get verifyFourDigit =>
      'Ilagay ang 4-digit na code na ipinadala sa iyong email ng nagpadala.';

  @override
  String get starting => 'Nagsisimula…';

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
    return '$amount MB ang natitira';
  }

  @override
  String get fillField => 'Mangyaring punan ang field na ito.';

  @override
  String get enterValidEmail => 'Maglagay ng wastong email.';

  @override
  String get message => 'Mensahe';

  @override
  String get recipientEmail => 'Email ng tatanggap';

  @override
  String get active => 'Aktibo';

  @override
  String get expired => 'Nag-expire na';

  @override
  String get historyTitle => 'Aking Mga Paglilipat';

  @override
  String get signInToSeeTransfers =>
      'Mag-sign in upang makita ang iyong mga paglilipat';

  @override
  String get signInTransfersBody =>
      'Ginagamit namin ang iyong email para i-link ang mga paglilipat sa iyong account — hindi kailangan ng password.';

  @override
  String get couldNotLoadTransfers => 'Hindi ma-load ang mga paglilipat';

  @override
  String get retry => 'Subukan muli';

  @override
  String get noTransfersYet => 'Wala pang transfer';

  @override
  String get noTransfersBody => 'Kapag nagpadala ka ng file, lalabas ito dito.';

  @override
  String get transferDetails => 'Mga detalye ng paglilipat';

  @override
  String get filesSection => 'Mga file';

  @override
  String get receiveTitle => 'Tumanggap ng mga File';

  @override
  String get receiveSubtitle =>
      'Mag-paste ng link sa paglilipat upang mag-download ng mga file.';

  @override
  String get pasteTooltip => 'Idikit';

  @override
  String get findTransfer => 'Maghanap ng Transfer';

  @override
  String get receiveScanQr => 'I-scan ang QR';

  @override
  String get receiveScanQrTitle => 'I-scan ang paglilipat ng QR';

  @override
  String get receiveScanQrHint => 'I-align ang QR code sa loob ng frame.';

  @override
  String get receiveScanQrInvalid =>
      'Ang QR code na ito ay hindi isang wastong link sa paglilipat.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kinakailangan ang access sa camera upang ma-scan ang mga QR code.';

  @override
  String get receiveStepGetLink => 'Kunin ang link';

  @override
  String get receiveStepGetLinkBody =>
      'Hilingin sa nagpadala na ibahagi sa iyo ang link ng paglilipat.';

  @override
  String get receiveStepPaste => 'Idikit at hanapin';

  @override
  String get receiveStepPasteBody =>
      'I-paste ang link sa itaas at i-tap ang \"Find Transfer\".';

  @override
  String get receiveStepDownload => 'Mag-download ng mga file';

  @override
  String get receiveStepDownloadBody =>
      'Tingnan ang mga detalye ng file at i-download ang lahat nang sabay-sabay.';

  @override
  String get lookingUpTransfer => 'Hinahanap ang paglilipat...';

  @override
  String get transferNotFound =>
      'Hindi nahanap ang paglipat. Tingnan ang link at subukang muli.';

  @override
  String get transferExpired =>
      'Ang paglipat na ito ay nag-expire at hindi na magagamit.';

  @override
  String get transferLoginRequired =>
      'Kinakailangan ang pag-sign in para ma-access ang paglilipat na ito.';

  @override
  String get transferBadResponse =>
      'Hindi inaasahang tugon ng server. Suriin ang iyong koneksyon.';

  @override
  String get transferNetworkError =>
      'Error sa network. Suriin ang iyong koneksyon sa internet.';

  @override
  String transferLoadFailed(String error) {
    return 'Hindi ma-load ang paglipat: $error';
  }

  @override
  String get passwordProtected => 'Pinoprotektahan ng password';

  @override
  String get enterPassword => 'Ipasok ang password';

  @override
  String get unlock => 'I-unlock';

  @override
  String get downloading => 'Dina-download…';

  @override
  String get downloadAllFiles => 'I-download ang lahat ng mga file';

  @override
  String get downloadSingleFile => 'Mag-download ng file';

  @override
  String get receiveAnother => 'Tumanggap ng isa pang paglipat';

  @override
  String get plansTitle => 'Mga plano';

  @override
  String get plansSubtitle =>
      'Mag-upgrade para mag-alis ng mga ad at magpadala ng mas malalaking file.';

  @override
  String get storeUnavailable => 'Hindi available ang tindahan';

  @override
  String get storeUnavailableBody =>
      'Ang mga in-app na pagbili ay hindi available sa ngayon.';

  @override
  String get storeLoadingPrices =>
      'Nilo-load ang mga presyo mula sa App Store…';

  @override
  String get storePricesUnavailable => 'Hindi available ang mga presyo';

  @override
  String get storePricesPartial => 'Hindi ma-load ang ilang presyo';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return 'Na-load ang $loaded ng $total mga produkto ng subscription.';
  }

  @override
  String get storeSetupHint =>
      'Subukan sa isang tunay na iPhone (hindi Simulator), gumamit ng Sandbox Apple ID, at tiyaking lahat ng 6 na subscription ay ginawa sa ilalim ng bundle ID ng app na ito sa App Store Kumonekta sa set ng pagpepresyo.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/buwan';
  }

  @override
  String get freeVersionAds =>
      'Sa kasalukuyan ay ginagamit mo ang aming libreng bersyon na may mga ad';

  @override
  String get restorePurchases => 'Ibalik ang mga binili';

  @override
  String get plansContinue => 'Magpatuloy';

  @override
  String get planLinkRestore => 'Ibalik';

  @override
  String get termsAndConditions => 'Mga tuntunin at kundisyon';

  @override
  String get createAccountTitle => 'Gumawa ng account';

  @override
  String get signUpSubtitle => 'Mag-sign up gamit ang email at password.';

  @override
  String get confirmPassword => 'Kumpirmahin ang password';

  @override
  String get passwordMin8 => 'Password (min 8 chars)';

  @override
  String get alreadyHaveAccount => 'Mayroon ka nang account?';

  @override
  String get checkEmailTitle => 'Suriin ang iyong\nemail';

  @override
  String otpSentTo(String email) {
    return 'Nagpadala kami ng 6 na digit na code sa\n$email';
  }

  @override
  String get verifyAndSignIn => 'I-verify at Mag-sign in';

  @override
  String get didntReceiveCode => 'Hindi natanggap?';

  @override
  String get tryAgain => 'Subukan muli';

  @override
  String get otpExpiresHint =>
      'Mag-e-expire ang code sa loob ng 5 minuto. Suriin ang iyong folder ng spam kung hindi mo ito nakikita.';

  @override
  String get snackError => 'Error';

  @override
  String get snackCopied => 'Kinopya';

  @override
  String get snackCopiedBody => 'Nakopya ang link sa clipboard';

  @override
  String get snackWelcome => 'Maligayang pagdating';

  @override
  String get snackAccountCreated => 'Nagawa ang account';

  @override
  String get snackEnterEmail => 'Pakilagay ang iyong email';

  @override
  String get snackEnterPassword => 'Mangyaring ipasok ang iyong password';

  @override
  String get snackInvalidEmail => 'Di-wastong email address';

  @override
  String get snackInvalidCredentials => 'Maling email o password';

  @override
  String get snackPasswordMin8 =>
      'Dapat na hindi bababa sa 8 character ang password';

  @override
  String get snackPasswordMismatch => 'Hindi tugma ang mga password.';

  @override
  String get snackAccountExists =>
      'Umiiral na ang account. Mangyaring mag-sign in.';

  @override
  String get snackSignupFailed => 'Hindi makalikha ng account. Subukan muli.';

  @override
  String get snackEnterOtp => 'Pakilagay ang 6 na digit na code';

  @override
  String get snackOtpExpired => 'Nag-expire ang code';

  @override
  String get snackOtpExpiredBody => 'Mangyaring humiling ng bagong code.';

  @override
  String get snackInvalidCode => 'Di-wastong code';

  @override
  String get snackInvalidCodeBody => 'Mali ang code. Pakisubukang muli.';

  @override
  String get snackSendCodeFailed =>
      'Hindi maipadala ang code. Suriin ang iyong koneksyon at subukang muli.';

  @override
  String get snackEmptyFolder => 'Walang laman na folder';

  @override
  String get snackEmptyFolderBody =>
      'Walang nakitang mga file sa napiling folder.';

  @override
  String get snackFolderUnsupported => 'Hindi suportado';

  @override
  String get snackFolderUnsupportedBody =>
      'Hindi available ang pag-upload ng folder sa platform na ito.';

  @override
  String get snackFolderReadError => 'Hindi mabasa ang napiling folder.';

  @override
  String get snackLimitReached => 'Naabot na ang limitasyon';

  @override
  String get snackLimitFilesBody =>
      'Ang ilang mga file ay hindi naidagdag dahil sa laki o mga limitasyon sa bilang ng file.';

  @override
  String get snackFreePlanLimit =>
      'Nagbibigay-daan ang libreng plano ng hanggang 5GB bawat paglipat. Mangyaring alisin ang ilang mga file o mag-upgrade.';

  @override
  String get snackSignInEmail =>
      'Mangyaring mag-sign in upang ipadala sa pamamagitan ng email.';

  @override
  String get snackUploadStartFailed => 'Hindi masimulan ang pag-upload.';

  @override
  String get snackVerifyEnterCode =>
      'Ilagay ang 4-digit na code mula sa iyong email.';

  @override
  String get snackVerifyInvalid =>
      'Di-wasto o nag-expire na code. Tingnan ang email at subukang muli.';

  @override
  String get snackVerifyResendFailed =>
      'Hindi maipadalang muli ang code. Subukan muli.';

  @override
  String get snackDownloadComplete => 'Kumpleto na ang pag-download';

  @override
  String snackDownloadSaved(String filename) {
    return 'Na-save ang \"$filename\" sa Downloads';
  }

  @override
  String get snackDownloadFailed => 'Nabigo ang pag-download';

  @override
  String get snackSaved => 'Nai-save';

  @override
  String get snackServerUrlUpdated =>
      'Na-update ang URL ng server. I-restart ang app para mag-apply.';

  @override
  String get snackStoreError => 'Error sa tindahan';

  @override
  String get snackMissingProducts => 'Mga nawawalang produkto';

  @override
  String get snackStoreUnavailable => 'Hindi available ang tindahan';

  @override
  String get snackStoreUnavailableBody =>
      'Ang mga in-app na pagbili ay hindi available sa device na ito.';

  @override
  String get snackProductNotLoaded => 'Hindi pa nalo-load ang produkto.';

  @override
  String get snackRestoreStarted => 'Nagsimula ang pagpapanumbalik';

  @override
  String get snackRestoreStartedBody => 'Sinusuri namin ang iyong mga binili.';

  @override
  String get snackRestoreFailed => 'Nabigo ang pag-restore';

  @override
  String get snackProcessing => 'Pinoproseso';

  @override
  String get snackPleaseWait => 'Mangyaring maghintay…';

  @override
  String get snackSuccess => 'Tagumpay';

  @override
  String get snackPurchaseCompleted => 'Nakumpleto ang pagbili.';

  @override
  String get snackPurchaseError => 'Error sa pagbili';

  @override
  String get snackPurchaseFailed => 'Nabigo ang pagbili.';

  @override
  String get snackCanceled => 'Kinansela';

  @override
  String get snackPurchaseCanceled => 'Kinansela ang pagbili.';

  @override
  String get snackUpload => 'Mag-upload';

  @override
  String get snackVerify => 'I-verify';

  @override
  String get doNotExpire => 'Huwag mag-expire';

  @override
  String get hourSingular => 'oras';

  @override
  String get hourPlural => 'oras';

  @override
  String get daySingular => 'araw';

  @override
  String get dayPlural => 'araw';

  @override
  String get emailAddressLabel => 'EMAIL ADDRESS';

  @override
  String get passwordLabelCaps => 'PASSWORD';

  @override
  String get confirmPasswordLabelCaps => 'KUMPIRMA ANG PASSWORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'TRANSFER LINK O ID';

  @override
  String get howToReceive => 'PAANO MAKATANGGAP';

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
  String get planAdsTitle => 'Plano ng Mga Ad';

  @override
  String get planAdsBullet1 => 'Access sa ads free app';

  @override
  String get planAdsBullet2 => 'Alisin ang lahat ng ad';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Magpadala ng mga file hanggang sa 20GB';

  @override
  String get planProBullet2 => 'Mabilis na Upload';

  @override
  String get planPremiumTitle => 'Premium na Plano';

  @override
  String get planPremiumBullet1 => 'Magpadala ng mga file hanggang sa 100GB';

  @override
  String get planPremiumBullet2 => 'Sobrang bilis ng upload';

  @override
  String get planSubscriptionDisclaimer =>
      'Walang panahon ng pagsubok — kailangan ng subscription para magamit ang karagdagang functionality ng app. Sisingilin ka kaagad. Maaari kang magkansela anumang oras.';

  @override
  String get perMonth => '/ buwan';

  @override
  String get perYear => '/ taon';

  @override
  String get snackConnectionProblem =>
      'Problema sa koneksyon. Pakisubukang muli.';

  @override
  String get networkTitle => 'Network';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Mga file: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Ngayon · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Kahapon · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d ang nakalipas · $time';
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
    return '$sent / $total • $remaining kaliwa';
  }

  @override
  String get loadingShort => 'Naglo-load…';

  @override
  String get colorPaletteTitle => 'Palette ng Kulay';

  @override
  String get colorPaletteSectionBackgrounds => 'Mga background (ink scale)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Pangunahin';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Borders at Salamin';

  @override
  String get colorPaletteSectionSemantic => 'Semantiko';

  @override
  String get colorPaletteSectionLive => 'Live na Tema (kasalukuyan)';

  @override
  String get colorPaletteActiveHint => '★ = aktibong ginagamit sa mga screen';

  @override
  String get colorPaletteCopyHint =>
      'Pindutin nang matagal ang anumang swatch upang kopyahin ang hex na halaga nito.';

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
  String get settingsAppBrand => 'Ibahagi ang Malaki\nMga Video File';

  @override
  String get loginEmailPasswordPrompt =>
      'Ilagay ang iyong email at password para mag-sign in.';

  @override
  String get forgotPassword => 'Nakalimutan ang password?';

  @override
  String get forgotPasswordTitle => 'I-reset ang password';

  @override
  String get forgotPasswordBody =>
      'Ilagay ang iyong account email at magpapadala kami ng reset code.';

  @override
  String get forgotPasswordSubmit => 'Magpadala ng reset code';

  @override
  String get resetPasswordTitle => 'Lumikha ng bagong password';

  @override
  String get resetPasswordBody =>
      'Ilagay ang 6 na digit na code mula sa iyong email at pumili ng bagong password.';

  @override
  String get resetPasswordSubmit => 'I-update ang password';

  @override
  String get snackPasswordResetSent => 'Ipinadala ang reset code';

  @override
  String get snackPasswordResetSentBody =>
      'Tingnan ang iyong email para sa isang 6 na digit na reset code.';

  @override
  String get snackPasswordResetFailed =>
      'Hindi maipadala ang reset code. Subukan muli.';

  @override
  String get snackPasswordUpdated => 'Na-update ang password';

  @override
  String get snackPasswordUpdatedBody =>
      'Mag-sign in gamit ang iyong bagong password.';

  @override
  String get snackPasswordResetInvalid =>
      'Di-wasto o nag-expire na reset code.';

  @override
  String get otpDigitLabel => '6-DIGIT CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count higit pang mga file';
  }
}
