// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'مشاركة ملفات الفيديو الكبيرة';

  @override
  String get heroAccent => 'على الفور.';

  @override
  String get heroTitle => 'إرسال ثقيل الملفات';

  @override
  String get splashLoading => 'تحميل…';

  @override
  String get navSend => 'لوحة المعلومات';

  @override
  String get navHome => 'الصفحة الرئيسية';

  @override
  String get navHistory => 'التاريخ';

  @override
  String get navReceive => 'تلقي';

  @override
  String get navPlans => 'الخطط';

  @override
  String get navDownload => 'تنزيل';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get modeLink => 'Get رابط';

  @override
  String get modeEmail => 'إرسال عبر البريد الإلكتروني';

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
  String get pickFiles => 'اختر الملفات';

  @override
  String get pickFolder => 'اختر مجلد';

  @override
  String get emailFrom => 'بريدك الإلكتروني';

  @override
  String get mailFromUsesAccount =>
      'يستخدم بريدك الإلكتروني الذي تم تسجيل الدخول إليه.';

  @override
  String get recipientEmailsHelper =>
      'مستلمون متعددون: منفصلون بفواصل أو فواصل منقوطة أو مسافات.';

  @override
  String get emailTo => 'البريد الإلكتروني للمستلم';

  @override
  String get messageOptional => 'الرسالة (اختيارية)';

  @override
  String get passwordOptional => 'كلمة المرور (اختيارية)';

  @override
  String get destructAfterDownload => 'الحذف بعد التنزيل';

  @override
  String get destructNo => 'الاحتفاظ متاح';

  @override
  String get sendButton => 'إرسال';

  @override
  String get uploading => 'تحميل...';

  @override
  String get uploadComplete => 'تم';

  @override
  String get shareLinkTitle => 'الرابط الخاص بك';

  @override
  String get copyLink => 'انسخ الرابط';

  @override
  String get share => 'مشاركة';

  @override
  String get shareQrCode => 'مشاركة رمز QR';

  @override
  String get uploadMore => 'إرسال آخر';

  @override
  String get emailSentTitle => 'رسائل البريد الإلكتروني المرسلة';

  @override
  String get verifyEmailTitle => 'التحقق من بريدك الإلكتروني';

  @override
  String get verifyCodeHint => 'أدخل الرمز من بريدك الإلكتروني';

  @override
  String get verifySubmit => 'التحقق';

  @override
  String get verifyResendCode => 'إعادة إرسال الرمز';

  @override
  String get verifyCodeSent => 'تم إرسال رمز تحقق جديد إلى بريدك الإلكتروني.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'ربما لم يكن هناك بريد إلكتروني للتحقق تم الإرسال';

  @override
  String get verifyEmailSmtpWarningBody =>
      'تعذر على الخادم تأكيد التسليم (غالبًا ما يتم تكوين SMTP بشكل خاطئ). اطلب من مسؤول موقعك التحقق من إعدادات البريد في لوحة الإدارة، ثم انقر فوق \"إعادة إرسال الرمز\".';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'إذا لم يصل: تحقق من الرسائل غير المرغوب فيها/البريد العشوائي والعروض الترويجية، انتظر دقيقة، وتأكد من أن $email لا يحتوي على أخطاء مطبعية، ثم انقر فوق \"إعادة إرسال\".';
  }

  @override
  String get loginTitle => 'تسجيل الدخول';

  @override
  String get signupHint =>
      'استخدم البريد الإلكتروني لحساب موقعك و كلمة المرور.';

  @override
  String get emailHint => 'البريد الإلكتروني';

  @override
  String get passwordHint => 'كلمة المرور';

  @override
  String get cancel => 'إلغاء';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get downloadIdHint => 'معرف النقل';

  @override
  String get privateIdHint => 'معرف خاص (اختياري)';

  @override
  String get fetchTransfer => 'فتح النقل';

  @override
  String get downloadFile => 'تحميل';

  @override
  String get unlockDownload => 'فتح التنزيل';

  @override
  String get downloadSaved => 'تم الحفظ في التنزيلات';

  @override
  String get errorGeneric => 'حدث خطأ ما';

  @override
  String get errorNetwork => 'خطأ في الشبكة';

  @override
  String get errorBadResponse => 'استجابة الخادم غير متوقعة';

  @override
  String get termsAccept => 'أوافق على الشروط';

  @override
  String get settingsApiUrl => 'موقع عام URL';

  @override
  String get settingsAccount => 'الحساب';

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsTheme => 'الموضوع';

  @override
  String get themeSystem => 'النظام';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsSignedIn => 'لقد قمت بتسجيل الدخول.';

  @override
  String get settingsSignedOut => 'لم تقم بتسجيل الدخول in.';

  @override
  String get settingsOpenWebsite => 'افتح موقع الويب';

  @override
  String get signUp => 'التسجيل';

  @override
  String get settingsLinks => 'الروابط';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get termsOfService => 'شروط الخدمة';

  @override
  String get about => 'حول';

  @override
  String get moreApps => 'المزيد apps';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get languageEnglish => 'الإنجليزية';

  @override
  String get languageHindi => 'الهندية';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get deleteAccountConfirmTitle => 'هل تريد حذف حسابك؟';

  @override
  String get deleteAccountConfirmBody =>
      'يؤدي هذا إلى حذف حسابك نهائيًا وتسجيل خروجك. ستستمر روابط النقل الخاصة بك في العمل، لكنها لن تظهر بعد الآن في السجل الخاص بك.';

  @override
  String get deleteAccountSuccess => 'تم حذف الحساب';

  @override
  String get deleteAccountSuccessBody => 'لقد تمت إزالة حسابك.';

  @override
  String get deleteAccountFailed => 'تعذر حذف الحساب';

  @override
  String get deleteAccountFailedBody =>
      'يرجى المحاولة مرة أخرى أو الاتصال بالدعم.';

  @override
  String get maxFilesReached => 'ملفات كثيرة جدًا';

  @override
  String get fileTooLarge => 'ملف أيضًا كبير';

  @override
  String get ipLimit => 'عدد كبير جدًا من التحميلات من هذه الشبكة';

  @override
  String get fillFields => 'يرجى ملء الحقول المطلوبة';

  @override
  String get invalidEmail => 'بريد إلكتروني غير صالح';

  @override
  String get maxRecipientsReached => 'عدد كبير جدًا من المستلمين';

  @override
  String get loginRequiredTitle => 'تسجيل الدخول مطلوب';

  @override
  String get loginRequiredBody => 'يتطلب هذا الخادم حسابًا للتحميل أو التنزيل.';

  @override
  String get settingsSubtitle => 'تفضيلات التطبيق و حساب.';

  @override
  String get dropHeavyFile => 'أسقط ملفًا ثقيلًا هنا.';

  @override
  String upToTotal(String max) {
    return 'ما يصل إلى $max إجمالي';
  }

  @override
  String get removeAll => 'إزالة الكل';

  @override
  String get addFiles => 'إضافة ملفات';

  @override
  String get adding => 'إضافة...';

  @override
  String get options => 'خيارات';

  @override
  String get selfDestruct => 'التدمير الذاتي بعد تنزيل';

  @override
  String get expiry => 'انتهاء الصلاحية';

  @override
  String get cancelUpload => 'إلغاء التحميل';

  @override
  String get transferReady => 'التحويل جاهز!';

  @override
  String get emailSentReady => 'تم إرسال البريد الإلكتروني!';

  @override
  String get shareRecipientHint => 'شارك هذا الرابط مع المستلم.';

  @override
  String get emailSentBody => 'لقد أبلغنا المستلم (المستلمين).';

  @override
  String get scanQr => 'امسح ضوئيًا لفتح رابط النقل.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'أدخل الرمز المكون من 4 أرقام المرسل إلى البريد الإلكتروني للمرسل.';

  @override
  String get starting => 'بدءًا...';

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
    return '$amount ميغابايت متبقية';
  }

  @override
  String get fillField => 'يرجى ملء هذا الحقل.';

  @override
  String get enterValidEmail => 'أدخل صالحًا البريد الإلكتروني.';

  @override
  String get message => 'رسالة';

  @override
  String get recipientEmail => 'البريد الإلكتروني للمستلم';

  @override
  String get active => 'نشط';

  @override
  String get expired => 'منتهية الصلاحية';

  @override
  String get historyTitle => 'تحويلاتي';

  @override
  String get signInToSeeTransfers => 'تسجيل الدخول لرؤية تحويلاتك';

  @override
  String get signInTransfersBody =>
      'نحن نستخدم بريدك الإلكتروني لربط التحويلات بحسابك - لا حاجة إلى كلمة مرور.';

  @override
  String get couldNotLoadTransfers => 'تعذر تحميل عمليات النقل';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get noTransfersYet => 'لا توجد عمليات نقل بعد';

  @override
  String get noTransfersBody => 'بمجرد إرسال ملف، سيظهر هنا.';

  @override
  String get transferDetails => 'تفاصيل النقل';

  @override
  String get filesSection => 'ملفات';

  @override
  String get receiveTitle => 'استلام الملفات';

  @override
  String get receiveSubtitle => 'الصق رابط النقل للتنزيل الملفات.';

  @override
  String get pasteTooltip => 'لصق';

  @override
  String get findTransfer => 'بحث عن نقل';

  @override
  String get receiveScanQr => 'مسح QR';

  @override
  String get receiveScanQrTitle => 'مسح نقل QR';

  @override
  String get receiveScanQrHint => 'قم بمحاذاة رمز QR داخل الإطار.';

  @override
  String get receiveScanQrInvalid => 'رمز QR هذا ليس رابط نقل صالح.';

  @override
  String get receiveScanQrCameraDenied =>
      'يتطلب الوصول إلى الكاميرا لإجراء المسح الضوئي رموز QR.';

  @override
  String get receiveStepGetLink => 'احصل على الرابط';

  @override
  String get receiveStepGetLinkBody => 'اطلب من المرسل مشاركة رابط النقل معك.';

  @override
  String get receiveStepPaste => 'الصق وابحث';

  @override
  String get receiveStepPasteBody =>
      'الصق الرابط أعلاه وانقر على \"بحث عن نقل\".';

  @override
  String get receiveStepDownload => 'تنزيل الملفات';

  @override
  String get receiveStepDownloadBody =>
      'راجع تفاصيل الملف وقم بتنزيل كل شيء على مرة واحدة.';

  @override
  String get lookingUpTransfer => 'البحث عن النقل...';

  @override
  String get transferNotFound =>
      'لم يتم العثور على النقل. تحقق من الرابط وحاول مرة أخرى.';

  @override
  String get transferExpired =>
      'لقد انتهت صلاحية عملية النقل هذه ولم تعد متوفرة.';

  @override
  String get transferLoginRequired =>
      'يلزم تسجيل الدخول للوصول إلى عملية النقل هذه.';

  @override
  String get transferBadResponse => 'استجابة خادم غير متوقعة. تحقق من اتصالك.';

  @override
  String get transferNetworkError => 'خطأ في الشبكة. تحقق من اتصالك بالإنترنت.';

  @override
  String transferLoadFailed(String error) {
    return 'تعذر تحميل النقل: $error';
  }

  @override
  String get passwordProtected => 'كلمة المرور محمية';

  @override
  String get enterPassword => 'أدخل كلمة المرور';

  @override
  String get unlock => 'فتح';

  @override
  String get downloading => 'التنزيل…';

  @override
  String get downloadAllFiles => 'تنزيل جميع الملفات';

  @override
  String get downloadSingleFile => 'تنزيل الملف';

  @override
  String get receiveAnother => 'تلقي نقل آخر';

  @override
  String get plansTitle => 'الخطط';

  @override
  String get plansSubtitle =>
      'الترقية لإزالة الإعلانات وإرسال ملفات أكبر حجمًا.';

  @override
  String get storeUnavailable => 'التخزين غير متاح';

  @override
  String get storeUnavailableBody =>
      'عمليات الشراء داخل التطبيق غير متاحة بشكل صحيح الآن.';

  @override
  String get storeLoadingPrices => 'جارٍ تحميل الأسعار من متجر التطبيقات...';

  @override
  String get storePricesUnavailable => 'الأسعار غير متاحة';

  @override
  String get storePricesPartial => 'لا يمكن تحميل بعض الأسعار';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded من منتجات الاشتراك $total تم تحميلها.';
  }

  @override
  String get storeSetupHint =>
      'اختبر على جهاز iPhone حقيقي (وليس جهاز محاكاة)، واستخدم Sandbox Apple ID، وتأكد من إنشاء جميع الاشتراكات الستة ضمن معرف حزمة هذا التطبيق في متجر التطبيقات، تواصل مع مجموعة الأسعار.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/الشهر';
  }

  @override
  String get freeVersionAds => 'أنت تستخدم حاليًا نسختنا المجانية مع الإعلانات';

  @override
  String get restorePurchases => 'استعادة المشتريات';

  @override
  String get plansContinue => 'متابعة';

  @override
  String get planLinkRestore => 'Restore';

  @override
  String get termsAndConditions => 'الشروط و الشروط';

  @override
  String get createAccountTitle => 'إنشاء حساب';

  @override
  String get signUpSubtitle =>
      'التسجيل باستخدام البريد الإلكتروني وكلمة المرور.';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get passwordMin8 => 'كلمة المرور (8 أحرف على الأقل)';

  @override
  String get alreadyHaveAccount => 'هل لديك حساب بالفعل؟';

  @override
  String get checkEmailTitle => 'تحقق من حسابك\nemail';

  @override
  String otpSentTo(String email) {
    return ' لقد أرسلنا رمزًا مكونًا من 6 أرقام إلى\n$email';
  }

  @override
  String get verifyAndSignIn => 'التحقق وتسجيل الدخول';

  @override
  String get didntReceiveCode => 'ألم تستلمه؟';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get otpExpiresHint =>
      'تنتهي صلاحية الرمز خلال 5 دقائق. تحقق من مجلد الرسائل غير المرغوب فيها إذا كنت لا تراه.';

  @override
  String get snackError => 'خطأ';

  @override
  String get snackCopied => 'تم النسخ';

  @override
  String get snackCopiedBody => 'تم نسخ الرابط إلى الحافظة';

  @override
  String get snackWelcome => 'مرحبًا';

  @override
  String get snackAccountCreated => 'تم إنشاء الحساب';

  @override
  String get snackEnterEmail => 'الرجاء إدخال بريدك الإلكتروني';

  @override
  String get snackEnterPassword => 'الرجاء إدخال بريدك الإلكتروني كلمة المرور';

  @override
  String get snackInvalidEmail => 'عنوان بريد إلكتروني غير صالح';

  @override
  String get snackInvalidCredentials => 'بريد إلكتروني أو كلمة مرور غير صحيحة';

  @override
  String get snackPasswordMin8 =>
      'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل';

  @override
  String get snackPasswordMismatch => 'كلمات المرور غير متطابقة.';

  @override
  String get snackAccountExists => 'الحساب موجود بالفعل. الرجاء تسجيل الدخول.';

  @override
  String get snackSignupFailed => 'تعذر إنشاء حساب. حاول مرة أخرى.';

  @override
  String get snackEnterOtp => 'الرجاء إدخال الرمز المكون من 6 أرقام';

  @override
  String get snackOtpExpired => 'الرمز منتهي الصلاحية';

  @override
  String get snackOtpExpiredBody => 'الرجاء طلب رمز جديد.';

  @override
  String get snackInvalidCode => 'الرمز غير صالح';

  @override
  String get snackInvalidCodeBody =>
      'الرمز غير صحيح. الرجاء المحاولة مرة أخرى.';

  @override
  String get snackSendCodeFailed =>
      'تعذر إرسال الرمز. تحقق من اتصالك وحاول مرة أخرى.';

  @override
  String get snackEmptyFolder => 'مجلد فارغ';

  @override
  String get snackEmptyFolderBody =>
      'لم يتم العثور على ملفات في المجلد المحدد.';

  @override
  String get snackFolderUnsupported => 'غير مدعوم';

  @override
  String get snackFolderUnsupportedBody =>
      'تحميل المجلد غير متاح على هذا النظام الأساسي.';

  @override
  String get snackFolderReadError => 'تعذر قراءة المجلد المحدد.';

  @override
  String get snackLimitReached => 'تم الوصول إلى الحد';

  @override
  String get snackLimitFilesBody =>
      'لم تتم إضافة بعض الملفات بسبب حدود الحجم أو عدد الملفات.';

  @override
  String get snackFreePlanLimit =>
      'خطة مجانية يسمح بما يصل إلى 5 جيجابايت لكل عملية نقل. يرجى إزالة بعض الملفات أو الترقية.';

  @override
  String get snackSignInEmail =>
      'يرجى تسجيل الدخول للإرسال عبر البريد الإلكتروني.';

  @override
  String get snackUploadStartFailed => 'تعذر بدء التحميل.';

  @override
  String get snackVerifyEnterCode =>
      'أدخل الرمز المكون من 4 أرقام من بريدك الإلكتروني.';

  @override
  String get snackVerifyInvalid =>
      'الرمز غير صالح أو منتهي الصلاحية. تحقق من البريد الإلكتروني وحاول مرة أخرى.';

  @override
  String get snackVerifyResendFailed =>
      'تعذر إعادة إرسال الرمز. حاول مرة أخرى.';

  @override
  String get snackDownloadComplete => 'اكتمل التنزيل';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" تم حفظه في التنزيلات';
  }

  @override
  String get snackDownloadFailed => 'فشل التنزيل';

  @override
  String get snackSaved => 'تم الحفظ';

  @override
  String get snackServerUrlUpdated =>
      'تم تحديث عنوان URL للخادم. أعد تشغيل التطبيق لتطبيقه.';

  @override
  String get snackStoreError => 'خطأ في المتجر';

  @override
  String get snackMissingProducts => 'المنتجات المفقودة';

  @override
  String get snackStoreUnavailable => 'التخزين غير متاح';

  @override
  String get snackStoreUnavailableBody =>
      'عمليات الشراء داخل التطبيق غير متوفرة على هذا الجهاز.';

  @override
  String get snackProductNotLoaded => 'لم يتم تحميل المنتج بعد.';

  @override
  String get snackRestoreStarted => 'بدأت الاستعادة';

  @override
  String get snackRestoreStartedBody => 'نحن نتحقق من المشتريات.';

  @override
  String get snackRestoreFailed => 'فشلت الاستعادة';

  @override
  String get snackProcessing => 'المعالجة';

  @override
  String get snackPleaseWait => 'الرجاء الانتظار...';

  @override
  String get snackSuccess => 'النجاح';

  @override
  String get snackPurchaseCompleted => 'اكتملت عملية الشراء.';

  @override
  String get snackPurchaseError => 'خطأ في الشراء';

  @override
  String get snackPurchaseFailed => 'الشراء فشل.';

  @override
  String get snackCanceled => 'تم الإلغاء';

  @override
  String get snackPurchaseCanceled => 'تم إلغاء الشراء.';

  @override
  String get snackUpload => 'تحميل';

  @override
  String get snackVerify => 'التحقق';

  @override
  String get doNotExpire => 'لا تفعل ذلك تنتهي';

  @override
  String get hourSingular => 'ساعة';

  @override
  String get hourPlural => 'ساعة';

  @override
  String get daySingular => 'يوم';

  @override
  String get dayPlural => 'يوم';

  @override
  String get emailAddressLabel => 'عنوان البريد الإلكتروني';

  @override
  String get passwordLabelCaps => 'كلمة المرور';

  @override
  String get confirmPasswordLabelCaps => 'تأكيد كلمة المرور';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'رابط النقل أو ID';

  @override
  String get howToReceive => 'كيفية تلقي';

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
  String get planAdsTitle => 'خطة الإعلانات';

  @override
  String get planAdsBullet1 => 'الوصول إلى تطبيق الإعلانات المجاني';

  @override
  String get planAdsBullet2 => 'إزالة جميع الإعلانات';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'أرسل ملفات يصل حجمها إلى 20 جيجابايت';

  @override
  String get planProBullet2 => 'تحميل سريع';

  @override
  String get planPremiumTitle => 'الخطة المميزة';

  @override
  String get planPremiumBullet1 => 'أرسل ملفات يصل حجمها إلى 100 جيجابايت';

  @override
  String get planPremiumBullet2 => 'تحميل فائق السرعة';

  @override
  String get planSubscriptionDisclaimer =>
      'لا توجد فترة تجريبية - الاشتراك مطلوب لاستخدام وظائف التطبيق الإضافية. سيتم محاسبتك على الفور. يمكنك الإلغاء في أي وقت.';

  @override
  String get perMonth => '/ شهر';

  @override
  String get perYear => '/ سنة';

  @override
  String get snackConnectionProblem =>
      'مشكلة في الاتصال. الرجاء المحاولة مرة أخرى.';

  @override
  String get networkTitle => 'الشبكة';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'الملفات: $count · $size بايت';
  }

  @override
  String todayAt(String time) {
    return 'اليوم · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'أمس · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysمنذ · $time';
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
    return '$sent / $total • $remaining يسار';
  }

  @override
  String get loadingShort => 'تحميل…';

  @override
  String get colorPaletteTitle => 'لوحة الألوان';

  @override
  String get colorPaletteSectionBackgrounds => 'الخلفيات (مقياس الحبر)';

  @override
  String get colorPaletteSectionAccent => 'لكنة / أساسي';

  @override
  String get colorPaletteSectionText => 'نص';

  @override
  String get colorPaletteSectionBorders => 'الحدود والزجاج';

  @override
  String get colorPaletteSectionSemantic => 'دلالي';

  @override
  String get colorPaletteSectionLive => 'موضوع مباشر (الحالي) ';

  @override
  String get colorPaletteActiveHint => '★ = يُستخدم بشكل نشط في الشاشات';

  @override
  String get colorPaletteCopyHint =>
      'اضغط لفترة طويلة على أي عينة لنسخ قيمتها السداسية.';

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
  String get settingsAppBrand => 'Share Large\nملفات الفيديو';

  @override
  String get loginEmailPasswordPrompt =>
      'أدخل بريدك الإلكتروني وكلمة المرور لتسجيل الدخول.';

  @override
  String get forgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get forgotPasswordTitle => 'إعادة تعيين كلمة المرور';

  @override
  String get forgotPasswordBody =>
      'أدخل البريد الإلكتروني لحسابك وسنرسل رمز إعادة التعيين.';

  @override
  String get forgotPasswordSubmit => 'أرسل رمز إعادة التعيين';

  @override
  String get resetPasswordTitle => 'إنشاء جديد كلمة المرور';

  @override
  String get resetPasswordBody =>
      'أدخل الرمز المكون من 6 أرقام من بريدك الإلكتروني واختر كلمة مرور جديدة.';

  @override
  String get resetPasswordSubmit => 'تحديث كلمة المرور';

  @override
  String get snackPasswordResetSent => 'تم إرسال رمز إعادة التعيين';

  @override
  String get snackPasswordResetSentBody =>
      'تحقق من بريدك الإلكتروني بحثًا عن رمز إعادة تعيين مكون من 6 أرقام.';

  @override
  String get snackPasswordResetFailed =>
      'تعذر إرسال رمز إعادة التعيين. حاول مرة أخرى.';

  @override
  String get snackPasswordUpdated => 'تم تحديث كلمة المرور';

  @override
  String get snackPasswordUpdatedBody =>
      'قم بتسجيل الدخول باستخدام كلمة المرور الجديدة.';

  @override
  String get snackPasswordResetInvalid =>
      'رمز إعادة تعيين غير صالح أو منتهي الصلاحية.';

  @override
  String get otpDigitLabel => '6-DIGIT CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count المزيد من الملفات';
  }
}
