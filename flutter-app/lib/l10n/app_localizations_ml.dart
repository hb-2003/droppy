// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'വലിയ വീഡിയോ ഫയലുകൾ പങ്കിടുക';

  @override
  String get heroAccent => 'തൽക്ഷണം.';

  @override
  String get heroTitle => 'കനത്ത ഫയലുകൾ അയയ്ക്കുക';

  @override
  String get splashLoading => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get navSend => 'ഡാഷ്ബോർഡ്';

  @override
  String get navHome => 'വീട്';

  @override
  String get navHistory => 'ചരിത്രം';

  @override
  String get navReceive => 'സ്വീകരിക്കുക';

  @override
  String get navPlans => 'പദ്ധതികൾ';

  @override
  String get navDownload => 'ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get navSettings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get modeLink => 'ഒരു ലിങ്ക് നേടുക';

  @override
  String get modeEmail => 'ഇമെയിൽ വഴി അയയ്ക്കുക';

  @override
  String get modeWifi => 'Wi‑Fi';

  @override
  String get modePc => 'PC';

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
  String get pickFiles => 'ഫയലുകൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get pickFolder => 'ഫോൾഡർ തിരഞ്ഞെടുക്കുക';

  @override
  String get emailFrom => 'നിങ്ങളുടെ ഇമെയിൽ';

  @override
  String get mailFromUsesAccount =>
      'നിങ്ങളുടെ സൈൻ ഇൻ ചെയ്ത ഇമെയിൽ ഉപയോഗിക്കുന്നു.';

  @override
  String get recipientEmailsHelper =>
      'ഒന്നിലധികം സ്വീകർത്താക്കൾ: കോമകളോ അർദ്ധവിരാമങ്ങളോ സ്‌പെയ്‌സുകളോ ഉപയോഗിച്ച് വേർതിരിക്കുക.';

  @override
  String get emailTo => 'സ്വീകർത്താവിൻ്റെ ഇമെയിൽ';

  @override
  String get messageOptional => 'സന്ദേശം (ഓപ്ഷണൽ)';

  @override
  String get passwordOptional => 'പാസ്‌വേഡ് (ഓപ്ഷണൽ)';

  @override
  String get destructAfterDownload => 'ഡൗൺലോഡ് ചെയ്ത ശേഷം ഇല്ലാതാക്കുക';

  @override
  String get destructNo => 'ലഭ്യമായി സൂക്ഷിക്കുക';

  @override
  String get sendButton => 'അയക്കുക';

  @override
  String get uploading => 'അപ്‌ലോഡ് ചെയ്യുന്നു...';

  @override
  String get uploadComplete => 'ചെയ്തു';

  @override
  String get shareLinkTitle => 'നിങ്ങളുടെ ലിങ്ക്';

  @override
  String get copyLink => 'ലിങ്ക് പകർത്തുക';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get shareQrCode => 'QR കോഡ് പങ്കിടുക';

  @override
  String get uploadMore => 'മറ്റൊന്ന് അയയ്ക്കുക';

  @override
  String get emailSentTitle => 'ഇമെയിലുകൾ അയച്ചു';

  @override
  String get verifyEmailTitle => 'നിങ്ങളുടെ ഇമെയിൽ പരിശോധിക്കുക';

  @override
  String get verifyCodeHint => 'നിങ്ങളുടെ ഇമെയിലിൽ നിന്നുള്ള കോഡ് നൽകുക';

  @override
  String get verifySubmit => 'സ്ഥിരീകരിക്കുക';

  @override
  String get verifyResendCode => 'കോഡ് വീണ്ടും അയയ്‌ക്കുക';

  @override
  String get verifyCodeSent =>
      'നിങ്ങളുടെ ഇമെയിലിലേക്ക് ഒരു പുതിയ സ്ഥിരീകരണ കോഡ് അയച്ചു.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'സ്ഥിരീകരണ ഇമെയിൽ അയച്ചിട്ടുണ്ടാകില്ല';

  @override
  String get verifyEmailSmtpWarningBody =>
      'സെർവറിന് ഡെലിവറി സ്ഥിരീകരിക്കാൻ കഴിഞ്ഞില്ല (പലപ്പോഴും SMTP തെറ്റായി ക്രമീകരിച്ചിരിക്കുന്നു). അഡ്‌മിൻ പാനലിലെ മെയിൽ ക്രമീകരണം പരിശോധിക്കാൻ നിങ്ങളുടെ സൈറ്റ് അഡ്‌മിനോട് ആവശ്യപ്പെടുക, തുടർന്ന് കോഡ് വീണ്ടും അയയ്‌ക്കുക ടാപ്പ് ചെയ്യുക.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'അത് എത്തിയില്ലെങ്കിൽ: ജങ്ക്/സ്പാം, പ്രമോഷനുകൾ എന്നിവ പരിശോധിക്കുക, ഒരു മിനിറ്റ് കാത്തിരിക്കുക, $email എന്നതിന് അക്ഷരത്തെറ്റുകൾ ഇല്ലെന്ന് സ്ഥിരീകരിക്കുക, തുടർന്ന് വീണ്ടും അയയ്‌ക്കുക ടാപ്പ് ചെയ്യുക.';
  }

  @override
  String get loginTitle => 'സൈൻ ഇൻ';

  @override
  String get signupHint =>
      'നിങ്ങളുടെ സൈറ്റ് അക്കൗണ്ട് ഇമെയിലും പാസ്‌വേഡും ഉപയോഗിക്കുക.';

  @override
  String get emailHint => 'ഇമെയിൽ';

  @override
  String get passwordHint => 'രഹസ്യവാക്ക്';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get signIn => 'സൈൻ ഇൻ';

  @override
  String get downloadIdHint => 'ഐഡി കൈമാറുക';

  @override
  String get privateIdHint => 'സ്വകാര്യ ഐഡി (ഓപ്ഷണൽ)';

  @override
  String get fetchTransfer => 'തുറന്ന കൈമാറ്റം';

  @override
  String get downloadFile => 'ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get unlockDownload => 'ഡൗൺലോഡ് അൺലോക്ക് ചെയ്യുക';

  @override
  String get downloadSaved => 'ഡൗൺലോഡുകളിലേക്ക് സംരക്ഷിച്ചു';

  @override
  String get errorGeneric => 'എന്തോ കുഴപ്പം സംഭവിച്ചു';

  @override
  String get errorNetwork => 'നെറ്റ്‌വർക്ക് പിശക്';

  @override
  String get errorBadResponse => 'അപ്രതീക്ഷിത സെർവർ പ്രതികരണം';

  @override
  String get termsAccept => 'ഞാൻ നിബന്ധനകൾ അംഗീകരിക്കുന്നു';

  @override
  String get settingsApiUrl => 'പൊതു സൈറ്റ് URL';

  @override
  String get settingsAccount => 'അക്കൗണ്ട്';

  @override
  String get settingsAppearance => 'രൂപഭാവം';

  @override
  String get settingsTheme => 'തീം';

  @override
  String get themeSystem => 'സിസ്റ്റം';

  @override
  String get themeLight => 'വെളിച്ചം';

  @override
  String get themeDark => 'ഇരുട്ട്';

  @override
  String get settingsSignedIn => 'നിങ്ങൾ സൈൻ ഇൻ ചെയ്‌തു.';

  @override
  String get settingsSignedOut => 'നിങ്ങൾ സൈൻ ഇൻ ചെയ്തിട്ടില്ല.';

  @override
  String get settingsOpenWebsite => 'വെബ്സൈറ്റ് തുറക്കുക';

  @override
  String get signUp => 'സൈൻ അപ്പ് ചെയ്യുക';

  @override
  String get settingsLinks => 'ലിങ്കുകൾ';

  @override
  String get privacyPolicy => 'സ്വകാര്യതാ നയം';

  @override
  String get termsOfService => 'സേവന നിബന്ധനകൾ';

  @override
  String get about => 'കുറിച്ച്';

  @override
  String get moreApps => 'കൂടുതൽ ആപ്പുകൾ';

  @override
  String get settingsLanguage => 'ഭാഷ';

  @override
  String get languageEnglish => 'ഇംഗ്ലീഷ്';

  @override
  String get languageHindi => 'ഹിന്ദി';

  @override
  String get logout => 'പുറത്തുകടക്കുക';

  @override
  String get deleteAccount => 'അക്കൗണ്ട് ഇല്ലാതാക്കുക';

  @override
  String get deleteAccountConfirmTitle => 'നിങ്ങളുടെ അക്കൗണ്ട് ഇല്ലാതാക്കണോ?';

  @override
  String get deleteAccountConfirmBody =>
      'ഇത് നിങ്ങളുടെ അക്കൗണ്ട് ശാശ്വതമായി ഇല്ലാതാക്കുകയും നിങ്ങളെ സൈൻ ഔട്ട് ചെയ്യുകയും ചെയ്യുന്നു. നിങ്ങളുടെ ട്രാൻസ്ഫർ ലിങ്കുകൾ തുടർന്നും പ്രവർത്തിക്കും, എന്നാൽ അവ ഇനി നിങ്ങളുടെ ചരിത്രത്തിൽ ദൃശ്യമാകില്ല.';

  @override
  String get deleteAccountSuccess => 'അക്കൗണ്ട് ഇല്ലാതാക്കി';

  @override
  String get deleteAccountSuccessBody => 'നിങ്ങളുടെ അക്കൗണ്ട് നീക്കം ചെയ്‌തു.';

  @override
  String get deleteAccountFailed => 'അക്കൗണ്ട് ഇല്ലാതാക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get deleteAccountFailedBody =>
      'വീണ്ടും ശ്രമിക്കുക അല്ലെങ്കിൽ പിന്തുണയുമായി ബന്ധപ്പെടുക.';

  @override
  String get maxFilesReached => 'വളരെയധികം ഫയലുകൾ';

  @override
  String get fileTooLarge => 'ഫയൽ വളരെ വലുതാണ്';

  @override
  String get ipLimit => 'ഈ നെറ്റ്‌വർക്കിൽ നിന്ന് വളരെയധികം അപ്‌ലോഡുകൾ';

  @override
  String get fillFields => 'ആവശ്യമുള്ള ഫീൽഡുകൾ പൂരിപ്പിക്കുക';

  @override
  String get invalidEmail => 'അസാധുവായ ഇമെയിൽ';

  @override
  String get maxRecipientsReached => 'വളരെയധികം സ്വീകർത്താക്കൾ';

  @override
  String get loginRequiredTitle => 'സൈൻ ഇൻ ആവശ്യമാണ്';

  @override
  String get loginRequiredBody =>
      'ഈ സെർവറിന് അപ്‌ലോഡ് ചെയ്യാനോ ഡൗൺലോഡ് ചെയ്യാനോ ഒരു അക്കൗണ്ട് ആവശ്യമാണ്.';

  @override
  String get settingsSubtitle => 'ആപ്പ് മുൻഗണനകളും അക്കൗണ്ടും.';

  @override
  String get dropHeavyFile => 'ഒരു കനത്ത ഫയൽ ഇവിടെ ഇടുക.';

  @override
  String upToTotal(String max) {
    return 'മൊത്തം $max വരെ';
  }

  @override
  String get removeAll => 'എല്ലാം നീക്കം ചെയ്യുക';

  @override
  String get addFiles => 'ഫയലുകൾ ചേർക്കുക';

  @override
  String get adding => 'ചേർക്കുന്നു...';

  @override
  String get options => 'ഓപ്ഷനുകൾ';

  @override
  String get selfDestruct => 'ഡൗൺലോഡ് ചെയ്ത ശേഷം സ്വയം നശിപ്പിക്കുക';

  @override
  String get expiry => 'കാലഹരണപ്പെടുന്നു';

  @override
  String get cancelUpload => 'അപ്‌ലോഡ് റദ്ദാക്കുക';

  @override
  String get transferReady => 'കൈമാറ്റം തയ്യാറാണ്!';

  @override
  String get emailSentReady => 'ഇമെയിൽ അയച്ചു!';

  @override
  String get shareRecipientHint =>
      'നിങ്ങളുടെ സ്വീകർത്താവുമായി ഈ ലിങ്ക് പങ്കിടുക.';

  @override
  String get emailSentBody =>
      'നിങ്ങളുടെ സ്വീകർത്താവിനെ(കളെ) ഞങ്ങൾ അറിയിച്ചിട്ടുണ്ട്.';

  @override
  String get scanQr => 'ട്രാൻസ്ഫർ ലിങ്ക് തുറക്കാൻ സ്കാൻ ചെയ്യുക.';

  @override
  String get shareLinkButton => 'ലിങ്ക് പങ്കിടുക';

  @override
  String get verifyFourDigit =>
      'നിങ്ങളുടെ അയച്ചയാളുടെ ഇമെയിലിലേക്ക് അയച്ച 4 അക്ക കോഡ് നൽകുക.';

  @override
  String get starting => 'ആരംഭിക്കുന്നു...';

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
    return '$amount MB ശേഷിക്കുന്നു';
  }

  @override
  String get fillField => 'ദയവായി ഈ ഫീൽഡ് പൂരിപ്പിക്കുക.';

  @override
  String get enterValidEmail => 'സാധുവായ ഒരു ഇമെയിൽ നൽകുക.';

  @override
  String get message => 'സന്ദേശം';

  @override
  String get recipientEmail => 'സ്വീകർത്താവിൻ്റെ ഇമെയിൽ';

  @override
  String get active => 'സജീവമാണ്';

  @override
  String get expired => 'കാലഹരണപ്പെട്ടു';

  @override
  String get historyTitle => 'എൻ്റെ കൈമാറ്റങ്ങൾ';

  @override
  String get signInToSeeTransfers =>
      'നിങ്ങളുടെ കൈമാറ്റങ്ങൾ കാണാൻ സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get signInTransfersBody =>
      'നിങ്ങളുടെ അക്കൗണ്ടിലേക്ക് ട്രാൻസ്ഫറുകൾ ലിങ്ക് ചെയ്യാൻ ഞങ്ങൾ നിങ്ങളുടെ ഇമെയിൽ ഉപയോഗിക്കുന്നു - പാസ്‌വേഡ് ആവശ്യമില്ല.';

  @override
  String get couldNotLoadTransfers => 'കൈമാറ്റങ്ങൾ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get noTransfersYet => 'ഇതുവരെ കൈമാറ്റങ്ങളൊന്നുമില്ല';

  @override
  String get noTransfersBody =>
      'നിങ്ങൾ ഒരു ഫയൽ അയച്ചുകഴിഞ്ഞാൽ, അത് ഇവിടെ ദൃശ്യമാകും.';

  @override
  String get transferDetails => 'വിശദാംശങ്ങൾ കൈമാറുക';

  @override
  String get filesSection => 'ഫയലുകൾ';

  @override
  String get receiveTitle => 'ഫയലുകൾ സ്വീകരിക്കുക';

  @override
  String get receiveSubtitle =>
      'ഫയലുകൾ ഡൗൺലോഡ് ചെയ്യാൻ ഒരു ട്രാൻസ്ഫർ ലിങ്ക് ഒട്ടിക്കുക.';

  @override
  String get pasteTooltip => 'ഒട്ടിക്കുക';

  @override
  String get findTransfer => 'കൈമാറ്റം കണ്ടെത്തുക';

  @override
  String get receiveScanQr => 'QR സ്കാൻ ചെയ്യുക';

  @override
  String get receiveScanQrTitle => 'കൈമാറ്റം QR സ്കാൻ ചെയ്യുക';

  @override
  String get receiveScanQrHint => 'ഫ്രെയിമിനുള്ളിൽ QR കോഡ് വിന്യസിക്കുക.';

  @override
  String get receiveScanQrInvalid =>
      'ഈ QR കോഡ് ഒരു സാധുവായ ട്രാൻസ്ഫർ ലിങ്ക് അല്ല.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR കോഡുകൾ സ്കാൻ ചെയ്യുന്നതിന് ക്യാമറ ആക്സസ് ആവശ്യമാണ്.';

  @override
  String get receiveStepGetLink => 'ലിങ്ക് നേടുക';

  @override
  String get receiveStepGetLinkBody =>
      'നിങ്ങളുമായി ട്രാൻസ്ഫർ ലിങ്ക് പങ്കിടാൻ അയച്ചയാളോട് ആവശ്യപ്പെടുക.';

  @override
  String get receiveStepPaste => 'ഒട്ടിക്കുക & കണ്ടെത്തുക';

  @override
  String get receiveStepPasteBody =>
      'മുകളിലെ ലിങ്ക് ഒട്ടിച്ച് \"കൈമാറ്റം കണ്ടെത്തുക\" ടാപ്പ് ചെയ്യുക.';

  @override
  String get receiveStepDownload => 'ഫയലുകൾ ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get receiveStepDownloadBody =>
      'ഫയൽ വിശദാംശങ്ങൾ കാണുക, എല്ലാം ഒരേസമയം ഡൗൺലോഡ് ചെയ്യുക.';

  @override
  String get lookingUpTransfer => 'കൈമാറ്റത്തിനായി നോക്കുന്നു...';

  @override
  String get transferNotFound =>
      'കൈമാറ്റം കണ്ടെത്തിയില്ല. ലിങ്ക് പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get transferExpired => 'ഈ കൈമാറ്റം കാലഹരണപ്പെട്ടു, ഇനി ലഭ്യമല്ല.';

  @override
  String get transferLoginRequired =>
      'ഈ കൈമാറ്റം ആക്സസ് ചെയ്യുന്നതിന് സൈൻ ഇൻ ചെയ്യേണ്ടതുണ്ട്.';

  @override
  String get transferBadResponse =>
      'അപ്രതീക്ഷിത സെർവർ പ്രതികരണം. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String get transferNetworkError =>
      'നെറ്റ്‌വർക്ക് പിശക്. നിങ്ങളുടെ ഇൻ്റർനെറ്റ് കണക്ഷൻ പരിശോധിക്കുക.';

  @override
  String transferLoadFailed(String error) {
    return 'കൈമാറ്റം ലോഡ് ചെയ്യാനായില്ല: $error';
  }

  @override
  String get passwordProtected => 'പാസ്‌വേഡ് പരിരക്ഷിച്ചിരിക്കുന്നു';

  @override
  String get enterPassword => 'പാസ്‌വേഡ് നൽകുക';

  @override
  String get unlock => 'അൺലോക്ക് ചെയ്യുക';

  @override
  String get downloading => 'ഡൗൺലോഡ് ചെയ്യുന്നു...';

  @override
  String get downloadAllFiles => 'എല്ലാ ഫയലുകളും ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get downloadSingleFile => 'ഫയൽ ഡൗൺലോഡ് ചെയ്യുക';

  @override
  String get receiveAnother => 'മറ്റൊരു കൈമാറ്റം സ്വീകരിക്കുക';

  @override
  String get plansTitle => 'പദ്ധതികൾ';

  @override
  String get plansSubtitle =>
      'പരസ്യങ്ങൾ നീക്കം ചെയ്യാനും വലിയ ഫയലുകൾ അയയ്ക്കാനും അപ്‌ഗ്രേഡ് ചെയ്യുക.';

  @override
  String get storeUnavailable => 'സ്റ്റോർ ലഭ്യമല്ല';

  @override
  String get storeUnavailableBody => 'ഇൻ-ആപ്പ് വാങ്ങലുകൾ ഇപ്പോൾ ലഭ്യമല്ല.';

  @override
  String get storeLoadingPrices =>
      'ആപ്പ് സ്റ്റോറിൽ നിന്ന് വിലകൾ ലോഡ് ചെയ്യുന്നു...';

  @override
  String get storePricesUnavailable => 'വിലകൾ ലഭ്യമല്ല';

  @override
  String get storePricesPartial => 'ചില വിലകൾ ലോഡ് ചെയ്യാൻ കഴിഞ്ഞില്ല';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total സബ്‌സ്‌ക്രിപ്‌ഷൻ ഉൽപ്പന്നങ്ങളുടെ $loaded ലോഡ് ചെയ്തു.';
  }

  @override
  String get storeSetupHint =>
      'ഒരു യഥാർത്ഥ iPhone-ൽ ടെസ്റ്റ് ചെയ്യുക (സിമുലേറ്റർ അല്ല), ഒരു Sandbox Apple ഐഡി ഉപയോഗിക്കുക, കൂടാതെ ആപ്പ് സ്റ്റോറിൽ ഈ ആപ്പിൻ്റെ ബണ്ടിൽ ഐഡിക്ക് കീഴിൽ എല്ലാ 6 സബ്‌സ്‌ക്രിപ്‌ഷനുകളും സൃഷ്‌ടിച്ചിട്ടുണ്ടെന്ന് ഉറപ്പാക്കുക.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/മാസം';
  }

  @override
  String get freeVersionAds =>
      'നിലവിൽ നിങ്ങൾ പരസ്യങ്ങൾക്കൊപ്പം ഞങ്ങളുടെ സൗജന്യ പതിപ്പാണ് ഉപയോഗിക്കുന്നത്';

  @override
  String get restorePurchases => 'വാങ്ങലുകൾ പുനഃസ്ഥാപിക്കുക';

  @override
  String get plansContinue => 'തുടരുക';

  @override
  String get planLinkRestore => 'പുനഃസ്ഥാപിക്കുക';

  @override
  String get termsAndConditions => 'ഉപാധികളും നിബന്ധനകളും';

  @override
  String get createAccountTitle => 'അക്കൗണ്ട് സൃഷ്ടിക്കുക';

  @override
  String get signUpSubtitle =>
      'ഇമെയിലും പാസ്‌വേഡും ഉപയോഗിച്ച് സൈൻ അപ്പ് ചെയ്യുക.';

  @override
  String get confirmPassword => 'പാസ്വേഡ് സ്ഥിരീകരിക്കുക';

  @override
  String get passwordMin8 => 'പാസ്‌വേഡ് (മിനിറ്റ് 8 അക്ഷരങ്ങൾ)';

  @override
  String get alreadyHaveAccount => 'ഇതിനകം ഒരു അക്കൗണ്ട് ഉണ്ടോ?';

  @override
  String get checkEmailTitle => 'നിങ്ങളുടെ പരിശോധിക്കുക\nഇമെയിൽ';

  @override
  String otpSentTo(String email) {
    return 'ഞങ്ങൾ ഒരു 6 അക്ക കോഡ് അയച്ചു\n$email';
  }

  @override
  String get verifyAndSignIn => 'പരിശോധിച്ചുറപ്പിച്ച് സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get didntReceiveCode => 'അത് ലഭിച്ചില്ലേ?';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get otpExpiresHint =>
      '5 മിനിറ്റിനുള്ളിൽ കോഡ് കാലഹരണപ്പെടും. നിങ്ങളുടെ സ്പാം ഫോൾഡർ കാണുന്നില്ലെങ്കിൽ അത് പരിശോധിക്കുക.';

  @override
  String get snackError => 'പിശക്';

  @override
  String get snackCopied => 'പകർത്തി';

  @override
  String get snackCopiedBody => 'ലിങ്ക് ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get snackWelcome => 'സ്വാഗതം';

  @override
  String get snackAccountCreated => 'അക്കൗണ്ട് സൃഷ്ടിച്ചു';

  @override
  String get snackEnterEmail => 'ദയവായി നിങ്ങളുടെ ഇമെയിൽ നൽകുക';

  @override
  String get snackEnterPassword => 'ദയവായി നിങ്ങളുടെ പാസ്‌വേഡ് നൽകുക';

  @override
  String get snackInvalidEmail => 'ഇമെയിൽ വിലാസം അസാധുവാണ്';

  @override
  String get snackInvalidCredentials => 'തെറ്റായ ഇമെയിൽ അല്ലെങ്കിൽ പാസ്‌വേഡ്';

  @override
  String get snackPasswordMin8 =>
      'പാസ്‌വേഡിന് കുറഞ്ഞത് 8 പ്രതീകങ്ങൾ ഉണ്ടായിരിക്കണം';

  @override
  String get snackPasswordMismatch => 'പാസ്‌വേഡുകൾ പൊരുത്തപ്പെടുന്നില്ല.';

  @override
  String get snackAccountExists =>
      'അക്കൗണ്ട് ഇതിനകം നിലവിലുണ്ട്. ദയവായി സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get snackSignupFailed =>
      'അക്കൗണ്ട് സൃഷ്ടിക്കാൻ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackEnterOtp => 'ദയവായി 6 അക്ക കോഡ് നൽകുക';

  @override
  String get snackOtpExpired => 'കോഡ് കാലഹരണപ്പെട്ടു';

  @override
  String get snackOtpExpiredBody => 'ദയവായി ഒരു പുതിയ കോഡ് അഭ്യർത്ഥിക്കുക.';

  @override
  String get snackInvalidCode => 'അസാധുവായ കോഡ്';

  @override
  String get snackInvalidCodeBody =>
      'കോഡ് തെറ്റാണ്. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackSendCodeFailed =>
      'കോഡ് അയയ്ക്കാൻ കഴിഞ്ഞില്ല. നിങ്ങളുടെ കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackEmptyFolder => 'ശൂന്യമായ ഫോൾഡർ';

  @override
  String get snackEmptyFolderBody =>
      'തിരഞ്ഞെടുത്ത ഫോൾഡറിൽ ഫയലുകളൊന്നും കണ്ടെത്തിയില്ല.';

  @override
  String get snackFolderUnsupported => 'പിന്തുണയ്ക്കുന്നില്ല';

  @override
  String get snackFolderUnsupportedBody =>
      'ഈ പ്ലാറ്റ്‌ഫോമിൽ ഫോൾഡർ അപ്‌ലോഡ് ലഭ്യമല്ല.';

  @override
  String get snackFolderReadError => 'തിരഞ്ഞെടുത്ത ഫോൾഡർ വായിക്കാൻ കഴിഞ്ഞില്ല.';

  @override
  String get snackLimitReached => 'പരിധി എത്തി';

  @override
  String get snackLimitFilesBody =>
      'വലുപ്പമോ ഫയലുകളുടെ എണ്ണത്തിൻ്റെ പരിധിയോ കാരണം ചില ഫയലുകൾ ചേർത്തിട്ടില്ല.';

  @override
  String get snackFreePlanLimit =>
      'ഒരു ട്രാൻസ്ഫറിന് 5GB വരെ സൗജന്യ പ്ലാൻ അനുവദിക്കുന്നു. ദയവായി ചില ഫയലുകൾ നീക്കം ചെയ്യുക അല്ലെങ്കിൽ നവീകരിക്കുക.';

  @override
  String get snackSignInEmail => 'ഇമെയിൽ വഴി അയയ്ക്കാൻ സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get snackUploadStartFailed => 'അപ്‌ലോഡ് ആരംഭിക്കാനായില്ല.';

  @override
  String get snackVerifyEnterCode =>
      'നിങ്ങളുടെ ഇമെയിലിൽ നിന്നുള്ള 4 അക്ക കോഡ് നൽകുക.';

  @override
  String get snackVerifyInvalid =>
      'അസാധുവായ അല്ലെങ്കിൽ കാലഹരണപ്പെട്ട കോഡ്. ഇമെയിൽ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackVerifyResendFailed =>
      'കോഡ് വീണ്ടും അയയ്ക്കാൻ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackDownloadComplete => 'ഡൗൺലോഡ് പൂർത്തിയായി';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" ഡൗൺലോഡുകളിലേക്ക് സംരക്ഷിച്ചു';
  }

  @override
  String get snackDownloadFailed => 'ഡൗൺലോഡ് പരാജയപ്പെട്ടു';

  @override
  String get snackSaved => 'സംരക്ഷിച്ചു';

  @override
  String get snackServerUrlUpdated =>
      'സെർവർ URL അപ്ഡേറ്റ് ചെയ്തു. അപേക്ഷിക്കാൻ ആപ്പ് റീസ്‌റ്റാർട്ട് ചെയ്യുക.';

  @override
  String get snackStoreError => 'സ്റ്റോർ പിശക്';

  @override
  String get snackMissingProducts => 'ഉൽപ്പന്നങ്ങൾ നഷ്‌ടമായി';

  @override
  String get snackStoreUnavailable => 'സ്റ്റോർ ലഭ്യമല്ല';

  @override
  String get snackStoreUnavailableBody =>
      'ഈ ഉപകരണത്തിൽ ഇൻ-ആപ്പ് വാങ്ങലുകൾ ലഭ്യമല്ല.';

  @override
  String get snackProductNotLoaded => 'ഉൽപ്പന്നം ഇതുവരെ ലോഡ് ചെയ്തിട്ടില്ല.';

  @override
  String get snackRestoreStarted => 'പുനഃസ്ഥാപിക്കൽ ആരംഭിച്ചു';

  @override
  String get snackRestoreStartedBody =>
      'ഞങ്ങൾ നിങ്ങളുടെ വാങ്ങലുകൾ പരിശോധിക്കുന്നു.';

  @override
  String get snackRestoreFailed => 'പുനഃസ്ഥാപിക്കാനായില്ല';

  @override
  String get snackProcessing => 'പ്രോസസ്സിംഗ്';

  @override
  String get snackPleaseWait => 'കാത്തിരിക്കൂ…';

  @override
  String get snackSuccess => 'വിജയം';

  @override
  String get snackPurchaseCompleted => 'വാങ്ങൽ പൂർത്തിയായി.';

  @override
  String get snackPurchaseError => 'വാങ്ങൽ പിശക്';

  @override
  String get snackPurchaseFailed => 'വാങ്ങൽ പരാജയപ്പെട്ടു.';

  @override
  String get snackCanceled => 'റദ്ദാക്കി';

  @override
  String get snackPurchaseCanceled => 'വാങ്ങൽ റദ്ദാക്കി.';

  @override
  String get snackUpload => 'അപ്‌ലോഡ് ചെയ്യുക';

  @override
  String get snackVerify => 'സ്ഥിരീകരിക്കുക';

  @override
  String get doNotExpire => 'കാലഹരണപ്പെടരുത്';

  @override
  String get hourSingular => 'മണിക്കൂർ';

  @override
  String get hourPlural => 'മണിക്കൂറുകൾ';

  @override
  String get daySingular => 'ദിവസം';

  @override
  String get dayPlural => 'ദിവസങ്ങൾ';

  @override
  String get emailAddressLabel => 'ഇമെയിൽ വിലാസം';

  @override
  String get passwordLabelCaps => 'പാസ്‌വേഡ്';

  @override
  String get confirmPasswordLabelCaps => 'പാസ്വേഡ് സ്ഥിരീകരിക്കുക';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ലിങ്ക് അല്ലെങ്കിൽ ഐഡി കൈമാറുക';

  @override
  String get howToReceive => 'എങ്ങനെ സ്വീകരിക്കാം';

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
  String get planAdsTitle => 'പരസ്യ പദ്ധതി';

  @override
  String get planAdsBullet1 => 'പരസ്യരഹിത ആപ്പിലേക്കുള്ള ആക്സസ്';

  @override
  String get planAdsBullet2 => 'എല്ലാ പരസ്യങ്ങളും നീക്കം ചെയ്യുക';

  @override
  String get planProTitle => 'പ്രോ പ്ലാൻ';

  @override
  String get planProBullet1 => '20GB വരെ ഫയലുകൾ അയയ്ക്കുക';

  @override
  String get planProBullet2 => 'വേഗത്തിലുള്ള അപ്‌ലോഡ്';

  @override
  String get planPremiumTitle => 'പ്രീമിയം പ്ലാൻ';

  @override
  String get planPremiumBullet1 => '100GB വരെ ഫയലുകൾ അയയ്ക്കുക';

  @override
  String get planPremiumBullet2 => 'സൂപ്പർ ഫാസ്റ്റ് അപ്‌ലോഡ്';

  @override
  String get planSubscriptionDisclaimer =>
      'ട്രയൽ കാലയളവില്ല - അധിക ആപ്പ് ഫംഗ്‌ഷണാലിറ്റി ഉപയോഗിക്കുന്നതിന് സബ്‌സ്‌ക്രിപ്‌ഷൻ ആവശ്യമില്ല. നിങ്ങളിൽ നിന്ന് ഉടനടി നിരക്ക് ഈടാക്കും. നിങ്ങൾക്ക് എപ്പോൾ വേണമെങ്കിലും റദ്ദാക്കാം.';

  @override
  String get perMonth => '/ മാസം';

  @override
  String get perYear => '/ വർഷം';

  @override
  String get snackConnectionProblem =>
      'കണക്ഷൻ പ്രശ്നം. ദയവായി വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get networkTitle => 'നെറ്റ്വർക്ക്';

  @override
  String transferIdLabel(String id) {
    return 'ഐഡി: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ഫയലുകൾ: $count · $size ബൈറ്റുകൾ';
  }

  @override
  String todayAt(String time) {
    return 'ഇന്ന് · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'ഇന്നലെ · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysദിവസം മുമ്പ് · $time';
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
    return '$sent / $total • $remaining അവശേഷിക്കുന്നു';
  }

  @override
  String get loadingShort => 'ലോഡ് ചെയ്യുന്നു...';

  @override
  String get colorPaletteTitle => 'വർണ്ണ പാലറ്റ്';

  @override
  String get colorPaletteSectionBackgrounds => 'പശ്ചാത്തലങ്ങൾ (മഷി സ്കെയിൽ)';

  @override
  String get colorPaletteSectionAccent => 'ആക്സൻ്റ് / പ്രാഥമികം';

  @override
  String get colorPaletteSectionText => 'വാചകം';

  @override
  String get colorPaletteSectionBorders => 'ബോർഡറുകളും ഗ്ലാസും';

  @override
  String get colorPaletteSectionSemantic => 'സെമാൻ്റിക്';

  @override
  String get colorPaletteSectionLive => 'ലൈവ് തീം (നിലവിലെ)';

  @override
  String get colorPaletteActiveHint =>
      '★ = സ്ക്രീനുകളിൽ സജീവമായി ഉപയോഗിക്കുന്നു';

  @override
  String get colorPaletteCopyHint =>
      'ഏതെങ്കിലും സ്വാച്ചിൻ്റെ ഹെക്‌സ് മൂല്യം പകർത്താൻ ദീർഘനേരം അമർത്തുക.';

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
  String get settingsAppBrand => 'വലുതായി പങ്കിടുക\nവീഡിയോ ഫയലുകൾ';

  @override
  String get loginEmailPasswordPrompt =>
      'സൈൻ ഇൻ ചെയ്യാൻ നിങ്ങളുടെ ഇമെയിലും പാസ്‌വേഡും നൽകുക.';

  @override
  String get forgotPassword => 'പാസ്വേഡ് മറന്നോ?';

  @override
  String get forgotPasswordTitle => 'പാസ്‌വേഡ് പുനഃസജ്ജമാക്കുക';

  @override
  String get forgotPasswordBody =>
      'നിങ്ങളുടെ അക്കൗണ്ട് ഇമെയിൽ നൽകുക, ഞങ്ങൾ ഒരു റീസെറ്റ് കോഡ് അയയ്ക്കും.';

  @override
  String get forgotPasswordSubmit => 'റീസെറ്റ് കോഡ് അയയ്ക്കുക';

  @override
  String get resetPasswordTitle => 'പുതിയ പാസ്‌വേഡ് സൃഷ്‌ടിക്കുക';

  @override
  String get resetPasswordBody =>
      'നിങ്ങളുടെ ഇമെയിലിൽ നിന്നുള്ള 6-അക്ക കോഡ് നൽകി ഒരു പുതിയ പാസ്‌വേഡ് തിരഞ്ഞെടുക്കുക.';

  @override
  String get resetPasswordSubmit => 'പാസ്‌വേഡ് അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String get snackPasswordResetSent => 'റീസെറ്റ് കോഡ് അയച്ചു';

  @override
  String get snackPasswordResetSentBody =>
      '6 അക്ക റീസെറ്റ് കോഡിനായി നിങ്ങളുടെ ഇമെയിൽ പരിശോധിക്കുക.';

  @override
  String get snackPasswordResetFailed =>
      'റീസെറ്റ് കോഡ് അയയ്ക്കാൻ കഴിഞ്ഞില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get snackPasswordUpdated => 'പാസ്‌വേഡ് അപ്‌ഡേറ്റ് ചെയ്‌തു';

  @override
  String get snackPasswordUpdatedBody =>
      'നിങ്ങളുടെ പുതിയ പാസ്‌വേഡ് ഉപയോഗിച്ച് സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get snackPasswordResetInvalid =>
      'അസാധുവായ അല്ലെങ്കിൽ കാലഹരണപ്പെട്ട റീസെറ്റ് കോഡ്.';

  @override
  String get otpDigitLabel => '6-അക്ക കോഡ്';

  @override
  String receiveMoreFiles(int count) {
    return '+$count കൂടുതൽ ഫയലുകൾ';
  }
}
