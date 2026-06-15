// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Udostępniaj duże pliki wideo';

  @override
  String get heroAccent => 'natychmiast.';

  @override
  String get heroTitle => 'Wysyłaj ciężkie pliki';

  @override
  String get splashLoading => 'Załadunek…';

  @override
  String get navSend => 'Panel';

  @override
  String get navHome => 'Dom';

  @override
  String get navHistory => 'Historia';

  @override
  String get navReceive => 'Odbierać';

  @override
  String get navPlans => 'Plany';

  @override
  String get navDownload => 'Pobierać';

  @override
  String get navSettings => 'Ustawienia';

  @override
  String get modeLink => 'Zdobądź link';

  @override
  String get modeEmail => 'Wyślij e-mailem';

  @override
  String get pickFiles => 'Wybierz pliki';

  @override
  String get pickFolder => 'Wybierz folder';

  @override
  String get emailFrom => 'Twój e-mail';

  @override
  String get mailFromUsesAccount =>
      'Używa Twojego adresu e-mail, na którym jesteś zalogowany.';

  @override
  String get recipientEmailsHelper =>
      'Wielu odbiorców: oddziel przecinkami, średnikami lub spacjami.';

  @override
  String get emailTo => 'Adres e-mail odbiorcy';

  @override
  String get messageOptional => 'Wiadomość (opcjonalnie)';

  @override
  String get passwordOptional => 'Hasło (opcjonalnie)';

  @override
  String get destructAfterDownload => 'Usuń po pobraniu';

  @override
  String get destructNo => 'Zachowaj dostępność';

  @override
  String get sendButton => 'Wysłać';

  @override
  String get uploading => 'Przesyłanie…';

  @override
  String get uploadComplete => 'Zrobione';

  @override
  String get shareLinkTitle => 'Twoje łącze';

  @override
  String get copyLink => 'Skopiuj link';

  @override
  String get share => 'Udział';

  @override
  String get shareQrCode => 'Udostępnij kod QR';

  @override
  String get uploadMore => 'Wyślij inny';

  @override
  String get emailSentTitle => 'E-maile wysłane';

  @override
  String get verifyEmailTitle => 'Zweryfikuj swój adres e-mail';

  @override
  String get verifyCodeHint => 'Wpisz kod z e-maila';

  @override
  String get verifySubmit => 'Zweryfikować';

  @override
  String get verifyResendCode => 'Wyślij kod ponownie';

  @override
  String get verifyCodeSent =>
      'Nowy kod weryfikacyjny został wysłany na Twój adres e-mail.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'E-mail weryfikacyjny mógł nie zostać wysłany';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Serwer nie mógł potwierdzić dostarczenia (często SMTP jest błędnie skonfigurowany). Poproś administratora witryny, aby sprawdził ustawienia poczty w panelu administracyjnym, a następnie stuknął opcję Wyślij kod ponownie.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Jeśli wiadomość nie dotrze: sprawdź wiadomości-śmieci/spam i promocje, poczekaj chwilę, potwierdź, że w <<PH0>> nie ma literówek, a następnie dotknij opcji Wyślij ponownie.';
  }

  @override
  String get loginTitle => 'Zalogować się';

  @override
  String get signupHint => 'Użyj adresu e-mail i hasła do konta witryny.';

  @override
  String get emailHint => 'E-mail';

  @override
  String get passwordHint => 'Hasło';

  @override
  String get cancel => 'Anulować';

  @override
  String get signIn => 'Zalogować się';

  @override
  String get downloadIdHint => 'Identyfikator przelewu';

  @override
  String get privateIdHint => 'Prywatny identyfikator (opcjonalnie)';

  @override
  String get fetchTransfer => 'Otwarty transfer';

  @override
  String get downloadFile => 'Pobierać';

  @override
  String get unlockDownload => 'Odblokuj pobieranie';

  @override
  String get downloadSaved => 'Zapisano w Pobranych';

  @override
  String get errorGeneric => 'Coś poszło nie tak';

  @override
  String get errorNetwork => 'Błąd sieci';

  @override
  String get errorBadResponse => 'Nieoczekiwana odpowiedź serwera';

  @override
  String get termsAccept => 'Akceptuję warunki';

  @override
  String get settingsApiUrl => 'Witryna publiczna URL';

  @override
  String get settingsAccount => 'Konto';

  @override
  String get settingsAppearance => 'Wygląd';

  @override
  String get settingsTheme => 'Motyw';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Jasny';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get settingsSignedIn => 'Jesteś zalogowany.';

  @override
  String get settingsSignedOut => 'Nie jesteś zalogowany in.';

  @override
  String get settingsOpenWebsite => 'Otwórz stronę';

  @override
  String get signUp => 'Zarejestruj się';

  @override
  String get settingsLinks => 'Linki';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get termsOfService => 'Warunki korzystania z usługi';

  @override
  String get about => 'O nas';

  @override
  String get moreApps => 'Więcej aplikacje';

  @override
  String get settingsLanguage => 'Język';

  @override
  String get languageEnglish => 'Angielski';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Wyloguj';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get deleteAccountConfirmTitle => 'Usunąć swoje konto?';

  @override
  String get deleteAccountConfirmBody =>
      'Spowoduje to trwałe usunięcie Twojego konta i wylogowanie. Twoje linki do przeniesienia będą nadal działać, ale nie będą już widoczne w Twojej historii.';

  @override
  String get deleteAccountSuccess => 'Konto usunięte';

  @override
  String get deleteAccountSuccessBody => 'Twoje konto zostało usunięte.';

  @override
  String get deleteAccountFailed => 'Nie można usunąć konta';

  @override
  String get deleteAccountFailedBody =>
      'Spróbuj ponownie lub skontaktuj się z pomocą techniczną.';

  @override
  String get maxFilesReached => 'Zbyt wiele plików';

  @override
  String get fileTooLarge => 'Plik też duży';

  @override
  String get ipLimit => 'Zbyt wiele plików przesyłanych z tej sieci';

  @override
  String get fillFields => 'Wypełnij wymagane pola';

  @override
  String get invalidEmail => 'Nieprawidłowy adres e-mail';

  @override
  String get maxRecipientsReached => 'Zbyt wielu odbiorców';

  @override
  String get loginRequiredTitle => 'Wymagane logowanie';

  @override
  String get loginRequiredBody =>
      'Ten serwer wymaga konta do przesyłania lub pobierania.';

  @override
  String get settingsSubtitle => 'Preferencje aplikacji i konto.';

  @override
  String get dropHeavyFile => 'Upuść tutaj duży plik.';

  @override
  String upToTotal(String max) {
    return 'W sumie do <<PH0>>';
  }

  @override
  String get removeAll => 'Usuń wszystko';

  @override
  String get addFiles => 'Dodaj pliki';

  @override
  String get adding => 'Dodawanie…';

  @override
  String get options => 'Opcje';

  @override
  String get selfDestruct => 'Samozniszczenie po pobierz';

  @override
  String get expiry => 'Wygaśnie';

  @override
  String get cancelUpload => 'Anuluj przesyłanie';

  @override
  String get transferReady => 'Transfer gotowy!';

  @override
  String get emailSentReady => 'E-mail wysłany!';

  @override
  String get shareRecipientHint => 'Udostępnij ten link swojemu odbiorcy.';

  @override
  String get emailSentBody => 'Powiadomiliśmy Twojego odbiorcę(ów).';

  @override
  String get scanQr => 'Skanuj, aby otworzyć link do transferu.';

  @override
  String get shareLinkButton => 'UDOSTĘPNIJ LINK';

  @override
  String get verifyFourDigit =>
      'Wprowadź 4-cyfrowy kod wysłany na adres e-mail nadawcy.';

  @override
  String get starting => 'Rozpoczęcie…';

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
    return '<<PH0>> Pozostało MB';
  }

  @override
  String get fillField => 'Wypełnij to pole.';

  @override
  String get enterValidEmail => 'Wprowadź prawidłowy e-mail.';

  @override
  String get message => 'Wiadomość';

  @override
  String get recipientEmail => 'Adres e-mail odbiorcy';

  @override
  String get active => 'Aktywna';

  @override
  String get expired => 'Wygasła';

  @override
  String get historyTitle => 'Moje przelewy';

  @override
  String get signInToSeeTransfers => 'Zaloguj się, aby zobaczyć swoje przelewy';

  @override
  String get signInTransfersBody =>
      'Używamy Twojego adresu e-mail do łączenia przelewów z Twoim kontem — hasło nie jest potrzebne.';

  @override
  String get couldNotLoadTransfers => 'Nie można załaduj transfery';

  @override
  String get retry => 'Spróbuj ponownie';

  @override
  String get noTransfersYet => 'Jeszcze żadnych transferów';

  @override
  String get noTransfersBody => 'Gdy wyślesz plik, pojawi się on tutaj.';

  @override
  String get transferDetails => 'Szczegóły transferu';

  @override
  String get filesSection => 'Pliki';

  @override
  String get receiveTitle => 'Odbierz pliki';

  @override
  String get receiveSubtitle => 'Wklej link do transferu, aby pobrać plików.';

  @override
  String get pasteTooltip => 'Wklej';

  @override
  String get findTransfer => 'Znajdź transfer';

  @override
  String get receiveScanQr => 'Skanuj QR';

  @override
  String get receiveScanQrTitle => 'Skanuj transfer QR';

  @override
  String get receiveScanQrHint => 'Wyrównaj kod QR w ramce.';

  @override
  String get receiveScanQrInvalid =>
      'Ten kod QR nie jest prawidłowym łączem do transferu.';

  @override
  String get receiveScanQrCameraDenied =>
      'Do skanowania wymagany jest dostęp do aparatu Kody QR.';

  @override
  String get receiveStepGetLink => 'Uzyskaj link';

  @override
  String get receiveStepGetLinkBody =>
      'Poproś nadawcę, aby udostępnił Ci link do przeniesienia.';

  @override
  String get receiveStepPaste => 'Wklej i znajdź';

  @override
  String get receiveStepPasteBody =>
      'Wklej powyższy link i kliknij „Znajdź transfer”.';

  @override
  String get receiveStepDownload => 'Pobierz pliki';

  @override
  String get receiveStepDownloadBody =>
      'Zobacz szczegóły pliku i pobierz wszystko na stronie raz.';

  @override
  String get lookingUpTransfer => 'Wyszukiwanie przelewu…';

  @override
  String get transferNotFound =>
      'Nie znaleziono przelewu. Sprawdź link i spróbuj ponownie.';

  @override
  String get transferExpired => 'Ten transfer wygasł i nie jest już dostępny.';

  @override
  String get transferLoginRequired =>
      'Aby uzyskać dostęp do tego transferu, wymagane jest zalogowanie się.';

  @override
  String get transferBadResponse =>
      'Nieoczekiwana odpowiedź serwera. Sprawdź swoje połączenie.';

  @override
  String get transferNetworkError =>
      'Błąd sieci. Sprawdź swoje połączenie internetowe.';

  @override
  String transferLoadFailed(String error) {
    return 'Nie udało się załadować transferu: <<PH0>>';
  }

  @override
  String get passwordProtected => 'Chroń hasłem';

  @override
  String get enterPassword => 'Wprowadź hasło';

  @override
  String get unlock => 'Odblokuj';

  @override
  String get downloading => 'Pobieranie…';

  @override
  String get downloadAllFiles => 'Pobierz wszystkie pliki';

  @override
  String get downloadSingleFile => 'Pobierz plik';

  @override
  String get receiveAnother => 'Odbierz kolejny transfer';

  @override
  String get plansTitle => 'Plany';

  @override
  String get plansSubtitle =>
      'Uaktualnij, aby usunąć reklamy i wysłać większe pliki.';

  @override
  String get storeUnavailable => 'Sklep niedostępny';

  @override
  String get storeUnavailableBody =>
      'Zakupy w aplikacji nie są dostępne teraz.';

  @override
  String get storeLoadingPrices => 'Ładowanie cen z App Store…';

  @override
  String get storePricesUnavailable => 'Ceny niedostępne';

  @override
  String get storePricesPartial => 'Nie można załadować niektórych cen';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<<PH0>> z <<PH1>> załadowanych produktów subskrypcyjnych.';
  }

  @override
  String get storeSetupHint =>
      'Przetestuj na prawdziwym iPhonie (nie na symulatorze), użyj Apple ID Sandbox i upewnij się, że wszystkie 6 subskrypcji zostało utworzonych w ramach identyfikator pakietu tej aplikacji w App Store Połącz z ustalonym cennikiem.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/miesiąc';
  }

  @override
  String get freeVersionAds =>
      'Obecnie korzystasz z naszej bezpłatnej wersji z reklamami';

  @override
  String get restorePurchases => 'Przywróć zakupy';

  @override
  String get plansContinue => 'Kontynuuj';

  @override
  String get planLinkRestore => 'Przywróć';

  @override
  String get termsAndConditions => 'Warunki i zasady warunki';

  @override
  String get createAccountTitle => 'Utwórz konto';

  @override
  String get signUpSubtitle => 'Zarejestruj się, podając adres e-mail i hasło.';

  @override
  String get confirmPassword => 'Potwierdź hasło';

  @override
  String get passwordMin8 => 'Hasło (min. 8 znaków)';

  @override
  String get alreadyHaveAccount => 'Masz już konto?';

  @override
  String get checkEmailTitle => 'Sprawdź swoje\nemail';

  @override
  String otpSentTo(String email) {
    return 'Wysłaliśmy 6-cyfrowy kod na adres\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'Sprawdź i zaloguj się';

  @override
  String get didntReceiveCode => 'Nie otrzymałeś?';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get otpExpiresHint =>
      'Kod wygasa za 5 minut. Sprawdź folder ze spamem, jeśli go nie widzisz.';

  @override
  String get snackError => 'Błąd';

  @override
  String get snackCopied => 'Skopiowane';

  @override
  String get snackCopiedBody => 'Link skopiowany do schowka';

  @override
  String get snackWelcome => 'Witamy';

  @override
  String get snackAccountCreated => 'Konto utworzone';

  @override
  String get snackEnterEmail => 'Wprowadź swój adres e-mail';

  @override
  String get snackEnterPassword => 'Wprowadź swój adres e-mail hasło';

  @override
  String get snackInvalidEmail => 'Nieprawidłowy adres e-mail';

  @override
  String get snackInvalidCredentials => 'Nieprawidłowy adres e-mail lub hasło';

  @override
  String get snackPasswordMin8 => 'Hasło musi mieć co najmniej 8 znaków';

  @override
  String get snackPasswordMismatch => 'Hasła nie pasują.';

  @override
  String get snackAccountExists => 'Konto już istnieje. Zaloguj się.';

  @override
  String get snackSignupFailed => 'Nie można utworzyć konta. Spróbuj ponownie.';

  @override
  String get snackEnterOtp => 'Wprowadź 6-cyfrowy kod';

  @override
  String get snackOtpExpired => 'Kod wygasł';

  @override
  String get snackOtpExpiredBody => 'Proszę poprosić o nowy kod.';

  @override
  String get snackInvalidCode => 'Nieprawidłowy kod';

  @override
  String get snackInvalidCodeBody =>
      'Kod jest nieprawidłowy. Spróbuj ponownie.';

  @override
  String get snackSendCodeFailed =>
      'Nie można wysłać kodu. Sprawdź połączenie i spróbuj ponownie.';

  @override
  String get snackEmptyFolder => 'Pusty folder';

  @override
  String get snackEmptyFolderBody =>
      'W wybranym folderze nie znaleziono plików.';

  @override
  String get snackFolderUnsupported => 'Nieobsługiwane';

  @override
  String get snackFolderUnsupportedBody =>
      'Przesyłanie folderów nie jest dostępne na tej platformie.';

  @override
  String get snackFolderReadError => 'Nie można odczytać wybranego folderu.';

  @override
  String get snackLimitReached => 'Osiągnięto limit';

  @override
  String get snackLimitFilesBody =>
      'Niektóre pliki nie zostały dodane ze względu na limity rozmiaru lub liczby plików.';

  @override
  String get snackFreePlanLimit =>
      'Bezpłatny plan pozwala do 5 GB na transfer. Usuń niektóre pliki lub dokonaj aktualizacji.';

  @override
  String get snackSignInEmail => 'Zaloguj się, aby wysłać e-mailem.';

  @override
  String get snackUploadStartFailed => 'Nie można rozpocząć przesyłania.';

  @override
  String get snackVerifyEnterCode =>
      'Wprowadź 4-cyfrowy kod z wiadomości e-mail.';

  @override
  String get snackVerifyInvalid =>
      'Kod nieprawidłowy lub wygasł. Sprawdź e-mail i spróbuj ponownie.';

  @override
  String get snackVerifyResendFailed =>
      'Nie można ponownie wysłać kodu. Spróbuj ponownie.';

  @override
  String get snackDownloadComplete => 'Pobieranie zakończone';

  @override
  String snackDownloadSaved(String filename) {
    return '„<<PH0>>” zapisane w Pobranych';
  }

  @override
  String get snackDownloadFailed => 'Pobieranie nie powiodło się';

  @override
  String get snackSaved => 'Zapisano';

  @override
  String get snackServerUrlUpdated =>
      'URL serwera został zaktualizowany. Aby zastosować aplikację, uruchom ponownie aplikację.';

  @override
  String get snackStoreError => 'Błąd sklepu';

  @override
  String get snackMissingProducts => 'Brakujące produkty';

  @override
  String get snackStoreUnavailable => 'Sklep niedostępny';

  @override
  String get snackStoreUnavailableBody =>
      'Na tym urządzeniu nie są dostępne zakupy w aplikacji.';

  @override
  String get snackProductNotLoaded => 'Produkt nie został jeszcze załadowany.';

  @override
  String get snackRestoreStarted => 'Rozpoczęto przywracanie';

  @override
  String get snackRestoreStartedBody => 'Sprawdzamy Twoje zakupów.';

  @override
  String get snackRestoreFailed => 'Przywracanie nie powiodło się';

  @override
  String get snackProcessing => 'Przetwarzanie';

  @override
  String get snackPleaseWait => 'Proszę czekać…';

  @override
  String get snackSuccess => 'Sukces';

  @override
  String get snackPurchaseCompleted => 'Zakup zakończony.';

  @override
  String get snackPurchaseError => 'Błąd zakupu';

  @override
  String get snackPurchaseFailed => 'Zakup nie powiodło się.';

  @override
  String get snackCanceled => 'Anulowano';

  @override
  String get snackPurchaseCanceled => 'Zakup anulowano.';

  @override
  String get snackUpload => 'Prześlij';

  @override
  String get snackVerify => 'Zweryfikować';

  @override
  String get doNotExpire => 'Nie rób tego wygasa';

  @override
  String get hourSingular => 'godzina';

  @override
  String get hourPlural => 'godzin';

  @override
  String get daySingular => 'dzień';

  @override
  String get dayPlural => 'dni';

  @override
  String get emailAddressLabel => 'ADRES E-MAIL';

  @override
  String get passwordLabelCaps => 'HASŁO';

  @override
  String get confirmPasswordLabelCaps => 'POTWIERDŹ HASŁO';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'LINK PRZENIEŚ LUB ID';

  @override
  String get howToReceive => 'JAK OTRZYMAĆ';

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
  String get planAdsTitle => 'Plan reklam';

  @override
  String get planAdsBullet1 => 'Dostęp do aplikacji bez reklam';

  @override
  String get planAdsBullet2 => 'Usuń wszystkie reklamy';

  @override
  String get planProTitle => 'Plan Pro';

  @override
  String get planProBullet1 => 'Wyślij pliki do 20 GB';

  @override
  String get planProBullet2 => 'Szybkie przesyłanie';

  @override
  String get planPremiumTitle => 'Plan Premium';

  @override
  String get planPremiumBullet1 => 'Wysyłaj pliki do 100 GB';

  @override
  String get planPremiumBullet2 => 'Bardzo szybkie przesyłanie';

  @override
  String get planSubscriptionDisclaimer =>
      'Bez okresu próbnego — aby korzystać z dodatkowych funkcji aplikacji, wymagana jest subskrypcja. Opłata zostanie pobrana natychmiast. Możesz anulować w dowolnym momencie.';

  @override
  String get perMonth => '/miesiąc';

  @override
  String get perYear => '/rok';

  @override
  String get snackConnectionProblem =>
      'Problem z połączeniem. Spróbuj ponownie.';

  @override
  String get networkTitle => 'Sieć';

  @override
  String transferIdLabel(String id) {
    return 'ID: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Pliki: <<PH0>> · <<PH1>> bajtów';
  }

  @override
  String todayAt(String time) {
    return 'Dzisiaj · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'Wczoraj · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<PH0>>d temu · <<PH1>>';
  }

  @override
  String dateAt(String date, String time) {
    return '<<PH0>> · <<PH1>>';
  }

  @override
  String mbAmount(String amount) {
    return '<<PH0>> MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '<<PH0>> / <<PH1>> • <<PH2>> po lewej';
  }

  @override
  String get loadingShort => 'Załadunek…';

  @override
  String get colorPaletteTitle => 'Paleta kolorów';

  @override
  String get colorPaletteSectionBackgrounds => 'Tła (skala atramentu)';

  @override
  String get colorPaletteSectionAccent => 'Akcent / Podstawowy';

  @override
  String get colorPaletteSectionText => 'Tekst';

  @override
  String get colorPaletteSectionBorders => 'Obramowania i szkło';

  @override
  String get colorPaletteSectionSemantic => 'Semantyczny';

  @override
  String get colorPaletteSectionLive => 'Live Theme (bieżący)';

  @override
  String get colorPaletteActiveHint => '★ = aktywnie używany na ekranach';

  @override
  String get colorPaletteCopyHint =>
      'Naciśnij długo dowolną próbkę, aby skopiować jej wartość szesnastkową.';

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
  String get settingsAppBrand => 'Udostępnij duże\nPliki wideo';

  @override
  String get loginEmailPasswordPrompt =>
      'Wprowadź swój adres e-mail i hasło, aby się zalogować.';

  @override
  String get forgotPassword => 'Zapomniałeś hasła?';

  @override
  String get forgotPasswordTitle => 'Resetuj hasło';

  @override
  String get forgotPasswordBody =>
      'Wpisz adres e-mail swojego konta, a my wyślemy kod resetujący.';

  @override
  String get forgotPasswordSubmit => 'Wyślij kod resetujący';

  @override
  String get resetPasswordTitle => 'Utwórz nowy hasło';

  @override
  String get resetPasswordBody =>
      'Wprowadź 6-cyfrowy kod z adresu e-mail i wybierz nowe hasło.';

  @override
  String get resetPasswordSubmit => 'Zaktualizuj hasło';

  @override
  String get snackPasswordResetSent => 'Wysłano kod resetowania';

  @override
  String get snackPasswordResetSentBody =>
      'Sprawdź, czy w skrzynce e-mail znajduje się 6-cyfrowy kod resetowania.';

  @override
  String get snackPasswordResetFailed =>
      'Nie można wysłać kodu resetowania. Spróbuj ponownie.';

  @override
  String get snackPasswordUpdated => 'Hasło zaktualizowane';

  @override
  String get snackPasswordUpdatedBody =>
      'Zaloguj się przy użyciu nowego hasła.';

  @override
  String get snackPasswordResetInvalid =>
      'Nieprawidłowy lub wygasły kod resetowania.';

  @override
  String get otpDigitLabel => '6-CYFROWY KOD';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> więcej plików';
  }
}
