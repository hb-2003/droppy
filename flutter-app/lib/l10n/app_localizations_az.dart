// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Böyük Video Faylları Paylaşın';

  @override
  String get heroAccent => 'dərhal.';

  @override
  String get heroTitle => 'Ağır faylları göndərin';

  @override
  String get splashLoading => 'Yüklənir...';

  @override
  String get navSend => 'İdarə paneli';

  @override
  String get navHome => 'Ev';

  @override
  String get navHistory => 'Tarix';

  @override
  String get navReceive => 'Qəbul edin';

  @override
  String get navPlans => 'Planlar';

  @override
  String get navDownload => 'Yüklə';

  @override
  String get navSettings => 'Parametrlər';

  @override
  String get modeLink => 'Link əldə edin';

  @override
  String get modeEmail => 'E-poçtla göndərin';

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
  String get pickFiles => 'Faylları seçin';

  @override
  String get pickFolder => 'Qovluq seçin';

  @override
  String get emailFrom => 'E-poçtunuz';

  @override
  String get mailFromUsesAccount =>
      'Daxil olduğunuz e-poçtunuzdan istifadə edir.';

  @override
  String get recipientEmailsHelper =>
      'Çoxsaylı alıcılar: vergül, nöqtəli vergül və ya boşluqla ayırın.';

  @override
  String get emailTo => 'Alıcı e-poçtu';

  @override
  String get messageOptional => 'Mesaj (istəyə görə)';

  @override
  String get passwordOptional => 'Parol (isteğe bağlı)';

  @override
  String get destructAfterDownload => 'Yüklədikdən sonra silin';

  @override
  String get destructNo => 'Mövcud saxlayın';

  @override
  String get sendButton => 'Göndər';

  @override
  String get uploading => 'Yüklənir...';

  @override
  String get uploadComplete => 'Bitdi';

  @override
  String get shareLinkTitle => 'Sizin linkiniz';

  @override
  String get copyLink => 'Linki kopyalayın';

  @override
  String get share => 'Paylaşın';

  @override
  String get shareQrCode => 'QR kodu paylaşın';

  @override
  String get uploadMore => 'Başqasını göndər';

  @override
  String get emailSentTitle => 'E-poçtlar göndərildi';

  @override
  String get verifyEmailTitle => 'E-poçtunuzu doğrulayın';

  @override
  String get verifyCodeHint => 'E-poçtunuzdan kodu daxil edin';

  @override
  String get verifySubmit => 'Doğrulayın';

  @override
  String get verifyResendCode => 'Kodu yenidən göndərin';

  @override
  String get verifyCodeSent => 'E-poçtunuza yeni doğrulama kodu göndərildi.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Doğrulama e-poçtu göndərilməmiş ola bilər';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Server çatdırılmanı təsdiq edə bilmədi (tez-tez SMTP səhv konfiqurasiya edilir). Sayt admininizdən admin panelində Poçt parametrlərini yoxlamağı xahiş edin, sonra Kodu yenidən göndərin üzərinə klikləyin.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Əgər o gəlmirsə: Junk/Spam və Promosyonları yoxlayın, bir dəqiqə gözləyin, $email-də yazı xətası olmadığını təsdiqləyin, sonra Yenidən Göndər üzərinə klikləyin.';
  }

  @override
  String get loginTitle => 'Daxil olun';

  @override
  String get signupHint =>
      'Sayt hesabı e-poçtunuzu və şifrənizi istifadə edin.';

  @override
  String get emailHint => 'E-poçt';

  @override
  String get passwordHint => 'parol';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get signIn => 'Daxil olun';

  @override
  String get downloadIdHint => 'Transfer ID';

  @override
  String get privateIdHint => 'Şəxsi ID (isteğe bağlı)';

  @override
  String get fetchTransfer => 'Köçürməni açın';

  @override
  String get downloadFile => 'Yüklə';

  @override
  String get unlockDownload => 'Yükləmə kilidini açın';

  @override
  String get downloadSaved => 'Endirmələr bölməsində yadda saxlandı';

  @override
  String get errorGeneric => 'Nəsə xəta baş verdi';

  @override
  String get errorNetwork => 'Şəbəkə xətası';

  @override
  String get errorBadResponse => 'Gözlənilməz server cavabı';

  @override
  String get termsAccept => 'Mən şərtlərlə razıyam';

  @override
  String get settingsApiUrl => 'İctimai saytın URL-i';

  @override
  String get settingsAccount => 'Hesab';

  @override
  String get settingsAppearance => 'Görünüş';

  @override
  String get settingsTheme => 'Mövzu';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'İşıq';

  @override
  String get themeDark => 'Qaranlıq';

  @override
  String get settingsSignedIn => 'Siz daxil olmusunuz.';

  @override
  String get settingsSignedOut => 'Siz daxil olmamısınız.';

  @override
  String get settingsOpenWebsite => 'Veb saytı açın';

  @override
  String get signUp => 'Qeydiyyatdan keçin';

  @override
  String get settingsLinks => 'Bağlantılar';

  @override
  String get privacyPolicy => 'Məxfilik siyasəti';

  @override
  String get termsOfService => 'Xidmət şərtləri';

  @override
  String get about => 'Haqqında';

  @override
  String get moreApps => 'Daha çox proqram';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get languageEnglish => 'İngilis dili';

  @override
  String get languageHindi => 'hind';

  @override
  String get logout => 'Çıxın';

  @override
  String get deleteAccount => 'Hesabı silin';

  @override
  String get deleteAccountConfirmTitle => 'Hesabınız silinsin?';

  @override
  String get deleteAccountConfirmBody =>
      'Bu, hesabınızı həmişəlik silir və sizi hesabdan çıxarır. Transfer bağlantılarınız işləməyə davam edəcək, lakin onlar daha tarixinizdə görünməyəcək.';

  @override
  String get deleteAccountSuccess => 'Hesab silindi';

  @override
  String get deleteAccountSuccessBody => 'Hesabınız silindi.';

  @override
  String get deleteAccountFailed => 'Hesabı silmək mümkün olmadı';

  @override
  String get deleteAccountFailedBody =>
      'Yenidən cəhd edin və ya dəstək ilə əlaqə saxlayın.';

  @override
  String get maxFilesReached => 'Həddindən artıq fayl';

  @override
  String get fileTooLarge => 'Fayl çox böyükdür';

  @override
  String get ipLimit => 'Bu şəbəkədən həddən artıq çox yükləmələr';

  @override
  String get fillFields => 'Zəhmət olmasa tələb olunan sahələri doldurun';

  @override
  String get invalidEmail => 'Etibarsız e-poçt';

  @override
  String get maxRecipientsReached => 'Həddən çox alıcı';

  @override
  String get loginRequiredTitle => 'Giriş tələb olunur';

  @override
  String get loginRequiredBody =>
      'Bu server yükləmək və ya yükləmək üçün hesab tələb edir.';

  @override
  String get settingsSubtitle => 'Tətbiq seçimləri və hesab.';

  @override
  String get dropHeavyFile => 'Ağır bir faylı bura buraxın.';

  @override
  String upToTotal(String max) {
    return '$max cəmi qədər';
  }

  @override
  String get removeAll => 'Hamısını silin';

  @override
  String get addFiles => 'Fayllar əlavə edin';

  @override
  String get adding => 'Əlavə edilir...';

  @override
  String get options => 'Seçimlər';

  @override
  String get selfDestruct => 'Yüklədikdən sonra özünü məhv edin';

  @override
  String get expiry => 'İstifadə müddəti';

  @override
  String get cancelUpload => 'Yükləməni ləğv edin';

  @override
  String get transferReady => 'Transfer hazırdır!';

  @override
  String get emailSentReady => 'E-poçt göndərildi!';

  @override
  String get shareRecipientHint => 'Bu linki alıcınızla paylaşın.';

  @override
  String get emailSentBody => 'Biz sizin alıcı(lar)ınızı xəbərdar etmişik.';

  @override
  String get scanQr => 'Transfer linkini açmaq üçün skan edin.';

  @override
  String get shareLinkButton => 'LİNKİ PAYLAŞIN';

  @override
  String get verifyFourDigit =>
      'Göndərən e-poçtunuza göndərilən 4 rəqəmli kodu daxil edin.';

  @override
  String get starting => 'Başlanır...';

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
    return '$amount MB qalıb';
  }

  @override
  String get fillField => 'Zəhmət olmasa bu sahəni doldurun.';

  @override
  String get enterValidEmail => 'Etibarlı e-poçt ünvanını daxil edin.';

  @override
  String get message => 'Mesaj';

  @override
  String get recipientEmail => 'Alıcı e-poçtu';

  @override
  String get active => 'Aktiv';

  @override
  String get expired => 'İstifadə müddəti bitdi';

  @override
  String get historyTitle => 'Köçürmələrim';

  @override
  String get signInToSeeTransfers => 'Köçürmələrinizi görmək üçün daxil olun';

  @override
  String get signInTransfersBody =>
      'Köçürmələri hesabınıza bağlamaq üçün e-poçtunuzdan istifadə edirik – parol tələb olunmur.';

  @override
  String get couldNotLoadTransfers => 'Köçürmələri yükləmək mümkün olmadı';

  @override
  String get retry => 'Yenidən cəhd edin';

  @override
  String get noTransfersYet => 'Hələlik transfer yoxdur';

  @override
  String get noTransfersBody => 'Fayl göndərdikdən sonra o, burada görünəcək.';

  @override
  String get transferDetails => 'Transfer təfərrüatları';

  @override
  String get filesSection => 'Fayllar';

  @override
  String get receiveTitle => 'Faylları qəbul edin';

  @override
  String get receiveSubtitle =>
      'Faylları endirmək üçün köçürmə linkini yapışdırın.';

  @override
  String get pasteTooltip => 'Yapışdırın';

  @override
  String get findTransfer => 'Transferi tapın';

  @override
  String get receiveScanQr => 'QR skan edin';

  @override
  String get receiveScanQrTitle => 'QR köçürməsini skan edin';

  @override
  String get receiveScanQrHint => 'QR kodunu çərçivənin içərisinə düzün.';

  @override
  String get receiveScanQrInvalid =>
      'Bu QR kodu etibarlı transfer linki deyil.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR kodları skan etmək üçün kameraya giriş tələb olunur.';

  @override
  String get receiveStepGetLink => 'Linki əldə edin';

  @override
  String get receiveStepGetLinkBody =>
      'Göndərəndən köçürmə linkini sizinlə paylaşmasını xahiş edin.';

  @override
  String get receiveStepPaste => 'Yapışdırın və tapın';

  @override
  String get receiveStepPasteBody =>
      'Yuxarıdakı linki yapışdırın və \"Köçürməni tap\" üzərinə klikləyin.';

  @override
  String get receiveStepDownload => 'Faylları yükləyin';

  @override
  String get receiveStepDownloadBody =>
      'Fayl təfərrüatlarına baxın və hər şeyi bir anda endirin.';

  @override
  String get lookingUpTransfer => 'Transfer axtarılır...';

  @override
  String get transferNotFound =>
      'Transfer tapılmadı. Linki yoxlayın və yenidən cəhd edin.';

  @override
  String get transferExpired =>
      'Bu transferin vaxtı bitib və artıq mövcud deyil.';

  @override
  String get transferLoginRequired =>
      'Bu transferə daxil olmaq üçün daxil olmaq tələb olunur.';

  @override
  String get transferBadResponse =>
      'Gözlənilməz server cavabı. Bağlantınızı yoxlayın.';

  @override
  String get transferNetworkError =>
      'Şəbəkə xətası. İnternet bağlantınızı yoxlayın.';

  @override
  String transferLoadFailed(String error) {
    return 'Transferi yükləmək mümkün olmadı: $error';
  }

  @override
  String get passwordProtected => 'Parol qorunur';

  @override
  String get enterPassword => 'parol daxil edin';

  @override
  String get unlock => 'Kilidi aç';

  @override
  String get downloading => 'Endirilir...';

  @override
  String get downloadAllFiles => 'Bütün faylları yükləyin';

  @override
  String get downloadSingleFile => 'Faylı endirin';

  @override
  String get receiveAnother => 'Başqa bir köçürmə alın';

  @override
  String get plansTitle => 'Planlar';

  @override
  String get plansSubtitle =>
      'Reklamları silmək və daha böyük faylları göndərmək üçün təkmilləşdirin.';

  @override
  String get storeUnavailable => 'Mağaza mövcud deyil';

  @override
  String get storeUnavailableBody =>
      'Tətbiqdaxili satınalmalar hazırda mövcud deyil.';

  @override
  String get storeLoadingPrices => 'App Store-dan qiymətlər yüklənir...';

  @override
  String get storePricesUnavailable => 'Qiymətlər mövcud deyil';

  @override
  String get storePricesPartial => 'Bəzi qiymətləri yükləmək mümkün olmadı';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$total abunə məhsullarından $loaded yükləndi.';
  }

  @override
  String get storeSetupHint =>
      'Həqiqi iPhone-da (Simulyator deyil) sınaqdan keçirin, Sandbox Apple ID-dən istifadə edin və bütün 6 abunəliyin bu proqram paketi ID-si altında App Store Connect-də yaradıldığından əmin olun.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ay';
  }

  @override
  String get freeVersionAds =>
      'Hal-hazırda siz reklamlarla pulsuz versiyamızdan istifadə edirsiniz';

  @override
  String get restorePurchases => 'Satınalmaları bərpa edin';

  @override
  String get plansContinue => 'Davam et';

  @override
  String get planLinkRestore => 'Bərpa et';

  @override
  String get termsAndConditions => 'Qaydalar və şərtlər';

  @override
  String get createAccountTitle => 'Hesab yaradın';

  @override
  String get signUpSubtitle => 'E-poçt və parol ilə qeydiyyatdan keçin.';

  @override
  String get confirmPassword => 'Şifrəni təsdiqləyin';

  @override
  String get passwordMin8 => 'Parol (min 8 simvol)';

  @override
  String get alreadyHaveAccount => 'Artıq hesabınız var?';

  @override
  String get checkEmailTitle => 'Özünüzü yoxlayın\ne-poçt';

  @override
  String otpSentTo(String email) {
    return '6 rəqəmli kod göndərdik\n$email';
  }

  @override
  String get verifyAndSignIn => 'Doğrulayın və daxil olun';

  @override
  String get didntReceiveCode => 'Almadınız?';

  @override
  String get tryAgain => 'Yenidən cəhd edin';

  @override
  String get otpExpiresHint =>
      'Kodun müddəti 5 dəqiqə ərzində bitir. Əgər onu görmürsünüzsə, spam qovluğunuzu yoxlayın.';

  @override
  String get snackError => 'Xəta';

  @override
  String get snackCopied => 'Kopyalandı';

  @override
  String get snackCopiedBody => 'Link buferə kopyalandı';

  @override
  String get snackWelcome => 'Xoş gəldiniz';

  @override
  String get snackAccountCreated => 'Hesab yaradıldı';

  @override
  String get snackEnterEmail => 'E-poçtunuzu daxil edin';

  @override
  String get snackEnterPassword => 'Zəhmət olmasa parolunuzu daxil edin';

  @override
  String get snackInvalidEmail => 'Yanlış e-poçt ünvanı';

  @override
  String get snackInvalidCredentials => 'Yanlış e-poçt və ya parol';

  @override
  String get snackPasswordMin8 => 'Parol ən azı 8 simvoldan ibarət olmalıdır';

  @override
  String get snackPasswordMismatch => 'Parollar uyğun gəlmir.';

  @override
  String get snackAccountExists =>
      'Hesab artıq mövcuddur. Zəhmət olmasa daxil olun.';

  @override
  String get snackSignupFailed =>
      'Hesab yaratmaq mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get snackEnterOtp => 'Zəhmət olmasa 6 rəqəmli kodu daxil edin';

  @override
  String get snackOtpExpired => 'Kodun müddəti bitdi';

  @override
  String get snackOtpExpiredBody => 'Yeni kod tələb edin.';

  @override
  String get snackInvalidCode => 'Yanlış kod';

  @override
  String get snackInvalidCodeBody => 'Kod səhvdir. Yenidən cəhd edin.';

  @override
  String get snackSendCodeFailed =>
      'Kodu göndərmək mümkün olmadı. Bağlantınızı yoxlayın və yenidən cəhd edin.';

  @override
  String get snackEmptyFolder => 'Boş qovluq';

  @override
  String get snackEmptyFolderBody =>
      'Seçilmiş qovluqda heç bir fayl tapılmadı.';

  @override
  String get snackFolderUnsupported => 'Dəstəklənmir';

  @override
  String get snackFolderUnsupportedBody =>
      'Qovluq yükləmə bu platformada mövcud deyil.';

  @override
  String get snackFolderReadError => 'Seçilmiş qovluğu oxumaq mümkün olmadı.';

  @override
  String get snackLimitReached => 'Limitə çatıldı';

  @override
  String get snackLimitFilesBody =>
      'Bəzi fayllar ölçüsü və ya fayl sayı limitlərinə görə əlavə edilmədi.';

  @override
  String get snackFreePlanLimit =>
      'Pulsuz plan hər transfer üçün 5 GB-a qədər imkan verir. Lütfən, bəzi faylları silin və ya təkmilləşdirin.';

  @override
  String get snackSignInEmail => 'E-poçt ilə göndərmək üçün daxil olun.';

  @override
  String get snackUploadStartFailed => 'Yükləməyə başlamaq mümkün olmadı.';

  @override
  String get snackVerifyEnterCode => 'E-poçtunuzdan 4 rəqəmli kodu daxil edin.';

  @override
  String get snackVerifyInvalid =>
      'Yanlış və ya vaxtı keçmiş kod. E-poçtu yoxlayın və yenidən cəhd edin.';

  @override
  String get snackVerifyResendFailed =>
      'Kodu yenidən göndərmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get snackDownloadComplete => 'Yükləmə tamamlandı';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" Endirmələr bölməsində yadda saxlanıldı';
  }

  @override
  String get snackDownloadFailed => 'Yükləmə uğursuz oldu';

  @override
  String get snackSaved => 'Saxlandı';

  @override
  String get snackServerUrlUpdated =>
      'Server URL yeniləndi. Müraciət etmək üçün proqramı yenidən başladın.';

  @override
  String get snackStoreError => 'Mağaza xətası';

  @override
  String get snackMissingProducts => 'Çatışmayan məhsullar';

  @override
  String get snackStoreUnavailable => 'Mağaza mövcud deyil';

  @override
  String get snackStoreUnavailableBody =>
      'Tətbiqdaxili satınalmalar bu cihazda mövcud deyil.';

  @override
  String get snackProductNotLoaded => 'Məhsul hələ yüklənməyib.';

  @override
  String get snackRestoreStarted => 'Bərpa başladı';

  @override
  String get snackRestoreStartedBody => 'Alışlarınızı yoxlayırıq.';

  @override
  String get snackRestoreFailed => 'Bərpa edilmədi';

  @override
  String get snackProcessing => 'Emal edilir';

  @override
  String get snackPleaseWait => 'Zəhmət olmasa gözləyin...';

  @override
  String get snackSuccess => 'Uğur';

  @override
  String get snackPurchaseCompleted => 'Satınalma tamamlandı.';

  @override
  String get snackPurchaseError => 'Satınalma xətası';

  @override
  String get snackPurchaseFailed => 'Alış alınmadı.';

  @override
  String get snackCanceled => 'Ləğv edildi';

  @override
  String get snackPurchaseCanceled => 'Satınalma ləğv edildi.';

  @override
  String get snackUpload => 'Yüklə';

  @override
  String get snackVerify => 'Doğrulayın';

  @override
  String get doNotExpire => 'Müddəti bitməsin';

  @override
  String get hourSingular => 'saat';

  @override
  String get hourPlural => 'saat';

  @override
  String get daySingular => 'gün';

  @override
  String get dayPlural => 'günlər';

  @override
  String get emailAddressLabel => 'E-poçt ünvanı';

  @override
  String get passwordLabelCaps => 'ŞİFRƏ';

  @override
  String get confirmPasswordLabelCaps => 'ŞİFRƏNİ TƏQDİM EDİN';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'Köçürmə Linki və ya ID';

  @override
  String get howToReceive => 'NECƏ QƏBUL ETMƏK';

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
  String get planAdsTitle => 'Reklam Planı';

  @override
  String get planAdsBullet1 => 'Reklamsız proqrama giriş';

  @override
  String get planAdsBullet2 => 'Bütün reklamları silin';

  @override
  String get planProTitle => 'Pro Planı';

  @override
  String get planProBullet1 => '20 GB-a qədər faylları göndərin';

  @override
  String get planProBullet2 => 'Sürətli Yükləmə';

  @override
  String get planPremiumTitle => 'Premium Plan';

  @override
  String get planPremiumBullet1 => '100 GB-a qədər faylları göndərin';

  @override
  String get planPremiumBullet2 => 'Super sürətli yükləmə';

  @override
  String get planSubscriptionDisclaimer =>
      'Sınaq müddəti yoxdur — əlavə proqram funksionallığından istifadə etmək üçün abunəlik tələb olunur. Sizdən dərhal ödəniş tutulacaq. İstənilən vaxt ləğv edə bilərsiniz.';

  @override
  String get perMonth => '/ ay';

  @override
  String get perYear => '/ il';

  @override
  String get snackConnectionProblem => 'Bağlantı problemi. Yenidən cəhd edin.';

  @override
  String get networkTitle => 'Şəbəkə';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Fayllar: $count · $size bayt';
  }

  @override
  String todayAt(String time) {
    return 'Bu gün · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Dünən · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}g əvvəl · $time';
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
    return '$sent / $total • $remaining sol';
  }

  @override
  String get loadingShort => 'Yüklənir...';

  @override
  String get colorPaletteTitle => 'Rəng Palitrası';

  @override
  String get colorPaletteSectionBackgrounds => 'Fonlar (mürəkkəb miqyası)';

  @override
  String get colorPaletteSectionAccent => 'Vurğu / Əsas';

  @override
  String get colorPaletteSectionText => 'Mətn';

  @override
  String get colorPaletteSectionBorders => 'Sərhədlər və Şüşə';

  @override
  String get colorPaletteSectionSemantic => 'Semantik';

  @override
  String get colorPaletteSectionLive => 'Canlı Mövzu (cari)';

  @override
  String get colorPaletteActiveHint => '★ = ekranlarda fəal istifadə olunur';

  @override
  String get colorPaletteCopyHint =>
      'Hex dəyərini kopyalamaq üçün istənilən nümunəyə uzun basın.';

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
  String get settingsAppBrand => 'Böyük Paylaşın\nVideo faylları';

  @override
  String get loginEmailPasswordPrompt =>
      'Daxil olmaq üçün e-poçt və şifrənizi daxil edin.';

  @override
  String get forgotPassword => 'Şifrəni unutmusunuz?';

  @override
  String get forgotPasswordTitle => 'Parolu sıfırlayın';

  @override
  String get forgotPasswordBody =>
      'Hesab e-poçtunuzu daxil edin və biz sıfırlama kodu göndərəcəyik.';

  @override
  String get forgotPasswordSubmit => 'Sıfırlama kodunu göndərin';

  @override
  String get resetPasswordTitle => 'Yeni parol yaradın';

  @override
  String get resetPasswordBody =>
      'E-poçtunuzdan 6 rəqəmli kodu daxil edin və yeni parol seçin.';

  @override
  String get resetPasswordSubmit => 'Parolu yeniləyin';

  @override
  String get snackPasswordResetSent => 'Sıfırlama kodu göndərildi';

  @override
  String get snackPasswordResetSentBody =>
      '6 rəqəmli sıfırlama kodu üçün e-poçtunuzu yoxlayın.';

  @override
  String get snackPasswordResetFailed =>
      'Sıfırlama kodunu göndərmək mümkün olmadı. Yenidən cəhd edin.';

  @override
  String get snackPasswordUpdated => 'Parol yeniləndi';

  @override
  String get snackPasswordUpdatedBody => 'Yeni parolunuzla daxil olun.';

  @override
  String get snackPasswordResetInvalid =>
      'Yanlış və ya vaxtı keçmiş sıfırlama kodu.';

  @override
  String get otpDigitLabel => '6-RƏQMƏLİ KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count daha çox fayl';
  }
}
