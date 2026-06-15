// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'გააზიარეთ დიდი ვიდეო ფაილები';

  @override
  String get heroAccent => 'მყისიერად.';

  @override
  String get heroTitle => 'მძიმე ფაილების გაგზავნა';

  @override
  String get splashLoading => 'იტვირთება…';

  @override
  String get navSend => 'დაფა';

  @override
  String get navHome => 'მთავარი';

  @override
  String get navHistory => 'ისტორია';

  @override
  String get navReceive => 'მიღება';

  @override
  String get navPlans => 'გეგმები';

  @override
  String get navDownload => 'ჩამოტვირთვა';

  @override
  String get navSettings => 'პარამეტრები';

  @override
  String get modeLink => 'მიიღეთ ბმული';

  @override
  String get modeEmail => 'გაგზავნეთ ელექტრონული ფოსტით';

  @override
  String get pickFiles => 'აირჩიეთ ფაილები';

  @override
  String get pickFolder => 'აირჩიეთ საქაღალდე';

  @override
  String get emailFrom => 'თქვენი ელ';

  @override
  String get mailFromUsesAccount => 'იყენებს თქვენს სისტემაში შესულ ელფოსტას.';

  @override
  String get recipientEmailsHelper =>
      'მრავალი მიმღები: გამოყავით მძიმეებით, მძიმით ან ინტერვალით.';

  @override
  String get emailTo => 'მიმღების ელ.წერილი';

  @override
  String get messageOptional => 'შეტყობინება (სურვილისამებრ)';

  @override
  String get passwordOptional => 'პაროლი (სურვილისამებრ)';

  @override
  String get destructAfterDownload => 'წაშალეთ ჩამოტვირთვის შემდეგ';

  @override
  String get destructNo => 'ხელმისაწვდომობის შენარჩუნება';

  @override
  String get sendButton => 'გაგზავნა';

  @override
  String get uploading => 'მიმდინარეობს ატვირთვა…';

  @override
  String get uploadComplete => 'შესრულებულია';

  @override
  String get shareLinkTitle => 'შენი ბმული';

  @override
  String get copyLink => 'დააკოპირეთ ბმული';

  @override
  String get share => 'გააზიარეთ';

  @override
  String get shareQrCode => 'გააზიარეთ QR კოდი';

  @override
  String get uploadMore => 'სხვა გაგზავნა';

  @override
  String get emailSentTitle => 'გაგზავნილი ელ.წერილები';

  @override
  String get verifyEmailTitle => 'დაადასტურეთ თქვენი ელფოსტა';

  @override
  String get verifyCodeHint => 'შეიყვანეთ კოდი თქვენი ელფოსტიდან';

  @override
  String get verifySubmit => 'გადაამოწმეთ';

  @override
  String get verifyResendCode => 'კოდის ხელახლა გაგზავნა';

  @override
  String get verifyCodeSent =>
      'ახალი დამადასტურებელი კოდი გაიგზავნა თქვენს ელფოსტაზე.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'დამადასტურებელი ელფოსტა შეიძლება არ იყო გაგზავნილი';

  @override
  String get verifyEmailSmtpWarningBody =>
      'სერვერმა ვერ დაადასტურა მიწოდება (ხშირად SMTP არასწორად არის კონფიგურირებული). სთხოვეთ თქვენი საიტის ადმინისტრატორს, შეამოწმოს ფოსტის პარამეტრები ადმინისტრაციულ პანელში, შემდეგ შეეხეთ კოდის ხელახლა გაგზავნას.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'თუ ის არ ჩამოვიდა: შეამოწმეთ უსარგებლო/სპამი და აქციები, დაელოდეთ ერთი წუთით, დაადასტურეთ, რომ <<PH0>>-ს არ აქვს ბეჭდვითი შეცდომები, შემდეგ შეეხეთ ხელახლა გაგზავნას.';
  }

  @override
  String get loginTitle => 'შესვლა';

  @override
  String get signupHint =>
      'გამოიყენეთ თქვენი საიტის ანგარიშის ელფოსტა და პაროლი.';

  @override
  String get emailHint => 'ელფოსტა';

  @override
  String get passwordHint => 'პაროლი';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get signIn => 'შესვლა';

  @override
  String get downloadIdHint => 'გადარიცხვის ID';

  @override
  String get privateIdHint => 'პირადი ID (არასავალდებულო)';

  @override
  String get fetchTransfer => 'გახსენით გადაცემა';

  @override
  String get downloadFile => 'ჩამოტვირთვა';

  @override
  String get unlockDownload => 'ჩამოტვირთვის განბლოკვა';

  @override
  String get downloadSaved => 'შენახულია ჩამოტვირთვებში';

  @override
  String get errorGeneric => 'რაღაც შეფერხდა';

  @override
  String get errorNetwork => 'ქსელის შეცდომა';

  @override
  String get errorBadResponse => 'სერვერის მოულოდნელი პასუხი';

  @override
  String get termsAccept => 'ვეთანხმები პირობებს';

  @override
  String get settingsApiUrl => 'საჯარო საიტის URL';

  @override
  String get settingsAccount => 'ანგარიში';

  @override
  String get settingsAppearance => 'გარეგნობა';

  @override
  String get settingsTheme => 'თემა';

  @override
  String get themeSystem => 'სისტემა';

  @override
  String get themeLight => 'სინათლე';

  @override
  String get themeDark => 'ბნელი';

  @override
  String get settingsSignedIn => 'თქვენ შესული ხართ.';

  @override
  String get settingsSignedOut => 'თქვენ არ ხართ შესული.';

  @override
  String get settingsOpenWebsite => 'საიტის გახსნა';

  @override
  String get signUp => 'დარეგისტრირდით';

  @override
  String get settingsLinks => 'ბმულები';

  @override
  String get privacyPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get termsOfService => 'მომსახურების პირობები';

  @override
  String get about => 'შესახებ';

  @override
  String get moreApps => 'მეტი აპი';

  @override
  String get settingsLanguage => 'ენა';

  @override
  String get languageEnglish => 'ინგლისური';

  @override
  String get languageHindi => 'ჰინდი';

  @override
  String get logout => 'გასვლა';

  @override
  String get deleteAccount => 'ანგარიშის წაშლა';

  @override
  String get deleteAccountConfirmTitle => 'წაშალოთ თქვენი ანგარიში?';

  @override
  String get deleteAccountConfirmBody =>
      'ეს სამუდამოდ წაშლის თქვენს ანგარიშს და გამოგიყვანთ სისტემიდან. თქვენი გადაცემის ბმულები იმუშავებს, მაგრამ ისინი აღარ გამოჩნდება თქვენს ისტორიაში.';

  @override
  String get deleteAccountSuccess => 'ანგარიში წაიშალა';

  @override
  String get deleteAccountSuccessBody => 'თქვენი ანგარიში წაიშალა.';

  @override
  String get deleteAccountFailed => 'ანგარიშის წაშლა ვერ მოხერხდა';

  @override
  String get deleteAccountFailedBody =>
      'გთხოვთ, სცადოთ ხელახლა ან დაუკავშირდით მხარდაჭერას.';

  @override
  String get maxFilesReached => 'ძალიან ბევრი ფაილი';

  @override
  String get fileTooLarge => 'ფაილი ძალიან დიდია';

  @override
  String get ipLimit => 'ძალიან ბევრი ატვირთვა ამ ქსელიდან';

  @override
  String get fillFields => 'გთხოვთ შეავსოთ აუცილებელი ველები';

  @override
  String get invalidEmail => 'არასწორი ელფოსტა';

  @override
  String get maxRecipientsReached => 'ძალიან ბევრი მიმღები';

  @override
  String get loginRequiredTitle => 'საჭიროა შესვლა';

  @override
  String get loginRequiredBody =>
      'ეს სერვერი საჭიროებს ანგარიშს ატვირთვის ან ჩამოსატვირთად.';

  @override
  String get settingsSubtitle => 'აპის პარამეტრები და ანგარიში.';

  @override
  String get dropHeavyFile => 'ჩამოაგდეთ მძიმე ფაილი აქ.';

  @override
  String upToTotal(String max) {
    return 'სულ <<PH0>>-მდე';
  }

  @override
  String get removeAll => 'წაშალე ყველა';

  @override
  String get addFiles => 'ფაილების დამატება';

  @override
  String get adding => 'ემატება…';

  @override
  String get options => 'ოფციები';

  @override
  String get selfDestruct => 'თვითგანადგურება ჩამოტვირთვის შემდეგ';

  @override
  String get expiry => 'ვადის გასვლა';

  @override
  String get cancelUpload => 'ატვირთვის გაუქმება';

  @override
  String get transferReady => 'ტრანსფერი მზადაა!';

  @override
  String get emailSentReady => 'ელფოსტა გაიგზავნა!';

  @override
  String get shareRecipientHint => 'გაუზიარეთ ეს ბმული თქვენს მიმღებს.';

  @override
  String get emailSentBody => 'ჩვენ ვაცნობეთ თქვენს მიმღებ(ებ)ს.';

  @override
  String get scanQr => 'სკანირება გადარიცხვის ბმულის გასახსნელად.';

  @override
  String get shareLinkButton => 'გააზიარე ლინკი';

  @override
  String get verifyFourDigit =>
      'შეიყვანეთ 4-ნიშნა კოდი, რომელიც გამოგზავნილია თქვენს გამომგზავნ ელფოსტაზე.';

  @override
  String get starting => 'იწყება…';

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
    return '<<PH0>> MB დარჩა';
  }

  @override
  String get fillField => 'გთხოვთ შეავსოთ ეს ველი.';

  @override
  String get enterValidEmail => 'შეიყვანეთ სწორი ელფოსტა.';

  @override
  String get message => 'შეტყობინება';

  @override
  String get recipientEmail => 'მიმღების ელ.წერილი';

  @override
  String get active => 'აქტიური';

  @override
  String get expired => 'ვადა გაუვიდა';

  @override
  String get historyTitle => 'ჩემი ტრანსფერები';

  @override
  String get signInToSeeTransfers => 'შედით თქვენი გადარიცხვების სანახავად';

  @override
  String get signInTransfersBody =>
      'ჩვენ ვიყენებთ თქვენს ელფოსტას გადარიცხვების თქვენს ანგარიშთან დასაკავშირებლად — პაროლი არ არის საჭირო.';

  @override
  String get couldNotLoadTransfers => 'გადარიცხვები ვერ ჩაიტვირთა';

  @override
  String get retry => 'ხელახლა სცადეთ';

  @override
  String get noTransfersYet => 'ჯერ არ არის ტრანსფერი';

  @override
  String get noTransfersBody => 'ფაილის გაგზავნის შემდეგ ის აქ გამოჩნდება.';

  @override
  String get transferDetails => 'გადაცემის დეტალები';

  @override
  String get filesSection => 'ფაილები';

  @override
  String get receiveTitle => 'ფაილების მიღება';

  @override
  String get receiveSubtitle =>
      'ჩასვით გადაცემის ბმული ფაილების ჩამოსატვირთად.';

  @override
  String get pasteTooltip => 'პასტა';

  @override
  String get findTransfer => 'იპოვნეთ ტრანსფერი';

  @override
  String get receiveScanQr => 'QR-ის სკანირება';

  @override
  String get receiveScanQrTitle => 'გადაცემის QR სკანირება';

  @override
  String get receiveScanQrHint => 'გაასწორეთ QR კოდი ჩარჩოს შიგნით.';

  @override
  String get receiveScanQrInvalid =>
      'ეს QR კოდი არ არის სწორი გადაცემის ბმული.';

  @override
  String get receiveScanQrCameraDenied =>
      'QR კოდების სკანირებისთვის საჭიროა კამერაზე წვდომა.';

  @override
  String get receiveStepGetLink => 'მიიღეთ ბმული';

  @override
  String get receiveStepGetLinkBody =>
      'სთხოვეთ გამგზავნს გაგიზიაროთ გადარიცხვის ბმული.';

  @override
  String get receiveStepPaste => 'ჩასვით და იპოვეთ';

  @override
  String get receiveStepPasteBody =>
      'ჩასვით ზემოთ მოცემული ბმული და შეეხეთ \"იპოვეთ გადარიცხვა\".';

  @override
  String get receiveStepDownload => 'ფაილების ჩამოტვირთვა';

  @override
  String get receiveStepDownloadBody =>
      'იხილეთ ფაილის დეტალები და ჩამოტვირთეთ ყველაფერი ერთდროულად.';

  @override
  String get lookingUpTransfer => 'მიმდინარეობს გადაცემის ძიება…';

  @override
  String get transferNotFound =>
      'ტრანსფერი ვერ მოიძებნა. შეამოწმეთ ბმული და სცადეთ ხელახლა.';

  @override
  String get transferExpired =>
      'ამ ტრანსფერს ვადა გაუვიდა და აღარ არის ხელმისაწვდომი.';

  @override
  String get transferLoginRequired =>
      'ამ ტრანსფერზე წვდომისთვის საჭიროა შესვლა.';

  @override
  String get transferBadResponse =>
      'სერვერის მოულოდნელი პასუხი. შეამოწმეთ თქვენი კავშირი.';

  @override
  String get transferNetworkError =>
      'ქსელის შეცდომა. შეამოწმეთ თქვენი ინტერნეტ კავშირი.';

  @override
  String transferLoadFailed(String error) {
    return 'გადაცემის ჩატვირთვა ვერ მოხერხდა: <<PH0>>';
  }

  @override
  String get passwordProtected => 'პაროლით დაცული';

  @override
  String get enterPassword => 'შეიყვანეთ პაროლი';

  @override
  String get unlock => 'განბლოკვა';

  @override
  String get downloading => 'მიმდინარეობს ჩამოტვირთვა…';

  @override
  String get downloadAllFiles => 'ჩამოტვირთეთ ყველა ფაილი';

  @override
  String get downloadSingleFile => 'ფაილის ჩამოტვირთვა';

  @override
  String get receiveAnother => 'მიიღეთ კიდევ ერთი გადარიცხვა';

  @override
  String get plansTitle => 'გეგმები';

  @override
  String get plansSubtitle =>
      'განაახლეთ რეკლამების წასაშლელად და უფრო დიდი ფაილების გასაგზავნად.';

  @override
  String get storeUnavailable => 'მაღაზია მიუწვდომელია';

  @override
  String get storeUnavailableBody =>
      'აპს-შიდა შესყიდვები ამჟამად მიუწვდომელია.';

  @override
  String get storeLoadingPrices => 'იტვირთება ფასები App Store-იდან…';

  @override
  String get storePricesUnavailable => 'ფასები მიუწვდომელია';

  @override
  String get storePricesPartial => 'ზოგიერთი ფასი ვერ ჩაიტვირთა';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '<PH2>> <PH3>> სააბონენტო პროდუქტებიდან დატვირთულია.';
  }

  @override
  String get storeSetupHint =>
      'გამოცადეთ რეალურ iPhone-ზე (არა სიმულატორი), გამოიყენეთ Sandbox Apple ID და დარწმუნდით, რომ ექვსივე გამოწერა შექმნილია ამ აპლიკაციის პაკეტის ID-ით App Store Connect-ში ფასების ნაკრებით.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '<<PH0>>/თვეში';
  }

  @override
  String get freeVersionAds =>
      'ამჟამად თქვენ იყენებთ ჩვენს უფასო ვერსიას რეკლამებით';

  @override
  String get restorePurchases => 'შესყიდვების აღდგენა';

  @override
  String get plansContinue => 'განაგრძეთ';

  @override
  String get planLinkRestore => 'აღდგენა';

  @override
  String get termsAndConditions => 'ვადები და პირობები';

  @override
  String get createAccountTitle => 'ანგარიშის შექმნა';

  @override
  String get signUpSubtitle => 'დარეგისტრირდით ელექტრონული ფოსტით და პაროლით.';

  @override
  String get confirmPassword => 'დაადასტურეთ პაროლი';

  @override
  String get passwordMin8 => 'პაროლი (მინიმუმ 8 სიმბოლო)';

  @override
  String get alreadyHaveAccount => 'უკვე გაქვთ ანგარიში?';

  @override
  String get checkEmailTitle => 'შეამოწმეთ თქვენი\nელ';

  @override
  String otpSentTo(String email) {
    return 'ჩვენ გავგზავნეთ 6-ნიშნა კოდი\n<<PH0>>';
  }

  @override
  String get verifyAndSignIn => 'გადაამოწმეთ და შედით';

  @override
  String get didntReceiveCode => 'არ მიგიღიათ?';

  @override
  String get tryAgain => 'სცადეთ ხელახლა';

  @override
  String get otpExpiresHint =>
      'კოდი იწურება 5 წუთში. შეამოწმეთ თქვენი სპამის საქაღალდე, თუ მას არ ხედავთ.';

  @override
  String get snackError => 'შეცდომა';

  @override
  String get snackCopied => 'კოპირებულია';

  @override
  String get snackCopiedBody => 'ბმული კოპირებულია ბუფერში';

  @override
  String get snackWelcome => 'მოგესალმებით';

  @override
  String get snackAccountCreated => 'ანგარიში შეიქმნა';

  @override
  String get snackEnterEmail => 'გთხოვთ შეიყვანოთ თქვენი ელფოსტა';

  @override
  String get snackEnterPassword => 'გთხოვთ შეიყვანოთ თქვენი პაროლი';

  @override
  String get snackInvalidEmail => 'ელფოსტის მისამართი არასწორია';

  @override
  String get snackInvalidCredentials => 'არასწორი ელფოსტა ან პაროლი';

  @override
  String get snackPasswordMin8 =>
      'პაროლი უნდა შედგებოდეს მინიმუმ 8 სიმბოლოსგან';

  @override
  String get snackPasswordMismatch => 'პაროლები არ ემთხვევა.';

  @override
  String get snackAccountExists => 'ანგარიში უკვე არსებობს. გთხოვთ შეხვიდეთ.';

  @override
  String get snackSignupFailed =>
      'ანგარიშის შექმნა ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get snackEnterOtp => 'გთხოვთ შეიყვანოთ 6-ნიშნა კოდი';

  @override
  String get snackOtpExpired => 'კოდს ვადა გაუვიდა';

  @override
  String get snackOtpExpiredBody => 'გთხოვთ მოითხოვოთ ახალი კოდი.';

  @override
  String get snackInvalidCode => 'არასწორი კოდი';

  @override
  String get snackInvalidCodeBody => 'კოდი არასწორია. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get snackSendCodeFailed =>
      'კოდის გაგზავნა ვერ მოხერხდა. შეამოწმეთ თქვენი კავშირი და სცადეთ ხელახლა.';

  @override
  String get snackEmptyFolder => 'ცარიელი საქაღალდე';

  @override
  String get snackEmptyFolderBody => 'არჩეულ საქაღალდეში ფაილები ვერ მოიძებნა.';

  @override
  String get snackFolderUnsupported => 'არ არის მხარდაჭერილი';

  @override
  String get snackFolderUnsupportedBody =>
      'საქაღალდის ატვირთვა მიუწვდომელია ამ პლატფორმაზე.';

  @override
  String get snackFolderReadError =>
      'არჩეული საქაღალდის წაკითხვა ვერ მოხერხდა.';

  @override
  String get snackLimitReached => 'ლიმიტი მიღწეულია';

  @override
  String get snackLimitFilesBody =>
      'ზოგიერთი ფაილი არ დაემატა ზომის ან ფაილების რაოდენობის შეზღუდვის გამო.';

  @override
  String get snackFreePlanLimit =>
      'უფასო გეგმა იძლევა 5 გბ-მდე გადარიცხვის საშუალებას. გთხოვთ, წაშალოთ რამდენიმე ფაილი ან განაახლოთ.';

  @override
  String get snackSignInEmail => 'გთხოვთ შეხვიდეთ ელფოსტით გასაგზავნად.';

  @override
  String get snackUploadStartFailed => 'ატვირთვის დაწყება ვერ მოხერხდა.';

  @override
  String get snackVerifyEnterCode =>
      'შეიყვანეთ 4-ნიშნა კოდი თქვენი ელფოსტიდან.';

  @override
  String get snackVerifyInvalid =>
      'არასწორი ან ვადაგასული კოდი. შეამოწმეთ ელფოსტა და სცადეთ ხელახლა.';

  @override
  String get snackVerifyResendFailed =>
      'კოდის ხელახლა გაგზავნა ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get snackDownloadComplete => 'ჩამოტვირთვა დასრულდა';

  @override
  String snackDownloadSaved(String filename) {
    return '„<<PH0>>“ შენახულია ჩამოტვირთვებში';
  }

  @override
  String get snackDownloadFailed => 'ჩამოტვირთვა ვერ მოხერხდა';

  @override
  String get snackSaved => 'შენახულია';

  @override
  String get snackServerUrlUpdated =>
      'სერვერის URL განახლებულია. გადატვირთეთ აპლიკაცია განაცხადისთვის.';

  @override
  String get snackStoreError => 'შენახვის შეცდომა';

  @override
  String get snackMissingProducts => 'დაკარგული პროდუქტები';

  @override
  String get snackStoreUnavailable => 'მაღაზია მიუწვდომელია';

  @override
  String get snackStoreUnavailableBody =>
      'აპს-შიდა შესყიდვები მიუწვდომელია ამ მოწყობილობაზე.';

  @override
  String get snackProductNotLoaded => 'პროდუქტი ჯერ არ არის დატვირთული.';

  @override
  String get snackRestoreStarted => 'აღდგენა დაიწყო';

  @override
  String get snackRestoreStartedBody => 'ჩვენ ვამოწმებთ თქვენს შესყიდვებს.';

  @override
  String get snackRestoreFailed => 'აღდგენა ვერ მოხერხდა';

  @override
  String get snackProcessing => 'დამუშავება';

  @override
  String get snackPleaseWait => 'გთხოვთ დაელოდოთ…';

  @override
  String get snackSuccess => 'წარმატებები';

  @override
  String get snackPurchaseCompleted => 'შესყიდვა დასრულებულია.';

  @override
  String get snackPurchaseError => 'შეძენის შეცდომა';

  @override
  String get snackPurchaseFailed => 'შესყიდვა ვერ მოხერხდა.';

  @override
  String get snackCanceled => 'გაუქმდა';

  @override
  String get snackPurchaseCanceled => 'შესყიდვა გაუქმდა.';

  @override
  String get snackUpload => 'ატვირთვა';

  @override
  String get snackVerify => 'გადაამოწმეთ';

  @override
  String get doNotExpire => 'არ იწუროს';

  @override
  String get hourSingular => 'საათი';

  @override
  String get hourPlural => 'საათები';

  @override
  String get daySingular => 'დღე';

  @override
  String get dayPlural => 'დღეები';

  @override
  String get emailAddressLabel => 'ელფოსტის მისამართი';

  @override
  String get passwordLabelCaps => 'პაროლი';

  @override
  String get confirmPasswordLabelCaps => 'პაროლის დადასტურება';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'გადარიცხვის ბმული ან ID';

  @override
  String get howToReceive => 'როგორ მივიღოთ';

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
  String get planAdsTitle => 'რეკლამის გეგმა';

  @override
  String get planAdsBullet1 => 'წვდომა რეკლამის უფასო აპლიკაციაზე';

  @override
  String get planAdsBullet2 => 'წაშალეთ ყველა რეკლამა';

  @override
  String get planProTitle => 'პრო გეგმა';

  @override
  String get planProBullet1 => 'გაგზავნეთ ფაილები 20 გბ-მდე';

  @override
  String get planProBullet2 => 'სწრაფი ატვირთვა';

  @override
  String get planPremiumTitle => 'პრემიუმ გეგმა';

  @override
  String get planPremiumBullet1 => 'გაგზავნეთ ფაილები 100 გბ-მდე';

  @override
  String get planPremiumBullet2 => 'სუპერ სწრაფი ატვირთვა';

  @override
  String get planSubscriptionDisclaimer =>
      'საცდელი პერიოდი არ არის — გამოწერა საჭიროა დამატებითი აპლიკაციის ფუნქციონირების გამოსაყენებლად. თქვენ დაუყოვნებლივ ჩამოგეჭრებათ თანხა. ნებისმიერ დროს შეგიძლიათ გააუქმოთ.';

  @override
  String get perMonth => '/ თვე';

  @override
  String get perYear => '/ წელი';

  @override
  String get snackConnectionProblem =>
      'კავშირის პრობლემა. გთხოვთ, სცადოთ ხელახლა.';

  @override
  String get networkTitle => 'ქსელი';

  @override
  String transferIdLabel(String id) {
    return 'ID: <<PH0>>';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ფაილები: <<PH0>> · <<PH1>> ბაიტი';
  }

  @override
  String todayAt(String time) {
    return 'დღეს · <<PH0>>';
  }

  @override
  String yesterdayAt(String time) {
    return 'გუშინ · <<PH0>>';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '<<PH0>>დღის წინ · <<PH1>>';
  }

  @override
  String dateAt(String date, String time) {
    return '<<PH0>> · <<PH1>>';
  }

  @override
  String mbAmount(String amount) {
    return '<<PH0>> მბ';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '<<PH0>> / <<PH1>> • <<PH2>> დარჩა';
  }

  @override
  String get loadingShort => 'იტვირთება…';

  @override
  String get colorPaletteTitle => 'ფერის პალიტრა';

  @override
  String get colorPaletteSectionBackgrounds => 'ფონი (მელნის მასშტაბი)';

  @override
  String get colorPaletteSectionAccent => 'აქცენტი / პირველადი';

  @override
  String get colorPaletteSectionText => 'ტექსტი';

  @override
  String get colorPaletteSectionBorders => 'საზღვრები და მინა';

  @override
  String get colorPaletteSectionSemantic => 'სემანტიკური';

  @override
  String get colorPaletteSectionLive => 'ცოცხალი თემა (მიმდინარე)';

  @override
  String get colorPaletteActiveHint => '★ = აქტიურად გამოიყენება ეკრანებზე';

  @override
  String get colorPaletteCopyHint =>
      'ხანგრძლივად დააჭირეთ ნებისმიერ სვოჩს, რომ დააკოპიროთ მისი თექვსმეტობითი მნიშვნელობა.';

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
  String get settingsAppBrand => 'გააზიარე დიდი\nვიდეო ფაილები';

  @override
  String get loginEmailPasswordPrompt =>
      'შესასვლელად შეიყვანეთ თქვენი ელფოსტა და პაროლი.';

  @override
  String get forgotPassword => 'დაგავიწყდათ პაროლი?';

  @override
  String get forgotPasswordTitle => 'პაროლის გადატვირთვა';

  @override
  String get forgotPasswordBody =>
      'შეიყვანეთ თქვენი ანგარიშის ელფოსტა და ჩვენ გამოგიგზავნით გადატვირთვის კოდს.';

  @override
  String get forgotPasswordSubmit => 'გადატვირთვის კოდის გაგზავნა';

  @override
  String get resetPasswordTitle => 'შექმენით ახალი პაროლი';

  @override
  String get resetPasswordBody =>
      'შეიყვანეთ 6-ნიშნა კოდი თქვენი ელფოსტადან და აირჩიეთ ახალი პაროლი.';

  @override
  String get resetPasswordSubmit => 'პაროლის განახლება';

  @override
  String get snackPasswordResetSent => 'გადატვირთვის კოდი გაგზავნილია';

  @override
  String get snackPasswordResetSentBody =>
      'შეამოწმეთ თქვენი ელფოსტა 6-ნიშნა გადატვირთვის კოდისთვის.';

  @override
  String get snackPasswordResetFailed =>
      'გადატვირთვის კოდის გაგზავნა ვერ მოხერხდა. სცადეთ ხელახლა.';

  @override
  String get snackPasswordUpdated => 'პაროლი განახლებულია';

  @override
  String get snackPasswordUpdatedBody => 'შედით თქვენი ახალი პაროლით.';

  @override
  String get snackPasswordResetInvalid =>
      'არასწორი ან ვადაგასული გადატვირთვის კოდი.';

  @override
  String get otpDigitLabel => '6-ნიშნა კოდი';

  @override
  String receiveMoreFiles(int count) {
    return '+<<PH0>> მეტი ფაილი';
  }
}
