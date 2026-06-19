// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Том хэмжээний видео файлуудыг хуваалцах';

  @override
  String get heroAccent => 'тэр даруй.';

  @override
  String get heroTitle => 'Хүнд файл илгээх';

  @override
  String get splashLoading => 'Ачааж байна…';

  @override
  String get navSend => 'Хяналтын самбар';

  @override
  String get navHome => 'Гэр';

  @override
  String get navHistory => 'Түүх';

  @override
  String get navReceive => 'Хүлээн авах';

  @override
  String get navPlans => 'Төлөвлөгөө';

  @override
  String get navDownload => 'Татаж авах';

  @override
  String get navSettings => 'Тохиргоо';

  @override
  String get modeLink => 'Холбоос авах';

  @override
  String get modeEmail => 'Имэйлээр илгээнэ үү';

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
  String get pickFiles => 'Файлуудыг сонгоно уу';

  @override
  String get pickFolder => 'Фолдер сонгоно уу';

  @override
  String get emailFrom => 'Таны имэйл';

  @override
  String get mailFromUsesAccount => 'Таны нэвтэрсэн имэйлийг ашигладаг.';

  @override
  String get recipientEmailsHelper =>
      'Олон хүлээн авагч: таслал, цэгтэй таслал эсвэл хоосон зайгаар тусгаарлана.';

  @override
  String get emailTo => 'Хүлээн авагчийн имэйл';

  @override
  String get messageOptional => 'Зурвас (заавал биш)';

  @override
  String get passwordOptional => 'Нууц үг (заавал биш)';

  @override
  String get destructAfterDownload => 'Татаж авсны дараа устгана уу';

  @override
  String get destructNo => 'Боломжтой байлгах';

  @override
  String get sendButton => 'Илгээх';

  @override
  String get uploading => 'Байршуулж байна...';

  @override
  String get uploadComplete => 'Дууслаа';

  @override
  String get shareLinkTitle => 'Таны холбоос';

  @override
  String get copyLink => 'Холбоосыг хуулах';

  @override
  String get share => 'Хуваалцах';

  @override
  String get shareQrCode => 'QR кодыг хуваалцах';

  @override
  String get uploadMore => 'Өөрийг илгээ';

  @override
  String get emailSentTitle => 'Имэйл илгээсэн';

  @override
  String get verifyEmailTitle => 'Имэйлээ баталгаажуулна уу';

  @override
  String get verifyCodeHint => 'Имэйлийнхээ кодыг оруулна уу';

  @override
  String get verifySubmit => 'Баталгаажуулах';

  @override
  String get verifyResendCode => 'Кодыг дахин илгээх';

  @override
  String get verifyCodeSent =>
      'Таны имэйл рүү шинэ баталгаажуулах код илгээгдсэн.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Баталгаажуулах имэйл илгээгдээгүй байж магадгүй';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Сервер хүргэлтийг баталгаажуулж чадсангүй (ихэвчлэн SMTP буруу тохируулагдсан байдаг). Сайтын админаас админ самбараас Мэйл тохиргоог шалгахыг хүсээд Код дахин илгээхийг товшино уу.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Хэрэв ирэхгүй бол: \"Хог/Спам\" болон \"Урамшуулал\"-ыг шалгаад, түр хүлээнэ үү, $email-д алдаа байхгүй гэдгийг баталгаажуулаад Дахин илгээхийг товшино уу.';
  }

  @override
  String get loginTitle => 'Нэвтрэх';

  @override
  String get signupHint =>
      'Сайтын бүртгэлийн имэйл болон нууц үгээ ашиглана уу.';

  @override
  String get emailHint => 'Имэйл';

  @override
  String get passwordHint => 'Нууц үг';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get signIn => 'Нэвтрэх';

  @override
  String get downloadIdHint => 'Дамжуулах ID';

  @override
  String get privateIdHint => 'Хувийн ID (заавал биш)';

  @override
  String get fetchTransfer => 'Нээлттэй шилжүүлэг';

  @override
  String get downloadFile => 'Татаж авах';

  @override
  String get unlockDownload => 'Татаж авах түгжээг тайлах';

  @override
  String get downloadSaved => 'Татаж авсан файлд хадгалсан';

  @override
  String get errorGeneric => 'Ямар нэг алдаа гарлаа';

  @override
  String get errorNetwork => 'Сүлжээний алдаа';

  @override
  String get errorBadResponse => 'Серверийн гэнэтийн хариу үйлдэл';

  @override
  String get termsAccept => 'Би болзолыг зөвшөөрч байна';

  @override
  String get settingsApiUrl => 'Олон нийтийн сайтын URL';

  @override
  String get settingsAccount => 'Данс';

  @override
  String get settingsAppearance => 'Гадаад төрх';

  @override
  String get settingsTheme => 'Сэдэв';

  @override
  String get themeSystem => 'Систем';

  @override
  String get themeLight => 'Гэрэл';

  @override
  String get themeDark => 'Харанхуй';

  @override
  String get settingsSignedIn => 'Та нэвтэрсэн байна.';

  @override
  String get settingsSignedOut => 'Та нэвтрээгүй байна.';

  @override
  String get settingsOpenWebsite => 'Вэбсайт нээх';

  @override
  String get signUp => 'Бүртгүүлэх';

  @override
  String get settingsLinks => 'Холбоосууд';

  @override
  String get privacyPolicy => 'Нууцлалын бодлого';

  @override
  String get termsOfService => 'Үйлчилгээний нөхцөл';

  @override
  String get about => 'тухай';

  @override
  String get moreApps => 'Бусад програмууд';

  @override
  String get settingsLanguage => 'Хэл';

  @override
  String get languageEnglish => 'Англи';

  @override
  String get languageHindi => 'Хинди';

  @override
  String get logout => 'Гарах';

  @override
  String get deleteAccount => 'Бүртгэл устгах';

  @override
  String get deleteAccountConfirmTitle => 'Бүртгэлээ устгах уу?';

  @override
  String get deleteAccountConfirmBody =>
      'Энэ нь таны бүртгэлийг бүрмөсөн устгаж, таныг гаргана. Таны шилжүүлгийн холбоосууд ажилласаар байх боловч таны түүхэнд харагдахгүй.';

  @override
  String get deleteAccountSuccess => 'Бүртгэлийг устгасан';

  @override
  String get deleteAccountSuccessBody => 'Таны бүртгэл устгагдсан байна.';

  @override
  String get deleteAccountFailed => 'Бүртгэлийг устгаж чадсангүй';

  @override
  String get deleteAccountFailedBody =>
      'Дахин оролдох эсвэл дэмжлэгтэй холбогдоно уу.';

  @override
  String get maxFilesReached => 'Хэт олон файл';

  @override
  String get fileTooLarge => 'Файл хэт том байна';

  @override
  String get ipLimit => 'Энэ сүлжээнээс хэт олон байршуулалт';

  @override
  String get fillFields => 'Шаардлагатай талбаруудыг бөглөнө үү';

  @override
  String get invalidEmail => 'Буруу имэйл';

  @override
  String get maxRecipientsReached => 'Хэт олон хүлээн авагч';

  @override
  String get loginRequiredTitle => 'Нэвтрэх шаардлагатай';

  @override
  String get loginRequiredBody =>
      'Энэ сервер байршуулах эсвэл татаж авахын тулд бүртгэл шаарддаг.';

  @override
  String get settingsSubtitle => 'Апп тохиргоо болон бүртгэл.';

  @override
  String get dropHeavyFile => 'Хүнд файлыг энд оруулаарай.';

  @override
  String upToTotal(String max) {
    return 'Нийт $max хүртэл';
  }

  @override
  String get removeAll => 'Бүгдийг устга';

  @override
  String get addFiles => 'Файл нэмэх';

  @override
  String get adding => 'Нэмэж байна...';

  @override
  String get options => 'Сонголтууд';

  @override
  String get selfDestruct => 'Татаж авсны дараа өөрийгөө устгах';

  @override
  String get expiry => 'Хугацаа дуусах';

  @override
  String get cancelUpload => 'Байршуулахыг цуцлах';

  @override
  String get transferReady => 'Шилжүүлэх бэлэн боллоо!';

  @override
  String get emailSentReady => 'Имэйл илгээсэн!';

  @override
  String get shareRecipientHint =>
      'Энэ холбоосыг хүлээн авагчтайгаа хуваалцаарай.';

  @override
  String get emailSentBody => 'Бид таны хүлээн авагчид мэдэгдлээ.';

  @override
  String get scanQr => 'Дамжуулах холбоосыг нээхийн тулд сканнердах.';

  @override
  String get shareLinkButton => 'Холбоосыг SHARE';

  @override
  String get verifyFourDigit =>
      'Илгээгчийн имэйл рүү илгээсэн 4 оронтой кодыг оруулна уу.';

  @override
  String get starting => 'Эхэлж байна...';

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
    return '$amount МБ үлдсэн';
  }

  @override
  String get fillField => 'Энэ талбарыг бөглөнө үү.';

  @override
  String get enterValidEmail => 'Хүчинтэй имэйл оруулна уу.';

  @override
  String get message => 'Мессеж';

  @override
  String get recipientEmail => 'Хүлээн авагчийн имэйл';

  @override
  String get active => 'Идэвхтэй';

  @override
  String get expired => 'Хугацаа дууссан';

  @override
  String get historyTitle => 'Миний шилжүүлэг';

  @override
  String get signInToSeeTransfers => 'Шилжүүлгээ харахын тулд нэвтэрнэ үү';

  @override
  String get signInTransfersBody =>
      'Бид таны имэйлийг таны данс руу шилжүүлгийг холбохын тулд ашигладаг - нууц үг шаардлагагүй.';

  @override
  String get couldNotLoadTransfers => 'Шилжүүлгийг ачаалж чадсангүй';

  @override
  String get retry => 'Дахин оролдоно уу';

  @override
  String get noTransfersYet => 'Одоогоор шилжүүлэг байхгүй';

  @override
  String get noTransfersBody =>
      'Файл илгээсний дараа энэ нь энд харагдах болно.';

  @override
  String get transferDetails => 'Шилжүүлгийн дэлгэрэнгүй мэдээлэл';

  @override
  String get filesSection => 'Файлууд';

  @override
  String get receiveTitle => 'Файлуудыг хүлээн авах';

  @override
  String get receiveSubtitle =>
      'Файл татаж авахын тулд дамжуулах холбоосыг буулгана уу.';

  @override
  String get pasteTooltip => 'Буулгах';

  @override
  String get findTransfer => 'Шилжүүлгийг олох';

  @override
  String get receiveScanQr => 'QR сканнердах';

  @override
  String get receiveScanQrTitle => 'QR дамжуулалтыг сканнердах';

  @override
  String get receiveScanQrHint => 'Хүрээн доторх QR кодыг зэрэгцүүлнэ.';

  @override
  String get receiveScanQrInvalid =>
      'Энэ QR код нь шилжүүлэх холбоос биш байна.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR кодыг скан хийхийн тулд камерт хандах шаардлагатай.';

  @override
  String get receiveStepGetLink => 'Холбоосыг аваарай';

  @override
  String get receiveStepGetLinkBody =>
      'Илгээгчээс шилжүүлгийн холбоосыг тантай хуваалцахыг хүс.';

  @override
  String get receiveStepPaste => 'Буулгаж олоорой';

  @override
  String get receiveStepPasteBody =>
      'Дээрх холбоосыг буулгаад \"Шилжүүлгийг олох\" дээр дарна уу.';

  @override
  String get receiveStepDownload => 'Файлуудыг татаж авах';

  @override
  String get receiveStepDownloadBody =>
      'Файлын дэлгэрэнгүйг харж, бүгдийг нэг дор татаж аваарай.';

  @override
  String get lookingUpTransfer => 'Шилжүүлгийг хайж байна...';

  @override
  String get transferNotFound =>
      'Шилжилт олдсонгүй. Холбоосыг шалгаад дахин оролдоно уу.';

  @override
  String get transferExpired =>
      'Энэ шилжүүлгийн хугацаа дууссан бөгөөд цаашид боломжгүй.';

  @override
  String get transferLoginRequired =>
      'Энэ шилжүүлгийг авахын тулд нэвтрэх шаардлагатай.';

  @override
  String get transferBadResponse =>
      'Серверийн гэнэтийн хариу үйлдэл. Холболтоо шалгана уу.';

  @override
  String get transferNetworkError =>
      'Сүлжээний алдаа. Интернет холболтоо шалгана уу.';

  @override
  String transferLoadFailed(String error) {
    return 'Дамжуулалтыг ачаалж чадсангүй: $error';
  }

  @override
  String get passwordProtected => 'Нууц үгээр хамгаалагдсан';

  @override
  String get enterPassword => 'Нууц үгээ оруулна уу';

  @override
  String get unlock => 'Түгжээг тайлах';

  @override
  String get downloading => 'Татаж авч байна…';

  @override
  String get downloadAllFiles => 'Бүх файлыг татаж авах';

  @override
  String get downloadSingleFile => 'Файл татаж авах';

  @override
  String get receiveAnother => 'Өөр шилжүүлгийг хүлээн авна уу';

  @override
  String get plansTitle => 'Төлөвлөгөө';

  @override
  String get plansSubtitle =>
      'Зарыг устгаж, илүү том файл илгээхийн тулд шинэчилнэ үү.';

  @override
  String get storeUnavailable => 'Дэлгүүр ашиглах боломжгүй';

  @override
  String get storeUnavailableBody =>
      'Апп доторх худалдан авалтыг одоогоор хийх боломжгүй.';

  @override
  String get storeLoadingPrices => 'App Store-оос үнийг ачаалж байна...';

  @override
  String get storePricesUnavailable => 'Үнэ боломжгүй';

  @override
  String get storePricesPartial => 'Зарим үнийг ачаалж чадсангүй';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total захиалгын бүтээгдэхүүний $loaded-г ачааллаа.';
  }

  @override
  String get storeSetupHint =>
      'Жинхэнэ iPhone (Симулятор биш) дээр туршиж үзээрэй, Apple ID-г ашиглан хамгаалагдсан хязгаарлагдмал хайрцаг ашиглан бүх 6 захиалгыг энэ аппын багцын ID-ийн дагуу App Store Connect-т бий болгосон эсэхийг шалгаарай.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/сар';
  }

  @override
  String get freeVersionAds =>
      'Одоогоор та манай үнэгүй хувилбарыг зар сурталчилгаатай ашиглаж байна';

  @override
  String get restorePurchases => 'Худалдан авалтыг сэргээх';

  @override
  String get plansContinue => 'Үргэлжлүүлэх';

  @override
  String get planLinkRestore => 'Сэргээх';

  @override
  String get termsAndConditions => 'Нөхцөл, нөхцөл';

  @override
  String get createAccountTitle => 'Бүртгэл үүсгэх';

  @override
  String get signUpSubtitle => 'Имэйл болон нууц үгээр бүртгүүлнэ үү.';

  @override
  String get confirmPassword => 'Нууц үгээ баталгаажуулна уу';

  @override
  String get passwordMin8 => 'Нууц үг (хамгийн багадаа 8 тэмдэгт)';

  @override
  String get alreadyHaveAccount => 'Бүртгэлтэй юу?';

  @override
  String get checkEmailTitle => 'Таныг шалгана уу\nимэйл';

  @override
  String otpSentTo(String email) {
    return 'Бид 6 оронтой код илгээсэн\n$email';
  }

  @override
  String get verifyAndSignIn => 'Баталгаажуулж, нэвтэрнэ үү';

  @override
  String get didntReceiveCode => 'Хүлээн аваагүй юу?';

  @override
  String get tryAgain => 'Дахин оролдоно уу';

  @override
  String get otpExpiresHint =>
      'Кодын хугацаа 5 минутын дараа дуусна. Хэрэв танд харагдахгүй бол спам хавтасаа шалгана уу.';

  @override
  String get snackError => 'Алдаа';

  @override
  String get snackCopied => 'Хуулсан';

  @override
  String get snackCopiedBody => 'Холбоосыг санах ой руу хуулсан';

  @override
  String get snackWelcome => 'Тавтай морил';

  @override
  String get snackAccountCreated => 'Бүртгэл үүсгэсэн';

  @override
  String get snackEnterEmail => 'Имэйлээ оруулна уу';

  @override
  String get snackEnterPassword => 'Нууц үгээ оруулна уу';

  @override
  String get snackInvalidEmail => 'Буруу имэйл хаяг';

  @override
  String get snackInvalidCredentials => 'Буруу имэйл эсвэл нууц үг';

  @override
  String get snackPasswordMin8 =>
      'Нууц үг хамгийн багадаа 8 тэмдэгттэй байх ёстой';

  @override
  String get snackPasswordMismatch => 'Нууц үг таарахгүй байна.';

  @override
  String get snackAccountExists => 'Бүртгэл аль хэдийн байна. Та нэвтэрнэ үү.';

  @override
  String get snackSignupFailed =>
      'Бүртгэл үүсгэж чадсангүй. Дахин оролдоно уу.';

  @override
  String get snackEnterOtp => '6 оронтой кодыг оруулна уу';

  @override
  String get snackOtpExpired => 'Кодын хугацаа дууссан';

  @override
  String get snackOtpExpiredBody => 'Шинэ код авах хүсэлт гаргана уу.';

  @override
  String get snackInvalidCode => 'Буруу код';

  @override
  String get snackInvalidCodeBody => 'Код буруу байна. Дахин оролдоно уу.';

  @override
  String get snackSendCodeFailed =>
      'Код илгээж чадсангүй. Холболтоо шалгаад дахин оролдоно уу.';

  @override
  String get snackEmptyFolder => 'Хоосон хавтас';

  @override
  String get snackEmptyFolderBody => 'Сонгосон фолдерт файл олдсонгүй.';

  @override
  String get snackFolderUnsupported => 'Дэмжигдээгүй';

  @override
  String get snackFolderUnsupportedBody =>
      'Энэ платформ дээр хавтас байршуулах боломжгүй.';

  @override
  String get snackFolderReadError => 'Сонгосон фолдерыг уншиж чадсангүй.';

  @override
  String get snackLimitReached => 'Хязгаарт хүрсэн';

  @override
  String get snackLimitFilesBody =>
      'Хэмжээ эсвэл файлын тоо хязгаартай тул зарим файлыг нэмээгүй.';

  @override
  String get snackFreePlanLimit =>
      'Үнэгүй багц нь шилжүүлэг бүрт 5 ГБ хүртэлх боломжийг олгодог. Зарим файлыг устгаж эсвэл шинэчилнэ үү.';

  @override
  String get snackSignInEmail => 'Имэйлээр илгээхийн тулд нэвтэрнэ үү.';

  @override
  String get snackUploadStartFailed => 'Байршуулж эхлүүлж чадсангүй.';

  @override
  String get snackVerifyEnterCode => 'Имэйлээсээ 4 оронтой кодыг оруулна уу.';

  @override
  String get snackVerifyInvalid =>
      'Буруу эсвэл хугацаа нь дууссан код. Имэйлийг шалгаад дахин оролдоно уу.';

  @override
  String get snackVerifyResendFailed =>
      'Кодыг дахин илгээж чадсангүй. Дахин оролдоно уу.';

  @override
  String get snackDownloadComplete => 'Татаж дууссан';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\"-г Татаж авсан файлд хадгалсан';
  }

  @override
  String get snackDownloadFailed => 'Татаж чадсангүй';

  @override
  String get snackSaved => 'Хадгалсан';

  @override
  String get snackServerUrlUpdated =>
      'Серверийн URL шинэчлэгдсэн. Өргөдөл гаргахын тулд програмыг дахин эхлүүлнэ үү.';

  @override
  String get snackStoreError => 'Дэлгүүрийн алдаа';

  @override
  String get snackMissingProducts => 'Дутуу бүтээгдэхүүн';

  @override
  String get snackStoreUnavailable => 'Дэлгүүр ашиглах боломжгүй';

  @override
  String get snackStoreUnavailableBody =>
      'Энэ төхөөрөмж дээр апп доторх худалдан авалт хийх боломжгүй.';

  @override
  String get snackProductNotLoaded =>
      'Бүтээгдэхүүн хараахан ачаалагдаагүй байна.';

  @override
  String get snackRestoreStarted => 'Сэргээх ажил эхэлсэн';

  @override
  String get snackRestoreStartedBody =>
      'Бид таны худалдан авалтыг шалгаж байна.';

  @override
  String get snackRestoreFailed => 'Сэргээх амжилтгүй боллоо';

  @override
  String get snackProcessing => 'Боловсруулж байна';

  @override
  String get snackPleaseWait => 'Хүлээгээрэй...';

  @override
  String get snackSuccess => 'Амжилт';

  @override
  String get snackPurchaseCompleted => 'Худалдан авалт дууссан.';

  @override
  String get snackPurchaseError => 'Худалдан авалтын алдаа';

  @override
  String get snackPurchaseFailed => 'Худалдан авалт амжилтгүй боллоо.';

  @override
  String get snackCanceled => 'Цуцлагдсан';

  @override
  String get snackPurchaseCanceled => 'Худалдан авалтыг цуцалсан.';

  @override
  String get snackUpload => 'Байршуулах';

  @override
  String get snackVerify => 'Баталгаажуулах';

  @override
  String get doNotExpire => 'Хугацаа бүү дуусга';

  @override
  String get hourSingular => 'цаг';

  @override
  String get hourPlural => 'цаг';

  @override
  String get daySingular => 'өдөр';

  @override
  String get dayPlural => 'өдрүүд';

  @override
  String get emailAddressLabel => 'И-мэйл ХАЯГ';

  @override
  String get passwordLabelCaps => 'НУУЦ ҮГ';

  @override
  String get confirmPasswordLabelCaps => 'НУУЦ ҮГ БАТАЛГААХ';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ШИЛЖҮҮЛЭХ ХОЛБООС БУЮУ ID';

  @override
  String get howToReceive => 'ХЭРХЭН ХҮЛЭЭН АВАХ ВЭ';

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
  String get planAdsTitle => 'Зар сурталчилгааны төлөвлөгөө';

  @override
  String get planAdsBullet1 => 'Зар сурталчилгаагүй програм руу нэвтрэх';

  @override
  String get planAdsBullet2 => 'Бүх зарыг устгана уу';

  @override
  String get planProTitle => 'Pro төлөвлөгөө';

  @override
  String get planProBullet1 => '20 ГБ хүртэлх файл илгээх';

  @override
  String get planProBullet2 => 'Хурдан байршуулах';

  @override
  String get planPremiumTitle => 'Дээд зэрэглэлийн төлөвлөгөө';

  @override
  String get planPremiumBullet1 => '100 ГБ хүртэлх хэмжээтэй файл илгээх';

  @override
  String get planPremiumBullet2 => 'Супер хурдан байршуулах';

  @override
  String get planSubscriptionDisclaimer =>
      'Туршилтын хугацаа байхгүй - нэмэлт програмын функцийг ашиглахын тулд захиалга шаардлагатай. Танд шууд төлбөр ногдуулна. Та хүссэн үедээ цуцалж болно.';

  @override
  String get perMonth => '/ сар';

  @override
  String get perYear => '/ жил';

  @override
  String get snackConnectionProblem => 'Холболтын асуудал. Дахин оролдоно уу.';

  @override
  String get networkTitle => 'Сүлжээ';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Файлууд: $count · $size байт';
  }

  @override
  String todayAt(String time) {
    return 'Өнөөдөр · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Өчигдөр · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$days өдрийн өмнө · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount МБ';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining зүүн';
  }

  @override
  String get loadingShort => 'Ачааж байна…';

  @override
  String get colorPaletteTitle => 'Өнгөт палитр';

  @override
  String get colorPaletteSectionBackgrounds => 'Арын дэвсгэр (бэхний хэмжээ)';

  @override
  String get colorPaletteSectionAccent => 'Өргөлт / Үндсэн';

  @override
  String get colorPaletteSectionText => 'Текст';

  @override
  String get colorPaletteSectionBorders => 'Хил ба шил';

  @override
  String get colorPaletteSectionSemantic => 'Семантик';

  @override
  String get colorPaletteSectionLive => 'Шууд загвар (одоогийн)';

  @override
  String get colorPaletteActiveHint => '★ = дэлгэцэнд идэвхтэй ашигладаг';

  @override
  String get colorPaletteCopyHint =>
      'Зургаан өнцөгт утгыг нь хуулахын тулд дурын загвар дээр удаан дарна уу.';

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
  String get settingsAppBrand => 'Томоор хуваалцах\nВидео файлууд';

  @override
  String get loginEmailPasswordPrompt =>
      'Нэвтрэхийн тулд имэйл болон нууц үгээ оруулна уу.';

  @override
  String get forgotPassword => 'Нууц үгээ мартсан уу?';

  @override
  String get forgotPasswordTitle => 'Нууц үгийг дахин тохируулах';

  @override
  String get forgotPasswordBody =>
      'Бүртгэлийнхээ имэйлийг оруулна уу, бид дахин тохируулах код илгээх болно.';

  @override
  String get forgotPasswordSubmit => 'Дахин тохируулах код илгээнэ үү';

  @override
  String get resetPasswordTitle => 'Шинэ нууц үг үүсгэх';

  @override
  String get resetPasswordBody =>
      'Имэйлээсээ 6 оронтой кодыг оруулаад шинэ нууц үгээ сонгоно уу.';

  @override
  String get resetPasswordSubmit => 'Нууц үгийг шинэчлэх';

  @override
  String get snackPasswordResetSent => 'Дахин тохируулах кодыг илгээсэн';

  @override
  String get snackPasswordResetSentBody =>
      '6 оронтой дахин тохируулах код байгаа эсэхийг имэйлээ шалгана уу.';

  @override
  String get snackPasswordResetFailed =>
      'Дахин тохируулах кодыг илгээж чадсангүй. Дахин оролдоно уу.';

  @override
  String get snackPasswordUpdated => 'Нууц үг шинэчлэгдсэн';

  @override
  String get snackPasswordUpdatedBody => 'Шинэ нууц үгээрээ нэвтэрнэ үү.';

  @override
  String get snackPasswordResetInvalid =>
      'Буруу эсвэл хугацаа нь дууссан дахин тохируулах код.';

  @override
  String get otpDigitLabel => '6 оронтой код';

  @override
  String receiveMoreFiles(int count) {
    return '+$count өөр файлууд';
  }
}
