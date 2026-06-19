// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Büyük Video Dosyalarını anında paylaşın';

  @override
  String get heroAccent => 'anında.';

  @override
  String get heroTitle => 'Ağır gönder dosyalar';

  @override
  String get splashLoading => 'Yükleniyor…';

  @override
  String get navSend => 'Gösterge Paneli';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navHistory => 'Geçmiş';

  @override
  String get navReceive => 'Al';

  @override
  String get navPlans => 'Planlar';

  @override
  String get navDownload => 'İndir';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get modeLink => 'Al bir bağlantı';

  @override
  String get modeEmail => 'E-posta ile gönder';

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
  String get pickFiles => 'Dosya seç';

  @override
  String get pickFolder => 'Klasör seç';

  @override
  String get emailFrom => 'E-postanız';

  @override
  String get mailFromUsesAccount =>
      'Oturum açmış olduğunuz e-posta adresinizi kullanır.';

  @override
  String get recipientEmailsHelper =>
      'Birden fazla alıcı: virgül, noktalı virgül veya ile ayırın boşluklar.';

  @override
  String get emailTo => 'Alıcı e-postası';

  @override
  String get messageOptional => 'Mesaj (isteğe bağlı)';

  @override
  String get passwordOptional => 'Şifre (isteğe bağlı)';

  @override
  String get destructAfterDownload => 'İndirdikten sonra sil';

  @override
  String get destructNo => 'Sakla mevcut';

  @override
  String get sendButton => 'Gönder';

  @override
  String get uploading => 'Yükleniyor…';

  @override
  String get uploadComplete => 'Bitti';

  @override
  String get shareLinkTitle => 'Bağlantınız';

  @override
  String get copyLink => 'Bağlantıyı kopyala';

  @override
  String get share => 'Paylaş';

  @override
  String get shareQrCode => 'QR kodunu paylaş';

  @override
  String get uploadMore => 'Gönder başka';

  @override
  String get emailSentTitle => 'E-postalar gönderildi';

  @override
  String get verifyEmailTitle => 'E-postanızı doğrulayın';

  @override
  String get verifyCodeHint => 'E-postanızdaki kodu girin';

  @override
  String get verifySubmit => 'Doğrula';

  @override
  String get verifyResendCode => 'Kodu tekrar gönder';

  @override
  String get verifyCodeSent =>
      'E-postanıza yeni bir doğrulama kodu gönderildi.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Doğrulama e-postası gönderilmemiş olabilir gönderildi';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Sunucu teslimatı onaylayamadı (genellikle SMTP yanlış yapılandırılmıştır). Site yöneticinizden yönetici panelinde Posta ayarlarını kontrol etmesini isteyin, ardından Kodu yeniden gönder\'e dokunun.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Gelmezse: Önemsiz/Spam ve Promosyonlar\'ı kontrol edin, bir dakika bekleyin, $email\'de yazım hatası olmadığını doğrulayın ve Yeniden Gönder\'e dokunun.';
  }

  @override
  String get loginTitle => 'Oturum açın';

  @override
  String get signupHint => 'Site hesabı e-postanızı kullanın ve şifre.';

  @override
  String get emailHint => 'E-posta';

  @override
  String get passwordHint => 'Şifre';

  @override
  String get cancel => 'İptal';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get downloadIdHint => 'Aktarım Kimliği';

  @override
  String get privateIdHint => 'Özel Kimlik (isteğe bağlı)';

  @override
  String get fetchTransfer => 'Aktarımı aç';

  @override
  String get downloadFile => 'İndir';

  @override
  String get unlockDownload => 'İndirmenin kilidini açın';

  @override
  String get downloadSaved => 'İndirilenler\'e kaydedildi';

  @override
  String get errorGeneric => 'Bir şeyler ters gitti';

  @override
  String get errorNetwork => 'Ağ hatası';

  @override
  String get errorBadResponse => 'Beklenmeyen sunucu yanıtı';

  @override
  String get termsAccept => 'Şartları kabul ediyorum';

  @override
  String get settingsApiUrl => 'Genel site URL';

  @override
  String get settingsAccount => 'Hesap';

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeSystem => 'Sistem';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get settingsSignedIn => 'Oturum açtınız.';

  @override
  String get settingsSignedOut => 'Oturum açmadınız in.';

  @override
  String get settingsOpenWebsite => 'Web sitesini aç';

  @override
  String get signUp => 'Kayıt olun';

  @override
  String get settingsLinks => 'Bağlantılar';

  @override
  String get privacyPolicy => 'Gizlilik politikası';

  @override
  String get termsOfService => 'Hizmet şartları';

  @override
  String get about => 'Hakkında';

  @override
  String get moreApps => 'Daha fazla apps';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get languageEnglish => 'İngilizce';

  @override
  String get languageHindi => 'Hintçe';

  @override
  String get logout => 'Çıkış yapın';

  @override
  String get deleteAccount => 'Hesabı silin';

  @override
  String get deleteAccountConfirmTitle => 'Hesabınız silinsin mi?';

  @override
  String get deleteAccountConfirmBody =>
      'Bu, hesabınızı kalıcı olarak siler ve oturumunuzu kapatır. Aktarım bağlantılarınız çalışmaya devam edecek ancak artık geçmişinizde görünmeyecek.';

  @override
  String get deleteAccountSuccess => 'Hesap silindi';

  @override
  String get deleteAccountSuccessBody => 'Hesabınız kaldırıldı.';

  @override
  String get deleteAccountFailed => 'Hesap silinemedi';

  @override
  String get deleteAccountFailedBody =>
      'Lütfen tekrar deneyin veya destek ekibiyle iletişime geçin.';

  @override
  String get maxFilesReached => 'Çok fazla dosya';

  @override
  String get fileTooLarge => 'Dosya da var büyük';

  @override
  String get ipLimit => 'Bu ağdan çok fazla yükleme';

  @override
  String get fillFields => 'Lütfen gerekli alanları doldurun';

  @override
  String get invalidEmail => 'Geçersiz e-posta';

  @override
  String get maxRecipientsReached => 'Çok fazla alıcı';

  @override
  String get loginRequiredTitle => 'Oturum açmanız gerekiyor';

  @override
  String get loginRequiredBody =>
      'Bu sunucu, yükleme veya indirme için bir hesap gerektiriyor.';

  @override
  String get settingsSubtitle => 'Uygulama tercihleri ve hesap.';

  @override
  String get dropHeavyFile => 'Buraya ağır bir dosya bırakın.';

  @override
  String upToTotal(String max) {
    return 'Toplam $max\'e kadar';
  }

  @override
  String get removeAll => 'Tümünü kaldır';

  @override
  String get addFiles => 'Dosya ekle';

  @override
  String get adding => 'Ekleniyor…';

  @override
  String get options => 'Seçenekler';

  @override
  String get selfDestruct => 'Sonra kendini imha et indir';

  @override
  String get expiry => 'Son kullanma tarihi';

  @override
  String get cancelUpload => 'Yüklemeyi iptal et';

  @override
  String get transferReady => 'Aktarım hazır!';

  @override
  String get emailSentReady => 'E-posta gönderildi!';

  @override
  String get shareRecipientHint => 'Bu bağlantıyı alıcınızla paylaşın.';

  @override
  String get emailSentBody => 'Alıcı(lar)ınızı bilgilendirdik.';

  @override
  String get scanQr => 'Aktarım bağlantısını açmak için tarayın.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Gönderen e-postanıza gönderilen 4 haneli kodu girin.';

  @override
  String get starting => 'Başlıyor…';

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
    return '$amount MB kaldı';
  }

  @override
  String get fillField => 'Lütfen bu alanı doldurun.';

  @override
  String get enterValidEmail => 'Geçerli bir kod girin e-posta.';

  @override
  String get message => 'Mesaj';

  @override
  String get recipientEmail => 'Alıcı e-postası';

  @override
  String get active => 'Aktif';

  @override
  String get expired => 'Süresi doldu';

  @override
  String get historyTitle => 'Transferlerim';

  @override
  String get signInToSeeTransfers => 'Transferlerinizi görmek için oturum açın';

  @override
  String get signInTransfersBody =>
      'E-postanızı, transferleri hesabınıza bağlamak için kullanıyoruz — şifreye gerek yok.';

  @override
  String get couldNotLoadTransfers => 'Yapılamadı aktarımları yükle';

  @override
  String get retry => 'Yeniden dene';

  @override
  String get noTransfersYet => 'Henüz aktarım yok';

  @override
  String get noTransfersBody =>
      'Bir dosya gönderdiğinizde, burada görünecektir.';

  @override
  String get transferDetails => 'Aktarım ayrıntıları';

  @override
  String get filesSection => 'Dosyalar';

  @override
  String get receiveTitle => 'Dosyaları Al';

  @override
  String get receiveSubtitle =>
      'İndirmek için bir aktarım bağlantısı yapıştırın dosyalar.';

  @override
  String get pasteTooltip => 'Yapıştır';

  @override
  String get findTransfer => 'Aktarım Bul';

  @override
  String get receiveScanQr => 'QR\'yi tara';

  @override
  String get receiveScanQrTitle => 'QR\'yi tarayın';

  @override
  String get receiveScanQrHint => 'QR kodunu çerçevenin içine hizalayın.';

  @override
  String get receiveScanQrInvalid =>
      'Bu QR kodu geçerli bir aktarım bağlantısı değil.';

  @override
  String get receiveScanQrCameraDenied =>
      'Kamera erişimi gereklidir QR kodlarını tarayın.';

  @override
  String get receiveStepGetLink => 'Bağlantıyı alın';

  @override
  String get receiveStepGetLinkBody =>
      'Gönderenden aktarım bağlantısını sizinle paylaşmasını isteyin.';

  @override
  String get receiveStepPaste => 'Yapıştır ve bul';

  @override
  String get receiveStepPasteBody =>
      'Bağlantıyı yukarıya yapıştırın ve \"Aktarımı Bul\"a dokunun.';

  @override
  String get receiveStepDownload => 'Dosyaları indirin';

  @override
  String get receiveStepDownloadBody =>
      'Dosya ayrıntılarını görün ve her şeyi şu adresten indirin: bir kez.';

  @override
  String get lookingUpTransfer => 'Transfer aranıyor…';

  @override
  String get transferNotFound =>
      'Transfer bulunamadı. Bağlantıyı kontrol edin ve tekrar deneyin.';

  @override
  String get transferExpired =>
      'Bu aktarımın süresi doldu ve artık kullanılamıyor.';

  @override
  String get transferLoginRequired =>
      'Bu aktarıma erişmek için oturum açmak gerekiyor.';

  @override
  String get transferBadResponse =>
      'Beklenmeyen sunucu yanıtı. Bağlantınızı kontrol edin.';

  @override
  String get transferNetworkError =>
      'Ağ hatası. İnternet bağlantınızı kontrol edin.';

  @override
  String transferLoadFailed(String error) {
    return 'Aktarım yüklenemedi: $error';
  }

  @override
  String get passwordProtected => 'Şifre korumalı';

  @override
  String get enterPassword => 'Şifreyi girin';

  @override
  String get unlock => 'Kilidi aç';

  @override
  String get downloading => 'İndiriliyor…';

  @override
  String get downloadAllFiles => 'Tüm dosyaları indir';

  @override
  String get downloadSingleFile => 'Dosyayı indir';

  @override
  String get receiveAnother => 'Başka bir aktarım alın';

  @override
  String get plansTitle => 'Planlar';

  @override
  String get plansSubtitle =>
      'Reklamları kaldırmak ve daha büyük dosyalar göndermek için yükseltme yapın.';

  @override
  String get storeUnavailable => 'Mağaza kullanılamıyor';

  @override
  String get storeUnavailableBody =>
      'Uygulama içi satın alımlar mevcut değil şimdi.';

  @override
  String get storeLoadingPrices => 'Fiyatlar App Store\'dan yükleniyor…';

  @override
  String get storePricesUnavailable => 'Fiyatlar mevcut değil';

  @override
  String get storePricesPartial => 'Bazı fiyatlar yüklenemedi';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded / $total abonelik ürünleri yüklendi.';
  }

  @override
  String get storeSetupHint =>
      'Gerçek bir iPhone\'da (Simülatör değil) test edin, Sandbox Apple Kimliği kullanın ve 6 aboneliğin tümünü sağlayın Fiyatlandırma seti ile App Store Connect\'te bu uygulamanın paket kimliği altında oluşturulur.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ay';
  }

  @override
  String get freeVersionAds =>
      'Şu anda reklamlarla birlikte ücretsiz sürümümüzü kullanıyorsunuz';

  @override
  String get restorePurchases => 'Satın alınanları geri yükle';

  @override
  String get plansContinue => 'Devam';

  @override
  String get planLinkRestore => 'Geri yükle';

  @override
  String get termsAndConditions => 'Şartlar ve koşullar';

  @override
  String get createAccountTitle => 'Hesap oluştur';

  @override
  String get signUpSubtitle => 'E-posta ve şifre ile kayıt olun.';

  @override
  String get confirmPassword => 'Şifreyi onaylayın';

  @override
  String get passwordMin8 => 'Şifre (en az 8 karakter)';

  @override
  String get alreadyHaveAccount => 'Zaten bir hesabınız var mı?';

  @override
  String get checkEmailTitle => 'Hesabınızı kontrol edin\nemail';

  @override
  String otpSentTo(String email) {
    return '6 haneli kodu şu adrese gönderdik:\n$email';
  }

  @override
  String get verifyAndSignIn => 'Doğrula ve Oturum aç';

  @override
  String get didntReceiveCode => 'Almadınız mı?';

  @override
  String get tryAgain => 'Tekrar deneyin';

  @override
  String get otpExpiresHint =>
      'Kodun süresi 5 dakika içinde dolacak. Görmüyorsanız spam klasörünüzü kontrol edin.';

  @override
  String get snackError => 'Hata';

  @override
  String get snackCopied => 'Kopyalandı';

  @override
  String get snackCopiedBody => 'Bağlantı panoya kopyalandı';

  @override
  String get snackWelcome => 'Hoş geldiniz';

  @override
  String get snackAccountCreated => 'Hesap oluşturuldu';

  @override
  String get snackEnterEmail => 'Lütfen e-posta adresinizi girin';

  @override
  String get snackEnterPassword => 'Lütfen e-posta adresinizi girin şifre';

  @override
  String get snackInvalidEmail => 'Geçersiz e-posta adresi';

  @override
  String get snackInvalidCredentials => 'Yanlış e-posta veya şifre';

  @override
  String get snackPasswordMin8 => 'Şifre en az 8 karakter olmalıdır';

  @override
  String get snackPasswordMismatch => 'Şifreler eşleşmiyor.';

  @override
  String get snackAccountExists => 'Hesap zaten mevcut. Lütfen oturum açın.';

  @override
  String get snackSignupFailed => 'Hesap oluşturulamadı. Tekrar deneyin.';

  @override
  String get snackEnterOtp => 'Lütfen 6 haneli kodu girin';

  @override
  String get snackOtpExpired => 'Kodun süresi doldu';

  @override
  String get snackOtpExpiredBody => 'Lütfen yeni bir kod isteyin.';

  @override
  String get snackInvalidCode => 'Geçersiz kod';

  @override
  String get snackInvalidCodeBody => 'Kod hatalı. Lütfen tekrar deneyin.';

  @override
  String get snackSendCodeFailed =>
      'Kod gönderilemedi. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get snackEmptyFolder => 'Klasörü boşalt';

  @override
  String get snackEmptyFolderBody => 'Seçilen klasörde dosya bulunamadı.';

  @override
  String get snackFolderUnsupported => 'Desteklenmiyor';

  @override
  String get snackFolderUnsupportedBody =>
      'Klasör yükleme bu platformda kullanılamıyor.';

  @override
  String get snackFolderReadError => 'Seçilen klasör okunamadı.';

  @override
  String get snackLimitReached => 'Sınıra ulaşıldı';

  @override
  String get snackLimitFilesBody =>
      'Bazı dosyalar boyut veya dosya sayısı sınırları nedeniyle eklenemedi.';

  @override
  String get snackFreePlanLimit =>
      'Ücretsiz plan izin veriyor aktarım başına 5 GB\'a kadar. Lütfen bazı dosyaları kaldırın veya yükseltin.';

  @override
  String get snackSignInEmail =>
      'E-posta ile göndermek için lütfen oturum açın.';

  @override
  String get snackUploadStartFailed => 'Yükleme başlatılamadı.';

  @override
  String get snackVerifyEnterCode => 'E-postanızdaki 4 haneli kodu girin.';

  @override
  String get snackVerifyInvalid =>
      'Geçersiz veya süresi dolmuş kod. E-postayı kontrol edip tekrar deneyin.';

  @override
  String get snackVerifyResendFailed =>
      'Kod yeniden gönderilemedi. Tekrar deneyin.';

  @override
  String get snackDownloadComplete => 'İndirme tamamlandı';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" İndirilenler\'e kaydedildi';
  }

  @override
  String get snackDownloadFailed => 'İndirme başarısız oldu';

  @override
  String get snackSaved => 'Kaydedildi';

  @override
  String get snackServerUrlUpdated =>
      'Sunucu URL\'si güncellendi. Uygulamayı uygulamak için uygulamayı yeniden başlatın.';

  @override
  String get snackStoreError => 'Mağaza hatası';

  @override
  String get snackMissingProducts => 'Eksik ürünler';

  @override
  String get snackStoreUnavailable => 'Mağaza kullanılamıyor';

  @override
  String get snackStoreUnavailableBody =>
      'Uygulama içi satın alımlar bu cihazda mevcut değil.';

  @override
  String get snackProductNotLoaded => 'Ürün henüz yüklenmedi.';

  @override
  String get snackRestoreStarted => 'Geri yükleme başlatıldı';

  @override
  String get snackRestoreStartedBody =>
      'Sitenizi kontrol ediyoruz satın alma işlemleri.';

  @override
  String get snackRestoreFailed => 'Geri yükleme başarısız oldu';

  @override
  String get snackProcessing => 'İşleniyor';

  @override
  String get snackPleaseWait => 'Lütfen bekleyin…';

  @override
  String get snackSuccess => 'Başarılı';

  @override
  String get snackPurchaseCompleted => 'Satın alma tamamlandı.';

  @override
  String get snackPurchaseError => 'Satın alma hatası';

  @override
  String get snackPurchaseFailed => 'Satın alma başarısız oldu.';

  @override
  String get snackCanceled => 'İptal edildi';

  @override
  String get snackPurchaseCanceled => 'Satın alma iptal edildi.';

  @override
  String get snackUpload => 'Yükleme';

  @override
  String get snackVerify => 'Doğrula';

  @override
  String get doNotExpire => 'Yapma sona erme';

  @override
  String get hourSingular => 'saat';

  @override
  String get hourPlural => 'saat';

  @override
  String get daySingular => 'gün';

  @override
  String get dayPlural => 'gün';

  @override
  String get emailAddressLabel => 'E-POSTA ADRESİ';

  @override
  String get passwordLabelCaps => 'ŞİFRE';

  @override
  String get confirmPasswordLabelCaps => 'ŞİFRENİ ONAYLA';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'AKTARIM BAĞLANTISI VEYA ID';

  @override
  String get howToReceive => 'NASIL ALINIR';

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
  String get planAdsBullet1 => 'Reklamlara ücretsiz uygulamaya erişim';

  @override
  String get planAdsBullet2 => 'Tüm reklamları kaldır';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => '20GB’a kadar dosya gönder';

  @override
  String get planProBullet2 => 'Hızlı Yükleme';

  @override
  String get planPremiumTitle => 'Premium Plan';

  @override
  String get planPremiumBullet1 => '100 GB\'a kadar dosya gönderin';

  @override
  String get planPremiumBullet2 => 'Süper hızlı yükleme';

  @override
  String get planSubscriptionDisclaimer =>
      'Deneme süresi yok — ek uygulama işlevselliğini kullanmak için abonelik gereklidir. Derhal ücretlendirileceksiniz. İstediğiniz zaman iptal edebilirsiniz.';

  @override
  String get perMonth => '/ ay';

  @override
  String get perYear => '/ yıl';

  @override
  String get snackConnectionProblem =>
      'Bağlantı sorunu. Lütfen tekrar deneyin.';

  @override
  String get networkTitle => 'Ağ';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Dosyalar: $count · $size bayt';
  }

  @override
  String todayAt(String time) {
    return 'Bugün · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Dün · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d önce · $time';
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
  String get loadingShort => 'Yükleniyor…';

  @override
  String get colorPaletteTitle => 'Renkli Palet';

  @override
  String get colorPaletteSectionBackgrounds => 'Arka Planlar (mürekkep ölçeği)';

  @override
  String get colorPaletteSectionAccent => 'Vurgu / Birincil';

  @override
  String get colorPaletteSectionText => 'Metin';

  @override
  String get colorPaletteSectionBorders => 'Kenarlıklar ve Cam';

  @override
  String get colorPaletteSectionSemantic => 'Semantik';

  @override
  String get colorPaletteSectionLive => 'Canlı Tema (güncel)';

  @override
  String get colorPaletteActiveHint => '★ = aktif olarak kullanılıyor ekranlar';

  @override
  String get colorPaletteCopyHint =>
      'Onaltılık değerini kopyalamak için herhangi bir renk örneğine uzun basın.';

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
  String get settingsAppBrand => 'Paylaş Büyük\nVideo Dosyaları';

  @override
  String get loginEmailPasswordPrompt =>
      'Giriş yapmak için e-posta adresinizi ve şifrenizi girin.';

  @override
  String get forgotPassword => 'Şifrenizi mi unuttunuz?';

  @override
  String get forgotPasswordTitle => 'Şifreyi sıfırlayın';

  @override
  String get forgotPasswordBody =>
      'Hesap e-postanızı girin, sıfırlama kodunu göndereceğiz.';

  @override
  String get forgotPasswordSubmit => 'Sıfırlama kodunu gönder';

  @override
  String get resetPasswordTitle => 'Yeni oluştur şifre';

  @override
  String get resetPasswordBody =>
      'E-postanızdaki 6 haneli kodu girin ve yeni bir şifre seçin.';

  @override
  String get resetPasswordSubmit => 'Şifreyi güncelle';

  @override
  String get snackPasswordResetSent => 'Kodu sıfırla gönderildi';

  @override
  String get snackPasswordResetSentBody =>
      '6 haneli sıfırlama kodu için e-postanızı kontrol edin.';

  @override
  String get snackPasswordResetFailed =>
      'Sıfırlama kodu gönderilemedi. Tekrar deneyin.';

  @override
  String get snackPasswordUpdated => 'Şifre güncellendi';

  @override
  String get snackPasswordUpdatedBody => 'Yeni şifrenizle oturum açın.';

  @override
  String get snackPasswordResetInvalid =>
      'Geçersiz veya süresi dolmuş sıfırlama kodu.';

  @override
  String get otpDigitLabel => '6 BASAMAKLI KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+$count daha fazla dosya';
  }
}
