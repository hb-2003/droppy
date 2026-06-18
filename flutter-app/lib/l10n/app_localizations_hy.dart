// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'Կիսվեք մեծ վիդեո ֆայլերով';

  @override
  String get heroAccent => 'ակնթարթորեն.';

  @override
  String get heroTitle => 'Ուղարկեք ծանր ֆայլեր';

  @override
  String get splashLoading => 'Բեռնվում է…';

  @override
  String get navSend => 'Վահանակ';

  @override
  String get navHome => 'Տուն';

  @override
  String get navHistory => 'Պատմություն';

  @override
  String get navReceive => 'Ստանալ';

  @override
  String get navPlans => 'Պլաններ';

  @override
  String get navDownload => 'Բեռնել';

  @override
  String get navSettings => 'Կարգավորումներ';

  @override
  String get modeLink => 'Ստացեք հղում';

  @override
  String get modeEmail => 'Ուղարկել էլփոստով';

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
  String get pickFiles => 'Ընտրեք ֆայլեր';

  @override
  String get pickFolder => 'Ընտրեք թղթապանակ';

  @override
  String get emailFrom => 'Ձեր էլ';

  @override
  String get mailFromUsesAccount => 'Օգտագործում է ձեր մուտքագրված էլ․ հասցեն։';

  @override
  String get recipientEmailsHelper =>
      'Բազմաթիվ ստացողներ՝ առանձնացրե՛ք ստորակետերով, ստորակետերով կամ բացատներով:';

  @override
  String get emailTo => 'Ստացողի էլ';

  @override
  String get messageOptional => 'Հաղորդագրություն (ըստ ցանկության)';

  @override
  String get passwordOptional => 'Գաղտնաբառ (ըստ ցանկության)';

  @override
  String get destructAfterDownload => 'Ջնջել ներբեռնումից հետո';

  @override
  String get destructNo => 'Մատչելի պահել';

  @override
  String get sendButton => 'Ուղարկել';

  @override
  String get uploading => 'Վերբեռնվում է…';

  @override
  String get uploadComplete => 'Կատարված է';

  @override
  String get shareLinkTitle => 'Ձեր հղումը';

  @override
  String get copyLink => 'Պատճենել հղումը';

  @override
  String get share => 'Կիսվել';

  @override
  String get shareQrCode => 'Կիսվեք QR կոդը';

  @override
  String get uploadMore => 'Ուղարկեք մեկ ուրիշը';

  @override
  String get emailSentTitle => 'Ուղարկված նամակներ';

  @override
  String get verifyEmailTitle => 'Ստուգեք ձեր էլ';

  @override
  String get verifyCodeHint => 'Մուտքագրեք կոդը ձեր էլ.փոստից';

  @override
  String get verifySubmit => 'Ստուգեք';

  @override
  String get verifyResendCode => 'Կրկին ուղարկել կոդը';

  @override
  String get verifyCodeSent => 'Նոր հաստատման կոդ է ուղարկվել ձեր էլ.';

  @override
  String get verifyEmailSmtpWarningTitle =>
      'Հաստատման նամակը կարող է չուղարկվել';

  @override
  String get verifyEmailSmtpWarningBody =>
      'Սերվերը չկարողացավ հաստատել առաքումը (հաճախ SMTP-ն սխալ կազմաձևված է): Խնդրեք ձեր կայքի ադմինիստրատորին ստուգել Փոստի կարգավորումները ադմինիստրատորի վահանակում, այնուհետև հպեք «Վերուղարկեք կոդը»:';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'Եթե ​​այն չհասնի. ստուգեք անպետք/Սպամ և առաջխաղացումները, սպասեք մի րոպե, հաստատեք, որ $email-ը տառասխալներ չունի, այնուհետև սեղմեք Կրկին ուղարկել:';
  }

  @override
  String get loginTitle => 'Մուտք գործեք';

  @override
  String get signupHint => 'Օգտագործեք ձեր կայքի հաշվի էլ.փոստը և գաղտնաբառը:';

  @override
  String get emailHint => 'Էլ';

  @override
  String get passwordHint => 'Գաղտնաբառ';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get signIn => 'Մուտք գործեք';

  @override
  String get downloadIdHint => 'Փոխանցման ID';

  @override
  String get privateIdHint => 'Անձնական ID (ըստ ցանկության)';

  @override
  String get fetchTransfer => 'Բաց փոխանցում';

  @override
  String get downloadFile => 'Բեռնել';

  @override
  String get unlockDownload => 'Բացել ներբեռնումը';

  @override
  String get downloadSaved => 'Պահված է Ներբեռնումներ';

  @override
  String get errorGeneric => 'Սխալ առաջացավ';

  @override
  String get errorNetwork => 'Ցանցի սխալ';

  @override
  String get errorBadResponse => 'Սերվերի անսպասելի պատասխան';

  @override
  String get termsAccept => 'Ես համաձայն եմ պայմաններին';

  @override
  String get settingsApiUrl => 'Հանրային կայքի URL';

  @override
  String get settingsAccount => 'Հաշիվ';

  @override
  String get settingsAppearance => 'Արտաքին տեսք';

  @override
  String get settingsTheme => 'Թեմա';

  @override
  String get themeSystem => 'Համակարգ';

  @override
  String get themeLight => 'Լույս';

  @override
  String get themeDark => 'Մութ';

  @override
  String get settingsSignedIn => 'Դուք մուտք եք գործել:';

  @override
  String get settingsSignedOut => 'Դուք մուտք չեք գործել:';

  @override
  String get settingsOpenWebsite => 'Բացել կայքը';

  @override
  String get signUp => 'Գրանցվեք';

  @override
  String get settingsLinks => 'Հղումներ';

  @override
  String get privacyPolicy => 'Գաղտնիության քաղաքականություն';

  @override
  String get termsOfService => 'Ծառայության պայմանները';

  @override
  String get about => 'Մոտ';

  @override
  String get moreApps => 'Ավելի շատ հավելվածներ';

  @override
  String get settingsLanguage => 'Լեզու';

  @override
  String get languageEnglish => 'Անգլերեն';

  @override
  String get languageHindi => 'հինդի';

  @override
  String get logout => 'Դուրս գալ';

  @override
  String get deleteAccount => 'Ջնջել հաշիվը';

  @override
  String get deleteAccountConfirmTitle => 'Ջնջե՞լ ձեր հաշիվը';

  @override
  String get deleteAccountConfirmBody =>
      'Սա ընդմիշտ կջնջի ձեր հաշիվը և դուրս կբերի ձեզ: Ձեր փոխանցման հղումները կշարունակեն աշխատել, բայց դրանք այլևս չեն հայտնվի ձեր պատմության մեջ:';

  @override
  String get deleteAccountSuccess => 'Հաշիվը ջնջված է';

  @override
  String get deleteAccountSuccessBody => 'Ձեր հաշիվը հեռացվել է:';

  @override
  String get deleteAccountFailed => 'Չհաջողվեց ջնջել հաշիվը';

  @override
  String get deleteAccountFailedBody =>
      'Խնդրում ենք կրկին փորձել կամ կապվել աջակցման ծառայության հետ:';

  @override
  String get maxFilesReached => 'Չափազանց շատ ֆայլեր';

  @override
  String get fileTooLarge => 'Ֆայլը չափազանց մեծ է';

  @override
  String get ipLimit => 'Չափից շատ վերբեռնումներ այս ցանցից';

  @override
  String get fillFields => 'Խնդրում ենք լրացնել պարտադիր դաշտերը';

  @override
  String get invalidEmail => 'Անվավեր էլ';

  @override
  String get maxRecipientsReached => 'Չափազանց շատ ստացողներ';

  @override
  String get loginRequiredTitle => 'Մուտք գործեք պարտադիր';

  @override
  String get loginRequiredBody =>
      'Այս սերվերը վերբեռնելու կամ ներբեռնելու համար հաշիվ է պահանջում:';

  @override
  String get settingsSubtitle => 'Հավելվածի նախապատվությունները և հաշիվը:';

  @override
  String get dropHeavyFile => 'Ծանր ֆայլ գցեք այստեղ:';

  @override
  String upToTotal(String max) {
    return 'Ընդամենը մինչև $max';
  }

  @override
  String get removeAll => 'Հեռացնել բոլորը';

  @override
  String get addFiles => 'Ավելացնել ֆայլեր';

  @override
  String get adding => 'Ավելացվում է…';

  @override
  String get options => 'Ընտրանքներ';

  @override
  String get selfDestruct => 'Ներբեռնումից հետո ինքնաոչնչացում';

  @override
  String get expiry => 'Ժամկետը';

  @override
  String get cancelUpload => 'Չեղարկել վերբեռնումը';

  @override
  String get transferReady => 'Փոխանցումը պատրաստ է:';

  @override
  String get emailSentReady => 'Նամակ ուղարկվեց:';

  @override
  String get shareRecipientHint => 'Կիսվեք այս հղումով ձեր ստացողի հետ:';

  @override
  String get emailSentBody => 'Մենք ծանուցել ենք ձեր ստացող(ներին):';

  @override
  String get scanQr => 'Սկանավորեք՝ փոխանցման հղումը բացելու համար:';

  @override
  String get shareLinkButton => 'ԿԻՍՎԵԼ ՀՂՈՒՄԸ';

  @override
  String get verifyFourDigit =>
      'Մուտքագրեք ձեր ուղարկողի էլ.փոստին ուղարկված 4 նիշանոց կոդը:';

  @override
  String get starting => 'Սկսվում է…';

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
    return '$amount ՄԲ է մնացել';
  }

  @override
  String get fillField => 'Խնդրում ենք լրացնել այս դաշտը։';

  @override
  String get enterValidEmail => 'Մուտքագրեք վավեր էլ.';

  @override
  String get message => 'Հաղորդագրություն';

  @override
  String get recipientEmail => 'Ստացողի էլ';

  @override
  String get active => 'Ակտիվ';

  @override
  String get expired => 'Ժամկետանց';

  @override
  String get historyTitle => 'Իմ տրանսֆերները';

  @override
  String get signInToSeeTransfers =>
      'Մուտք գործեք՝ ձեր փոխանցումները տեսնելու համար';

  @override
  String get signInTransfersBody =>
      'Մենք օգտագործում ենք ձեր էլ.փոստը՝ փոխանցումները ձեր հաշվին կապելու համար. գաղտնաբառի կարիք չկա:';

  @override
  String get couldNotLoadTransfers => 'Չհաջողվեց բեռնել փոխանցումները';

  @override
  String get retry => 'Կրկին փորձեք';

  @override
  String get noTransfersYet => 'Տրանսֆերներ դեռ չկան';

  @override
  String get noTransfersBody => 'Ֆայլ ուղարկելուց հետո այն կհայտնվի այստեղ:';

  @override
  String get transferDetails => 'Տեղափոխման մանրամասները';

  @override
  String get filesSection => 'Ֆայլեր';

  @override
  String get receiveTitle => 'Ստացեք ֆայլեր';

  @override
  String get receiveSubtitle =>
      'Տեղադրեք փոխանցման հղումը ֆայլեր ներբեռնելու համար:';

  @override
  String get pasteTooltip => 'Կպցնել';

  @override
  String get findTransfer => 'Գտեք փոխանցում';

  @override
  String get receiveScanQr => 'Scan QR';

  @override
  String get receiveScanQrTitle => 'Սկանավորեք փոխանցման QR-ն';

  @override
  String get receiveScanQrHint => 'Հավասարեցրեք QR կոդը շրջանակի ներսում:';

  @override
  String get receiveScanQrInvalid => 'Այս QR կոդը վավեր փոխանցման հղում չէ:';

  @override
  String get receiveScanQrCameraDenied =>
      'QR կոդերը սկանավորելու համար պահանջվում է տեսախցիկի հասանելիություն:';

  @override
  String get receiveStepGetLink => 'Ստացեք հղումը';

  @override
  String get receiveStepGetLinkBody =>
      'Խնդրեք ուղարկողին փոխանցել ձեզ հետ փոխանցման հղումը:';

  @override
  String get receiveStepPaste => 'Կպցնել և գտնել';

  @override
  String get receiveStepPasteBody =>
      'Տեղադրեք վերը նշված հղումը և կտտացրեք «Գտնել փոխանցումը»:';

  @override
  String get receiveStepDownload => 'Ներբեռնեք ֆայլեր';

  @override
  String get receiveStepDownloadBody =>
      'Տեսեք ֆայլի մանրամասները և ներբեռնեք ամեն ինչ միանգամից:';

  @override
  String get lookingUpTransfer => 'Փնտրվում է փոխանցում…';

  @override
  String get transferNotFound =>
      'Փոխանցումը չի գտնվել: Ստուգեք հղումը և նորից փորձեք:';

  @override
  String get transferExpired =>
      'Այս փոխանցման ժամկետը սպառվել է և այլևս հասանելի չէ:';

  @override
  String get transferLoginRequired =>
      'Այս փոխանցումը մուտք գործելու համար անհրաժեշտ է մուտք գործել:';

  @override
  String get transferBadResponse =>
      'Սերվերի անսպասելի պատասխան: Ստուգեք ձեր կապը:';

  @override
  String get transferNetworkError =>
      'Ցանցի սխալ. Ստուգեք ձեր ինտերնետային կապը:';

  @override
  String transferLoadFailed(String error) {
    return 'Չհաջողվեց բեռնել փոխանցումը՝ $error';
  }

  @override
  String get passwordProtected => 'Պաշտպանված է գաղտնաբառով';

  @override
  String get enterPassword => 'Մուտքագրեք գաղտնաբառը';

  @override
  String get unlock => 'Ապակողպել';

  @override
  String get downloading => 'Ներբեռնվում է…';

  @override
  String get downloadAllFiles => 'Ներբեռնեք բոլոր ֆայլերը';

  @override
  String get downloadSingleFile => 'Ներբեռնեք ֆայլը';

  @override
  String get receiveAnother => 'Ստացեք ևս մեկ փոխանցում';

  @override
  String get plansTitle => 'Պլաններ';

  @override
  String get plansSubtitle =>
      'Թարմացրեք՝ գովազդները հեռացնելու և ավելի մեծ ֆայլեր ուղարկելու համար:';

  @override
  String get storeUnavailable => 'Խանութն անհասանելի է';

  @override
  String get storeUnavailableBody =>
      'Ներծրագրային գնումներն այս պահին հասանելի չեն:';

  @override
  String get storeLoadingPrices => 'Գները բեռնվում են App Store-ից…';

  @override
  String get storePricesUnavailable => 'Գները անհասանելի են';

  @override
  String get storePricesPartial => 'Որոշ գներ չհաջողվեց բեռնել';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded $total բաժանորդագրության ապրանքները բեռնված են:';
  }

  @override
  String get storeSetupHint =>
      'Փորձեք իրական iPhone-ով (ոչ սիմուլյատորով), օգտագործեք Sandbox Apple ID-ն և համոզվեք, որ բոլոր 6 բաժանորդագրությունները ստեղծվել են այս հավելվածի փաթեթի ID-ի ներքո App Store Connect-ում՝ գնագոյացման համար:';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/ամիս';
  }

  @override
  String get freeVersionAds =>
      'Ներկայումս դուք օգտագործում եք մեր անվճար տարբերակը՝ գովազդով';

  @override
  String get restorePurchases => 'Վերականգնել գնումները';

  @override
  String get plansContinue => 'Շարունակեք';

  @override
  String get planLinkRestore => 'Վերականգնել';

  @override
  String get termsAndConditions => 'Պայմաններ և պայմաններ';

  @override
  String get createAccountTitle => 'Ստեղծել հաշիվ';

  @override
  String get signUpSubtitle => 'Գրանցվեք էլեկտրոնային փոստով և գաղտնաբառով:';

  @override
  String get confirmPassword => 'Հաստատեք գաղտնաբառը';

  @override
  String get passwordMin8 => 'Գաղտնաբառ (նվազագույնը 8 նիշ)';

  @override
  String get alreadyHaveAccount => 'Արդեն ունե՞ք հաշիվ:';

  @override
  String get checkEmailTitle => 'Ստուգեք ձեր\nէլ';

  @override
  String otpSentTo(String email) {
    return 'Մենք ուղարկել ենք 6 նիշանոց կոդը\n$email';
  }

  @override
  String get verifyAndSignIn => 'Ստուգեք և մուտք գործեք';

  @override
  String get didntReceiveCode => 'Չե՞ք ստացել:';

  @override
  String get tryAgain => 'Նորից փորձեք';

  @override
  String get otpExpiresHint =>
      'Կոդը սպառվում է 5 րոպեից: Ստուգեք ձեր սպամի թղթապանակը, եթե այն չեք տեսնում:';

  @override
  String get snackError => 'Սխալ';

  @override
  String get snackCopied => 'Պատճենվել է';

  @override
  String get snackCopiedBody => 'Հղումը պատճենվեց սեղմատախտակին';

  @override
  String get snackWelcome => 'Բարի գալուստ';

  @override
  String get snackAccountCreated => 'Ստեղծվել է հաշիվ';

  @override
  String get snackEnterEmail => 'Խնդրում ենք մուտքագրել ձեր էլ';

  @override
  String get snackEnterPassword => 'Խնդրում ենք մուտքագրել ձեր գաղտնաբառը';

  @override
  String get snackInvalidEmail => 'Անվավեր էլ․ հասցե';

  @override
  String get snackInvalidCredentials => 'Սխալ էլփոստ կամ գաղտնաբառ';

  @override
  String get snackPasswordMin8 => 'Գաղտնաբառը պետք է լինի առնվազն 8 նիշ';

  @override
  String get snackPasswordMismatch => 'Գաղտնաբառերը չեն համընկնում:';

  @override
  String get snackAccountExists =>
      'Հաշիվն արդեն գոյություն ունի: Խնդրում ենք մուտք գործել:';

  @override
  String get snackSignupFailed => 'Չհաջողվեց ստեղծել հաշիվ: Կրկին փորձեք:';

  @override
  String get snackEnterOtp => 'Խնդրում ենք մուտքագրել 6 նիշանոց կոդը';

  @override
  String get snackOtpExpired => 'Կոդը ժամկետանց է';

  @override
  String get snackOtpExpiredBody => 'Խնդրում ենք նոր կոդ խնդրել:';

  @override
  String get snackInvalidCode => 'Անվավեր կոդը';

  @override
  String get snackInvalidCodeBody => 'Կոդը սխալ է։ Խնդրում ենք կրկին փորձել:';

  @override
  String get snackSendCodeFailed =>
      'Չհաջողվեց ուղարկել կոդը: Ստուգեք ձեր կապը և նորից փորձեք:';

  @override
  String get snackEmptyFolder => 'Դատարկ թղթապանակ';

  @override
  String get snackEmptyFolderBody => 'Ընտրված պանակում ֆայլեր չեն գտնվել:';

  @override
  String get snackFolderUnsupported => 'Չի աջակցվում';

  @override
  String get snackFolderUnsupportedBody =>
      'Թղթապանակի վերբեռնումը հասանելի չէ այս հարթակում:';

  @override
  String get snackFolderReadError => 'Չհաջողվեց կարդալ ընտրված թղթապանակը:';

  @override
  String get snackLimitReached => 'Սահմանաչափը հասել է';

  @override
  String get snackLimitFilesBody =>
      'Որոշ ֆայլեր չեն ավելացվել չափի կամ ֆայլերի քանակի սահմանափակումների պատճառով:';

  @override
  String get snackFreePlanLimit =>
      'Անվճար պլանը թույլ է տալիս մինչև 5 ԳԲ մեկ փոխանցման համար: Խնդրում ենք հեռացնել որոշ ֆայլեր կամ թարմացնել:';

  @override
  String get snackSignInEmail =>
      'Խնդրում ենք մուտք գործել՝ էլփոստով ուղարկելու համար:';

  @override
  String get snackUploadStartFailed => 'Չհաջողվեց սկսել վերբեռնումը:';

  @override
  String get snackVerifyEnterCode => 'Մուտքագրեք 4 նիշանոց կոդը ձեր էլ.';

  @override
  String get snackVerifyInvalid =>
      'Անվավեր կամ ժամկետանց ծածկագիր: Ստուգեք էլփոստը և նորից փորձեք:';

  @override
  String get snackVerifyResendFailed =>
      'Չհաջողվեց նորից ուղարկել կոդը: Կրկին փորձեք:';

  @override
  String get snackDownloadComplete => 'Ներբեռնումն ավարտված է';

  @override
  String snackDownloadSaved(String filename) {
    return '«$filename»-ը պահված է Ներբեռնումներ';
  }

  @override
  String get snackDownloadFailed => 'Ներբեռնումը ձախողվեց';

  @override
  String get snackSaved => 'Պահպանված է';

  @override
  String get snackServerUrlUpdated =>
      'Սերվերի URL-ը թարմացվել է: Վերագործարկեք հավելվածը՝ կիրառելու համար:';

  @override
  String get snackStoreError => 'Պահպանման սխալ';

  @override
  String get snackMissingProducts => 'Բացակայող ապրանքներ';

  @override
  String get snackStoreUnavailable => 'Խանութն անհասանելի է';

  @override
  String get snackStoreUnavailableBody =>
      'Ներծրագրային գնումները հասանելի չեն այս սարքում:';

  @override
  String get snackProductNotLoaded => 'Ապրանքը դեռ բեռնված չէ:';

  @override
  String get snackRestoreStarted => 'Վերականգնումը սկսվեց';

  @override
  String get snackRestoreStartedBody => 'Մենք ստուգում ենք ձեր գնումները:';

  @override
  String get snackRestoreFailed => 'Վերականգնումը ձախողվեց';

  @override
  String get snackProcessing => 'Մշակում';

  @override
  String get snackPleaseWait => 'Խնդրում ենք սպասել…';

  @override
  String get snackSuccess => 'Հաջողություն';

  @override
  String get snackPurchaseCompleted => 'Գնումը ավարտված է:';

  @override
  String get snackPurchaseError => 'Գնման սխալ';

  @override
  String get snackPurchaseFailed => 'Գնումը ձախողվեց:';

  @override
  String get snackCanceled => 'Չեղարկված է';

  @override
  String get snackPurchaseCanceled => 'Գնումը չեղարկվել է:';

  @override
  String get snackUpload => 'Վերբեռնել';

  @override
  String get snackVerify => 'Ստուգեք';

  @override
  String get doNotExpire => 'Ժամկետը մի՛ լրանա';

  @override
  String get hourSingular => 'ժամ';

  @override
  String get hourPlural => 'ժամեր';

  @override
  String get daySingular => 'օր';

  @override
  String get dayPlural => 'օրեր';

  @override
  String get emailAddressLabel => 'ՓՈՍՏԻ ՀԱՍՑԵ';

  @override
  String get passwordLabelCaps => 'գաղտնաբառ';

  @override
  String get confirmPasswordLabelCaps => 'ՀԱՍՏԱՏԵՔ գաղտնաբառը';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'ՏՐԱՆՍՖԵՐՏԻ ՀՂՈՒՄԸ ԿԱՄ ID';

  @override
  String get howToReceive => 'ԻՆՉՊԵՍ ՍՏԱՆԵԼ';

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
  String get planAdsTitle => 'Գովազդային պլան';

  @override
  String get planAdsBullet1 => 'Մուտք դեպի գովազդ անվճար հավելված';

  @override
  String get planAdsBullet2 => 'Հեռացրեք բոլոր գովազդները';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Ուղարկեք ֆայլեր մինչև 20 ԳԲ';

  @override
  String get planProBullet2 => 'Արագ վերբեռնում';

  @override
  String get planPremiumTitle => 'Պրեմիում պլան';

  @override
  String get planPremiumBullet1 => 'Ուղարկեք ֆայլեր մինչև 100 ԳԲ';

  @override
  String get planPremiumBullet2 => 'Սուպեր արագ վերբեռնում';

  @override
  String get planSubscriptionDisclaimer =>
      'Փորձաշրջան չկա. հավելվածի լրացուցիչ գործառույթն օգտագործելու համար բաժանորդագրություն է պահանջվում: Ձեզանից անմիջապես կգանձվի: Դուք կարող եք ցանկացած պահի չեղարկել:';

  @override
  String get perMonth => '/ ամիս';

  @override
  String get perYear => '/ տարի';

  @override
  String get snackConnectionProblem =>
      'Միացման խնդիր. Խնդրում ենք կրկին փորձել:';

  @override
  String get networkTitle => 'Ցանց';

  @override
  String transferIdLabel(String id) {
    return 'ID՝ $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Ֆայլեր՝ $count · $size բայթ';
  }

  @override
  String todayAt(String time) {
    return 'Այսօր · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Երեկ · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d առաջ · $time';
  }

  @override
  String dateAt(String date, String time) {
    return '$date · $time';
  }

  @override
  String mbAmount(String amount) {
    return '$amount ՄԲ';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '$sent / $total • $remaining մնացել է';
  }

  @override
  String get loadingShort => 'Բեռնվում է…';

  @override
  String get colorPaletteTitle => 'Գունավոր գունապնակ';

  @override
  String get colorPaletteSectionBackgrounds => 'Ֆոնային (թանաքի սանդղակ)';

  @override
  String get colorPaletteSectionAccent => 'Առոգանություն / Առաջնային';

  @override
  String get colorPaletteSectionText => 'Տեքստ';

  @override
  String get colorPaletteSectionBorders => 'Սահմաններ և ապակիներ';

  @override
  String get colorPaletteSectionSemantic => 'Իմաստային';

  @override
  String get colorPaletteSectionLive => 'Կենդանի թեմա (ներկայիս)';

  @override
  String get colorPaletteActiveHint =>
      '★ = ակտիվորեն օգտագործվում է էկրաններում';

  @override
  String get colorPaletteCopyHint =>
      'Երկար սեղմեք ցանկացած նմուշ՝ դրա վեցանկյուն արժեքը պատճենելու համար:';

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
  String get settingsAppBrand => 'Տարածել մեծ\nՎիդեո ֆայլեր';

  @override
  String get loginEmailPasswordPrompt =>
      'Մուտք գործելու համար մուտքագրեք ձեր էլ․ հասցեն և գաղտնաբառը։';

  @override
  String get forgotPassword => 'Մոռացել եք գաղտնաբառը';

  @override
  String get forgotPasswordTitle => 'Վերականգնել գաղտնաբառը';

  @override
  String get forgotPasswordBody =>
      'Մուտքագրեք ձեր հաշվի էլ.փոստը և մենք կուղարկենք վերակայման կոդը:';

  @override
  String get forgotPasswordSubmit => 'Ուղարկեք վերակայման կոդը';

  @override
  String get resetPasswordTitle => 'Ստեղծեք նոր գաղտնաբառ';

  @override
  String get resetPasswordBody =>
      'Մուտքագրեք ձեր էլ.փոստի 6 նիշանոց կոդը և ընտրեք նոր գաղտնաբառ:';

  @override
  String get resetPasswordSubmit => 'Թարմացրեք գաղտնաբառը';

  @override
  String get snackPasswordResetSent => 'Վերակայման կոդը ուղարկվեց';

  @override
  String get snackPasswordResetSentBody => 'Ստուգեք ձեր էլ.';

  @override
  String get snackPasswordResetFailed =>
      'Չհաջողվեց ուղարկել վերակայման կոդը: Կրկին փորձեք:';

  @override
  String get snackPasswordUpdated => 'Գաղտնաբառը թարմացվել է';

  @override
  String get snackPasswordUpdatedBody => 'Մուտք գործեք ձեր նոր գաղտնաբառով:';

  @override
  String get snackPasswordResetInvalid =>
      'Անվավեր կամ ժամկետանց վերակայման կոդը:';

  @override
  String get otpDigitLabel => '6-ՆԻՇ ԿՈԴ';

  @override
  String receiveMoreFiles(int count) {
    return '+$count ավելի շատ ֆայլեր';
  }
}
