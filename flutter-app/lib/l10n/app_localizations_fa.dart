// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'فایل های ویدیویی بزرگ را به اشتراک بگذارید';

  @override
  String get heroAccent => 'فورا';

  @override
  String get heroTitle => 'ارسال فایل های سنگین';

  @override
  String get splashLoading => 'در حال بارگیری…';

  @override
  String get navSend => 'داشبورد';

  @override
  String get navHome => 'صفحه اصلی';

  @override
  String get navHistory => 'تاریخچه';

  @override
  String get navReceive => 'دریافت کنید';

  @override
  String get navPlans => 'طرح ها';

  @override
  String get navDownload => 'دانلود کنید';

  @override
  String get navSettings => 'تنظیمات';

  @override
  String get modeLink => 'یک لینک دریافت کنید';

  @override
  String get modeEmail => 'ارسال از طریق ایمیل';

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
  String get pickFiles => 'فایل ها را انتخاب کنید';

  @override
  String get pickFolder => 'پوشه را انتخاب کنید';

  @override
  String get emailFrom => 'ایمیل شما';

  @override
  String get mailFromUsesAccount => 'از ایمیل وارد شده شما استفاده می کند.';

  @override
  String get recipientEmailsHelper =>
      'گیرندگان چندگانه: با کاما، نقطه ویرگول یا فاصله از هم جدا شوند.';

  @override
  String get emailTo => 'ایمیل گیرنده';

  @override
  String get messageOptional => 'پیام (اختیاری)';

  @override
  String get passwordOptional => 'رمز عبور (اختیاری)';

  @override
  String get destructAfterDownload => 'بعد از دانلود حذف کنید';

  @override
  String get destructNo => 'در دسترس نگه دارید';

  @override
  String get sendButton => 'ارسال کنید';

  @override
  String get uploading => 'در حال آپلود…';

  @override
  String get uploadComplete => 'انجام شد';

  @override
  String get shareLinkTitle => 'لینک شما';

  @override
  String get copyLink => 'لینک را کپی کنید';

  @override
  String get share => 'به اشتراک بگذارید';

  @override
  String get shareQrCode => 'کد QR را به اشتراک بگذارید';

  @override
  String get uploadMore => 'دیگری بفرست';

  @override
  String get emailSentTitle => 'ایمیل ها ارسال شد';

  @override
  String get verifyEmailTitle => 'ایمیل خود را تایید کنید';

  @override
  String get verifyCodeHint => 'کد را از ایمیل خود وارد کنید';

  @override
  String get verifySubmit => 'تأیید کنید';

  @override
  String get verifyResendCode => 'ارسال مجدد کد';

  @override
  String get verifyCodeSent => 'یک کد تأیید جدید به ایمیل شما ارسال شد.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'ممکن است ایمیل تأیید ارسال نشده باشد';

  @override
  String get verifyEmailSmtpWarningBody =>
      'سرور نمی تواند تحویل را تأیید کند (اغلب SMTP به اشتباه پیکربندی می شود). از سرپرست سایت خود بخواهید تنظیمات ایمیل را در پنل مدیریت بررسی کند، سپس روی ارسال مجدد کد ضربه بزنید.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'اگر دریافت نشد: ناخواسته/هرزنامه و تبلیغات را بررسی کنید، یک دقیقه صبر کنید، تأیید کنید $email اشتباه تایپی ندارد، سپس روی ارسال مجدد ضربه بزنید.';
  }

  @override
  String get loginTitle => 'وارد شوید';

  @override
  String get signupHint => 'از ایمیل و رمز عبور حساب سایت خود استفاده کنید.';

  @override
  String get emailHint => 'ایمیل';

  @override
  String get passwordHint => 'رمز عبور';

  @override
  String get cancel => 'لغو کنید';

  @override
  String get signIn => 'وارد شوید';

  @override
  String get downloadIdHint => 'شناسه انتقال';

  @override
  String get privateIdHint => 'شناسه خصوصی (اختیاری)';

  @override
  String get fetchTransfer => 'انتقال را باز کنید';

  @override
  String get downloadFile => 'دانلود کنید';

  @override
  String get unlockDownload => 'قفل دانلود را باز کنید';

  @override
  String get downloadSaved => 'در دانلودها ذخیره شد';

  @override
  String get errorGeneric => 'مشکلی پیش آمد';

  @override
  String get errorNetwork => 'خطای شبکه';

  @override
  String get errorBadResponse => 'پاسخ غیرمنتظره سرور';

  @override
  String get termsAccept => 'من با شرایط موافقم';

  @override
  String get settingsApiUrl => 'آدرس سایت عمومی';

  @override
  String get settingsAccount => 'حساب';

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsTheme => 'موضوع';

  @override
  String get themeSystem => 'سیستم';

  @override
  String get themeLight => 'نور';

  @override
  String get themeDark => 'تاریک';

  @override
  String get settingsSignedIn => 'شما وارد سیستم شده اید.';

  @override
  String get settingsSignedOut => 'شما وارد سیستم نشده اید.';

  @override
  String get settingsOpenWebsite => 'وب سایت را باز کنید';

  @override
  String get signUp => 'ثبت نام کنید';

  @override
  String get settingsLinks => 'پیوندها';

  @override
  String get privacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get termsOfService => 'شرایط خدمات';

  @override
  String get about => 'درباره';

  @override
  String get moreApps => 'برنامه های بیشتر';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageHindi => 'هندی';

  @override
  String get logout => 'از سیستم خارج شوید';

  @override
  String get deleteAccount => 'حذف اکانت';

  @override
  String get deleteAccountConfirmTitle => 'حساب کاربری خود را حذف کنید؟';

  @override
  String get deleteAccountConfirmBody =>
      'این کار حساب شما را برای همیشه حذف می کند و شما را از سیستم خارج می کند. پیوندهای انتقال شما به کار خود ادامه می دهند، اما دیگر در سابقه شما ظاهر نمی شوند.';

  @override
  String get deleteAccountSuccess => 'اکانت حذف شد';

  @override
  String get deleteAccountSuccessBody => 'حساب شما حذف شده است.';

  @override
  String get deleteAccountFailed => 'اکانت حذف نشد';

  @override
  String get deleteAccountFailedBody =>
      'لطفا دوباره امتحان کنید یا با پشتیبانی تماس بگیرید.';

  @override
  String get maxFilesReached => 'فایل های خیلی زیاد';

  @override
  String get fileTooLarge => 'فایل خیلی بزرگ است';

  @override
  String get ipLimit => 'تعداد زیادی آپلود از این شبکه';

  @override
  String get fillFields => 'لطفا فیلدهای الزامی را پر کنید';

  @override
  String get invalidEmail => 'ایمیل نامعتبر';

  @override
  String get maxRecipientsReached => 'گیرندگان بسیار زیاد';

  @override
  String get loginRequiredTitle => 'ورود به سیستم الزامی است';

  @override
  String get loginRequiredBody =>
      'این سرور برای آپلود یا دانلود نیاز به یک حساب کاربری دارد.';

  @override
  String get settingsSubtitle => 'تنظیمات برگزیده برنامه و حساب.';

  @override
  String get dropHeavyFile => 'یک فایل سنگین را اینجا رها کنید.';

  @override
  String upToTotal(String max) {
    return 'تا $max در مجموع';
  }

  @override
  String get removeAll => 'همه را حذف کنید';

  @override
  String get addFiles => 'فایل ها را اضافه کنید';

  @override
  String get adding => 'در حال افزودن…';

  @override
  String get options => 'گزینه ها';

  @override
  String get selfDestruct => 'پس از دانلود خود تخریب می شود';

  @override
  String get expiry => 'انقضا';

  @override
  String get cancelUpload => 'لغو آپلود';

  @override
  String get transferReady => 'انتقال آماده است!';

  @override
  String get emailSentReady => 'ایمیل ارسال شد!';

  @override
  String get shareRecipientHint =>
      'این پیوند را با گیرنده خود به اشتراک بگذارید.';

  @override
  String get emailSentBody => 'ما به گیرنده(های) شما اطلاع داده ایم.';

  @override
  String get scanQr => 'برای باز کردن پیوند انتقال، اسکن کنید.';

  @override
  String get shareLinkButton => 'لینک را به اشتراک بگذارید';

  @override
  String get verifyFourDigit =>
      'کد 4 رقمی ارسال شده به ایمیل فرستنده خود را وارد کنید.';

  @override
  String get starting => 'شروع…';

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
    return '$amount مگابایت باقی مانده است';
  }

  @override
  String get fillField => 'لطفا این فیلد را پر کنید.';

  @override
  String get enterValidEmail => 'یک ایمیل معتبر وارد کنید.';

  @override
  String get message => 'پیام';

  @override
  String get recipientEmail => 'ایمیل گیرنده';

  @override
  String get active => 'فعال';

  @override
  String get expired => 'منقضی شده است';

  @override
  String get historyTitle => 'نقل و انتقالات من';

  @override
  String get signInToSeeTransfers => 'برای مشاهده نقل و انتقالات خود وارد شوید';

  @override
  String get signInTransfersBody =>
      'ما از ایمیل شما برای پیوند دادن نقل و انتقالات به حساب شما استفاده می کنیم — بدون نیاز به رمز عبور.';

  @override
  String get couldNotLoadTransfers => 'نقل و انتقالات بارگیری نشد';

  @override
  String get retry => 'دوباره امتحان کنید';

  @override
  String get noTransfersYet => 'هنوز نقل و انتقالاتی وجود ندارد';

  @override
  String get noTransfersBody => 'پس از ارسال فایل، در اینجا ظاهر می شود.';

  @override
  String get transferDetails => 'جزئیات انتقال';

  @override
  String get filesSection => 'فایل ها';

  @override
  String get receiveTitle => 'دریافت فایل ها';

  @override
  String get receiveSubtitle =>
      'پیوند انتقال را برای دانلود فایل ها جایگذاری کنید.';

  @override
  String get pasteTooltip => 'چسباندن';

  @override
  String get findTransfer => 'انتقال را پیدا کنید';

  @override
  String get receiveScanQr => 'اسکن QR';

  @override
  String get receiveScanQrTitle => 'اسکن QR انتقال';

  @override
  String get receiveScanQrHint => 'کد QR را در داخل قاب تراز کنید.';

  @override
  String get receiveScanQrInvalid => 'این کد QR یک پیوند انتقال معتبر نیست.';

  @override
  String get receiveScanQrCameraDenied =>
      'دسترسی به دوربین برای اسکن کدهای QR لازم است.';

  @override
  String get receiveStepGetLink => 'لینک را دریافت کنید';

  @override
  String get receiveStepGetLinkBody =>
      'از فرستنده بخواهید پیوند انتقال را با شما به اشتراک بگذارد.';

  @override
  String get receiveStepPaste => 'چسباندن و پیدا کردن';

  @override
  String get receiveStepPasteBody =>
      'پیوند بالا را جای‌گذاری کنید و روی «پیدا کردن انتقال» ضربه بزنید.';

  @override
  String get receiveStepDownload => 'دانلود فایل ها';

  @override
  String get receiveStepDownloadBody =>
      'جزئیات فایل را ببینید و همه چیز را به یکباره دانلود کنید.';

  @override
  String get lookingUpTransfer => 'در حال جستجوی انتقال…';

  @override
  String get transferNotFound =>
      'انتقال یافت نشد پیوند را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get transferExpired =>
      'این انتقال منقضی شده است و دیگر در دسترس نیست.';

  @override
  String get transferLoginRequired =>
      'برای دسترسی به این انتقال، وارد سیستم شوید.';

  @override
  String get transferBadResponse =>
      'پاسخ غیرمنتظره سرور اتصال خود را بررسی کنید.';

  @override
  String get transferNetworkError =>
      'خطای شبکه اتصال اینترنت خود را بررسی کنید.';

  @override
  String transferLoadFailed(String error) {
    return 'انتقال بارگیری نشد: $error';
  }

  @override
  String get passwordProtected => 'رمز عبور محافظت شده است';

  @override
  String get enterPassword => 'رمز عبور را وارد کنید';

  @override
  String get unlock => 'باز کردن قفل';

  @override
  String get downloading => 'در حال دانلود…';

  @override
  String get downloadAllFiles => 'دانلود تمامی فایل ها';

  @override
  String get downloadSingleFile => 'دانلود فایل';

  @override
  String get receiveAnother => 'انتقال دیگری دریافت کنید';

  @override
  String get plansTitle => 'طرح ها';

  @override
  String get plansSubtitle =>
      'برای حذف تبلیغات و ارسال فایل های بزرگتر ارتقا دهید.';

  @override
  String get storeUnavailable => 'فروشگاه در دسترس نیست';

  @override
  String get storeUnavailableBody =>
      'خریدهای درون برنامه ای در حال حاضر در دسترس نیستند.';

  @override
  String get storeLoadingPrices => 'در حال بارگیری قیمت ها از اپ استور…';

  @override
  String get storePricesUnavailable => 'قیمت ها در دسترس نیست';

  @override
  String get storePricesPartial => 'برخی از قیمت ها بارگیری نشدند';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded از محصولات اشتراک $total بارگیری شد.';
  }

  @override
  String get storeSetupHint =>
      'روی یک آیفون واقعی (نه شبیه ساز) تست کنید، از Sandbox Apple ID استفاده کنید و مطمئن شوید که همه 6 اشتراک تحت شناسه بسته این برنامه در App Store Connect با مجموعه قیمت ایجاد شده اند.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ماه';
  }

  @override
  String get freeVersionAds =>
      'در حال حاضر شما از نسخه رایگان ما با تبلیغات استفاده می کنید';

  @override
  String get restorePurchases => 'بازیابی خریدها';

  @override
  String get plansContinue => 'ادامه دهید';

  @override
  String get planLinkRestore => 'بازیابی کنید';

  @override
  String get termsAndConditions => 'شرایط و ضوابط';

  @override
  String get createAccountTitle => 'ایجاد حساب کاربری';

  @override
  String get signUpSubtitle => 'با ایمیل و رمز عبور ثبت نام کنید.';

  @override
  String get confirmPassword => 'رمز عبور را تایید کنید';

  @override
  String get passwordMin8 => 'رمز عبور (حداقل 8 نویسه)';

  @override
  String get alreadyHaveAccount => 'از قبل حساب کاربری دارید؟';

  @override
  String get checkEmailTitle => 'خود را بررسی کنید\nایمیل';

  @override
  String otpSentTo(String email) {
    return 'ما یک کد 6 رقمی ارسال کردیم\n$email';
  }

  @override
  String get verifyAndSignIn => 'تأیید و وارد شوید';

  @override
  String get didntReceiveCode => 'آن را دریافت نکردید؟';

  @override
  String get tryAgain => 'دوباره امتحان کنید';

  @override
  String get otpExpiresHint =>
      'کد 5 دقیقه دیگر منقضی می شود. اگر پوشه اسپم خود را نمی بینید بررسی کنید.';

  @override
  String get snackError => 'خطا';

  @override
  String get snackCopied => 'کپی شده است';

  @override
  String get snackCopiedBody => 'پیوند در کلیپ بورد کپی شد';

  @override
  String get snackWelcome => 'خوش آمدید';

  @override
  String get snackAccountCreated => 'حساب ایجاد شد';

  @override
  String get snackEnterEmail => 'لطفا ایمیل خود را وارد کنید';

  @override
  String get snackEnterPassword => 'لطفا رمز عبور خود را وارد کنید';

  @override
  String get snackInvalidEmail => 'آدرس ایمیل نامعتبر است';

  @override
  String get snackInvalidCredentials => 'ایمیل یا رمز عبور نادرست';

  @override
  String get snackPasswordMin8 => 'رمز عبور باید حداقل 8 کاراکتر باشد';

  @override
  String get snackPasswordMismatch => 'گذرواژه ها مطابقت ندارند.';

  @override
  String get snackAccountExists => 'حساب از قبل وجود دارد. لطفا وارد شوید';

  @override
  String get snackSignupFailed =>
      'ایجاد حساب امکان پذیر نیست. دوباره امتحان کنید.';

  @override
  String get snackEnterOtp => 'لطفا کد 6 رقمی را وارد کنید';

  @override
  String get snackOtpExpired => 'کد منقضی شده است';

  @override
  String get snackOtpExpiredBody => 'لطفا یک کد جدید درخواست کنید.';

  @override
  String get snackInvalidCode => 'کد نامعتبر';

  @override
  String get snackInvalidCodeBody => 'کد نادرست است. لطفا دوباره امتحان کنید.';

  @override
  String get snackSendCodeFailed =>
      'کد ارسال نشد. اتصال خود را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get snackEmptyFolder => 'پوشه خالی';

  @override
  String get snackEmptyFolderBody => 'هیچ فایلی در پوشه انتخاب شده یافت نشد.';

  @override
  String get snackFolderUnsupported => 'پشتیبانی نمی شود';

  @override
  String get snackFolderUnsupportedBody =>
      'آپلود پوشه در این پلتفرم در دسترس نیست.';

  @override
  String get snackFolderReadError => 'نمی توان پوشه انتخاب شده را خواند.';

  @override
  String get snackLimitReached => 'به حد مجاز رسیده است';

  @override
  String get snackLimitFilesBody =>
      'برخی از فایل‌ها به دلیل محدودیت اندازه یا تعداد فایل اضافه نشدند.';

  @override
  String get snackFreePlanLimit =>
      'طرح رایگان حداکثر 5 گیگابایت در هر انتقال را امکان پذیر می کند. لطفاً برخی از فایل ها را حذف یا ارتقا دهید.';

  @override
  String get snackSignInEmail => 'لطفا برای ارسال از طریق ایمیل وارد شوید.';

  @override
  String get snackUploadStartFailed => 'آپلود شروع نشد.';

  @override
  String get snackVerifyEnterCode => 'کد 4 رقمی را از ایمیل خود وارد کنید.';

  @override
  String get snackVerifyInvalid =>
      'کد نامعتبر یا منقضی شده است. ایمیل را بررسی کنید و دوباره امتحان کنید.';

  @override
  String get snackVerifyResendFailed =>
      'امکان ارسال مجدد کد وجود ندارد. دوباره امتحان کنید.';

  @override
  String get snackDownloadComplete => 'دانلود کامل شد';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" در دانلودها ذخیره شد';
  }

  @override
  String get snackDownloadFailed => 'دانلود انجام نشد';

  @override
  String get snackSaved => 'ذخیره شد';

  @override
  String get snackServerUrlUpdated =>
      'URL سرور به روز شد. برای اعمال، برنامه را مجددا راه اندازی کنید.';

  @override
  String get snackStoreError => 'خطای فروشگاه';

  @override
  String get snackMissingProducts => 'محصولات گم شده';

  @override
  String get snackStoreUnavailable => 'فروشگاه در دسترس نیست';

  @override
  String get snackStoreUnavailableBody =>
      'خریدهای درون برنامه ای در این دستگاه در دسترس نیستند.';

  @override
  String get snackProductNotLoaded => 'محصول هنوز بارگذاری نشده است.';

  @override
  String get snackRestoreStarted => 'بازیابی شروع شد';

  @override
  String get snackRestoreStartedBody => 'ما در حال بررسی خریدهای شما هستیم.';

  @override
  String get snackRestoreFailed => 'بازیابی انجام نشد';

  @override
  String get snackProcessing => 'پردازش';

  @override
  String get snackPleaseWait => 'لطفا صبر کنید…';

  @override
  String get snackSuccess => 'موفقیت';

  @override
  String get snackPurchaseCompleted => 'خرید تکمیل شد';

  @override
  String get snackPurchaseError => 'خطای خرید';

  @override
  String get snackPurchaseFailed => 'خرید ناموفق بود.';

  @override
  String get snackCanceled => 'لغو شد';

  @override
  String get snackPurchaseCanceled => 'خرید لغو شد.';

  @override
  String get snackUpload => 'آپلود کنید';

  @override
  String get snackVerify => 'تأیید کنید';

  @override
  String get doNotExpire => 'منقضی نشود';

  @override
  String get hourSingular => 'ساعت';

  @override
  String get hourPlural => 'ساعت';

  @override
  String get daySingular => 'روز';

  @override
  String get dayPlural => 'روز';

  @override
  String get emailAddressLabel => 'آدرس ایمیل';

  @override
  String get passwordLabelCaps => 'رمز عبور';

  @override
  String get confirmPasswordLabelCaps => 'رمز عبور را تأیید کنید';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'پیوند یا شناسه انتقال';

  @override
  String get howToReceive => 'نحوه دریافت';

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
  String get planAdsTitle => 'طرح تبلیغات';

  @override
  String get planAdsBullet1 => 'دسترسی به برنامه رایگان تبلیغات';

  @override
  String get planAdsBullet2 => 'تمام تبلیغات را حذف کنید';

  @override
  String get planProTitle => 'طرح حرفه ای';

  @override
  String get planProBullet1 => 'ارسال فایل تا 20 گیگابایت';

  @override
  String get planProBullet2 => 'آپلود سریع';

  @override
  String get planPremiumTitle => 'طرح حق بیمه';

  @override
  String get planPremiumBullet1 => 'ارسال فایل تا 100 گیگابایت';

  @override
  String get planPremiumBullet2 => 'آپلود فوق العاده سریع';

  @override
  String get planSubscriptionDisclaimer =>
      'بدون دوره آزمایشی - برای استفاده از عملکرد اضافی برنامه، اشتراک لازم است. بلافاصله از شما شارژ می شود. هر زمان که بخواهید می توانید لغو کنید.';

  @override
  String get perMonth => '/ ماه';

  @override
  String get perYear => '/ سال';

  @override
  String get snackConnectionProblem => 'مشکل اتصال لطفا دوباره امتحان کنید.';

  @override
  String get networkTitle => 'شبکه';

  @override
  String transferIdLabel(String id) {
    return 'شناسه: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'فایل ها: $count · $size بایت';
  }

  @override
  String todayAt(String time) {
    return 'امروز · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'دیروز · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$daysروز پیش · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount مگابایت';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining باقی مانده است';
  }

  @override
  String get loadingShort => 'در حال بارگیری…';

  @override
  String get colorPaletteTitle => 'پالت رنگ';

  @override
  String get colorPaletteSectionBackgrounds => 'پس زمینه (مقیاس جوهر)';

  @override
  String get colorPaletteSectionAccent => 'لهجه / اولیه';

  @override
  String get colorPaletteSectionText => 'متن';

  @override
  String get colorPaletteSectionBorders => 'حاشیه و شیشه';

  @override
  String get colorPaletteSectionSemantic => 'معنایی';

  @override
  String get colorPaletteSectionLive => 'طرح زمینه زنده (جاری)';

  @override
  String get colorPaletteActiveHint =>
      '★ = به طور فعال در صفحه نمایش استفاده می شود';

  @override
  String get colorPaletteCopyHint =>
      'برای کپی کردن مقدار هگز، هر نمونه را به مدت طولانی فشار دهید.';

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
  String get settingsAppBrand => 'بزرگ را به اشتراک بگذارید\nفایل های ویدیویی';

  @override
  String get loginEmailPasswordPrompt =>
      'برای ورود ایمیل و رمز عبور خود را وارد کنید.';

  @override
  String get forgotPassword => 'رمز عبور را فراموش کرده اید؟';

  @override
  String get forgotPasswordTitle => 'بازنشانی رمز عبور';

  @override
  String get forgotPasswordBody =>
      'ایمیل حساب خود را وارد کنید و ما یک کد بازنشانی ارسال می کنیم.';

  @override
  String get forgotPasswordSubmit => 'ارسال کد ریست';

  @override
  String get resetPasswordTitle => 'رمز عبور جدید ایجاد کنید';

  @override
  String get resetPasswordBody =>
      'کد 6 رقمی را از ایمیل خود وارد کرده و رمز عبور جدید را انتخاب کنید.';

  @override
  String get resetPasswordSubmit => 'رمز عبور را به روز کنید';

  @override
  String get snackPasswordResetSent => 'بازنشانی کد ارسال شد';

  @override
  String get snackPasswordResetSentBody =>
      'ایمیل خود را برای یک کد بازنشانی 6 رقمی بررسی کنید.';

  @override
  String get snackPasswordResetFailed =>
      'کد بازنشانی ارسال نشد. دوباره امتحان کنید.';

  @override
  String get snackPasswordUpdated => 'رمز به روز شد';

  @override
  String get snackPasswordUpdatedBody => 'با رمز عبور جدید خود وارد شوید.';

  @override
  String get snackPasswordResetInvalid =>
      'کد بازنشانی نامعتبر یا منقضی شده است.';

  @override
  String get otpDigitLabel => 'کد 6 رقمی';

  @override
  String receiveMoreFiles(int count) {
    return '+$count فایل های بیشتر';
  }
}
