// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '대용량 동영상 파일을';

  @override
  String get heroAccent => '즉시 공유하세요.';

  @override
  String get heroTitle => '무거운 영상을 보내세요 파일';

  @override
  String get splashLoading => '로드 중…';

  @override
  String get navSend => '대시보드';

  @override
  String get navHome => '홈';

  @override
  String get navHistory => '히스토리';

  @override
  String get navReceive => '수신';

  @override
  String get navPlans => '계획';

  @override
  String get navDownload => '다운로드';

  @override
  String get navSettings => '설정';

  @override
  String get modeLink => '가져오기 링크';

  @override
  String get modeEmail => '이메일로 보내기';

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
  String get pickFiles => '파일 선택';

  @override
  String get pickFolder => '폴더 선택';

  @override
  String get emailFrom => '이메일';

  @override
  String get mailFromUsesAccount => '로그인된 이메일을 사용합니다.';

  @override
  String get recipientEmailsHelper => '수신자 여러 명: 쉼표, 세미콜론, 공백으로 구분하세요.';

  @override
  String get emailTo => '수신자 이메일';

  @override
  String get messageOptional => '메시지(선택)';

  @override
  String get passwordOptional => '비밀번호(선택)';

  @override
  String get destructAfterDownload => '다운로드 후 삭제';

  @override
  String get destructNo => '보관함';

  @override
  String get sendButton => '보내기';

  @override
  String get uploading => '업로드 중…';

  @override
  String get uploadComplete => '완료';

  @override
  String get shareLinkTitle => '귀하 링크';

  @override
  String get copyLink => '링크 복사';

  @override
  String get share => '공유';

  @override
  String get shareQrCode => 'QR 코드 공유';

  @override
  String get uploadMore => '다른 사람 보내기';

  @override
  String get emailSentTitle => '보낸 이메일';

  @override
  String get verifyEmailTitle => '이메일 확인';

  @override
  String get verifyCodeHint => '귀하의 코드를 입력하세요 이메일';

  @override
  String get verifySubmit => '확인';

  @override
  String get verifyResendCode => '코드 재전송';

  @override
  String get verifyCodeSent => '새 인증 코드가 이메일로 전송되었습니다.';

  @override
  String get verifyEmailSmtpWarningTitle => '확인 이메일이 전송되지 않았을 수 있습니다';

  @override
  String get verifyEmailSmtpWarningBody =>
      '서버에서 전송을 확인할 수 없습니다(종종 SMTP가 잘못 구성되어 있음). 사이트 관리자에게 관리자 패널에서 메일 설정을 확인한 후 코드 재전송을 탭하세요.';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return '코드가 도착하지 않는 경우: 정크/스팸 및 프로모션을 확인하고 잠시 기다린 후 $email에 오타가 없는지 확인한 후 재전송을 탭하세요.';
  }

  @override
  String get loginTitle => '로그인';

  @override
  String get signupHint => '사이트 계정 이메일을 사용하여 비밀번호';

  @override
  String get emailHint => '이메일';

  @override
  String get passwordHint => '비밀번호';

  @override
  String get cancel => '취소';

  @override
  String get signIn => '로그인';

  @override
  String get downloadIdHint => '이체ID';

  @override
  String get privateIdHint => '비공개ID(선택)';

  @override
  String get fetchTransfer => '이체공개';

  @override
  String get downloadFile => '다운로드';

  @override
  String get unlockDownload => '다운로드 잠금 해제';

  @override
  String get downloadSaved => '다운로드에 저장됨';

  @override
  String get errorGeneric => '문제가 발생했습니다';

  @override
  String get errorNetwork => '네트워크 오류';

  @override
  String get errorBadResponse => '예기치 않은 서버 응답';

  @override
  String get termsAccept => '약관에 동의합니다';

  @override
  String get settingsApiUrl => '공개 사이트 URL';

  @override
  String get settingsAccount => '계정';

  @override
  String get settingsAppearance => '외모';

  @override
  String get settingsTheme => '테마';

  @override
  String get themeSystem => '시스템';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsSignedIn => '로그인되어 있습니다.';

  @override
  String get settingsSignedOut => '로그인되지 않았습니다 in.';

  @override
  String get settingsOpenWebsite => '홈페이지 열기';

  @override
  String get signUp => '회원가입';

  @override
  String get settingsLinks => '링크';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get termsOfService => '이용약관';

  @override
  String get about => '소개';

  @override
  String get moreApps => '자세히 보기 앱';

  @override
  String get settingsLanguage => '언어';

  @override
  String get languageEnglish => '영어';

  @override
  String get languageHindi => '힌디어';

  @override
  String get logout => '로그아웃';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get deleteAccountConfirmTitle => '계정을 삭제하시겠습니까?';

  @override
  String get deleteAccountConfirmBody =>
      '이렇게 하면 계정이 영구적으로 삭제되고 로그아웃됩니다. 전송 링크는 계속 작동하지만 기록에 더 이상 표시되지 않습니다.';

  @override
  String get deleteAccountSuccess => '계정이 삭제되었습니다';

  @override
  String get deleteAccountSuccessBody => '계정이 제거되었습니다.';

  @override
  String get deleteAccountFailed => '계정을 삭제할 수 없습니다';

  @override
  String get deleteAccountFailedBody => '다시 시도하거나 지원팀에 문의하세요.';

  @override
  String get maxFilesReached => '파일이 너무 많습니다';

  @override
  String get fileTooLarge => '파일 너무 대형';

  @override
  String get ipLimit => '이 네트워크에서 업로드가 너무 많습니다';

  @override
  String get fillFields => '필수 항목을 입력하세요';

  @override
  String get invalidEmail => '잘못된 이메일';

  @override
  String get maxRecipientsReached => '수신자가 너무 많습니다';

  @override
  String get loginRequiredTitle => '로그인이 필요합니다';

  @override
  String get loginRequiredBody => '이 서버에는 업로드하거나 다운로드하려면 계정이 필요합니다.';

  @override
  String get settingsSubtitle => '앱 기본 설정 및 계정.';

  @override
  String get dropHeavyFile => '무거운 파일을 여기에 드롭하세요.';

  @override
  String upToTotal(String max) {
    return '최대 $max개';
  }

  @override
  String get removeAll => '모두 제거';

  @override
  String get addFiles => '파일 추가';

  @override
  String get adding => '추가…';

  @override
  String get options => '옵션';

  @override
  String get selfDestruct => '다음 이후 자동 삭제 다운로드';

  @override
  String get expiry => '만료';

  @override
  String get cancelUpload => '업로드 취소';

  @override
  String get transferReady => '전송 준비 완료!';

  @override
  String get emailSentReady => '이메일 전송!';

  @override
  String get shareRecipientHint => '이 링크를 수신자와 공유하세요.';

  @override
  String get emailSentBody => '수신자에게 알렸습니다.';

  @override
  String get scanQr => '전송 링크를 열려면 스캔하세요.';

  @override
  String get shareLinkButton => '공유 LINK';

  @override
  String get verifyFourDigit => '보낸 사람 이메일로 전송된 4자리 코드를 입력하세요.';

  @override
  String get starting => '시작 중…';

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
    return '${amount}MB 남음';
  }

  @override
  String get fillField => '이 필드를 입력하세요.';

  @override
  String get enterValidEmail => '유효한 코드를 입력하세요. 이메일.';

  @override
  String get message => '메시지';

  @override
  String get recipientEmail => '수신자 이메일';

  @override
  String get active => '활성';

  @override
  String get expired => '만료됨';

  @override
  String get historyTitle => '내 이체';

  @override
  String get signInToSeeTransfers => '이체를 보려면 로그인하세요';

  @override
  String get signInTransfersBody =>
      '저희는 이메일을 사용하여 이체 내역을 귀하의 계정에 연결합니다. 비밀번호가 필요하지 않습니다.';

  @override
  String get couldNotLoadTransfers => '로드할 수 없습니다. 전송';

  @override
  String get retry => '재시도';

  @override
  String get noTransfersYet => '아직 전송이 없습니다';

  @override
  String get noTransfersBody => '파일을 보내면 여기에 나타납니다.';

  @override
  String get transferDetails => '전송 세부정보';

  @override
  String get filesSection => '파일';

  @override
  String get receiveTitle => '파일 받기';

  @override
  String get receiveSubtitle => '다운로드하려면 전송 링크 붙여넣기 ';

  @override
  String get pasteTooltip => '붙여넣기';

  @override
  String get findTransfer => '전송 찾기';

  @override
  String get receiveScanQr => 'QR 스캔';

  @override
  String get receiveScanQrTitle => '전송 QR 스캔';

  @override
  String get receiveScanQrHint => 'QR 코드를 프레임 안쪽에 맞춥니다.';

  @override
  String get receiveScanQrInvalid => '이 QR 코드는 유효한 전송 링크가 아닙니다.';

  @override
  String get receiveScanQrCameraDenied => 'QR 스캔을 위해서는 카메라 접속이 필요합니다 ';

  @override
  String get receiveStepGetLink => '링크 받기';

  @override
  String get receiveStepGetLinkBody => '발신자에게 전송 링크를 공유해달라고 요청하세요.';

  @override
  String get receiveStepPaste => '붙여넣기 및 찾기';

  @override
  String get receiveStepPasteBody => '위의 링크를 붙여넣고 \"전송 찾기\"를 탭하세요.';

  @override
  String get receiveStepDownload => '파일 다운로드';

  @override
  String get receiveStepDownloadBody =>
      '파일 세부정보를 확인하고 모든 내용을 다음에서 다운로드하세요. 한 번.';

  @override
  String get lookingUpTransfer => '이체 조회 중…';

  @override
  String get transferNotFound => '이체를 찾을 수 없습니다. 링크를 확인하고 다시 시도하세요.';

  @override
  String get transferExpired => '이 전송은 만료되어 더 이상 사용할 수 없습니다.';

  @override
  String get transferLoginRequired => '이 전송에 액세스하려면 로그인이 필요합니다.';

  @override
  String get transferBadResponse => '예기치 않은 서버 응답입니다. 연결 상태를 확인하세요.';

  @override
  String get transferNetworkError => '네트워크 오류입니다. 인터넷 연결을 확인하세요.';

  @override
  String transferLoadFailed(String error) {
    return '이체를 로드할 수 없습니다: $error';
  }

  @override
  String get passwordProtected => '비밀번호로 보호됨';

  @override
  String get enterPassword => '비밀번호 입력';

  @override
  String get unlock => '잠금 해제';

  @override
  String get downloading => '다운로드 중…';

  @override
  String get downloadAllFiles => '모든 파일 다운로드';

  @override
  String get downloadSingleFile => '파일 다운로드';

  @override
  String get receiveAnother => '추가 전송 받기';

  @override
  String get plansTitle => '계획';

  @override
  String get plansSubtitle => '업그레이드하여 광고를 제거하고 더 큰 파일을 보내세요.';

  @override
  String get storeUnavailable => '스토어 이용 불가';

  @override
  String get storeUnavailableBody => '인앱 구매가 불가능합니다. 지금.';

  @override
  String get storeLoadingPrices => 'App Store에서 가격을 로드하는 중…';

  @override
  String get storePricesUnavailable => '가격을 사용할 수 없습니다';

  @override
  String get storePricesPartial => '일부 가격을 로드할 수 없습니다';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded of $total개의 구독 제품이 로드되었습니다.';
  }

  @override
  String get storeSetupHint =>
      '실제 iPhone(시뮬레이터 아님)에서 테스트하고 Sandbox Apple ID를 사용하여 이 아래에 6개의 구독이 모두 생성되었는지 확인하세요. App Store의 앱 번들 ID 가격 세트와 연결합니다.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/월';
  }

  @override
  String get freeVersionAds => '현재 광고가 포함된 무료 버전을 사용하고 있습니다';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get plansContinue => '계속';

  @override
  String get planLinkRestore => '복원';

  @override
  String get termsAndConditions => '약관 및 조건';

  @override
  String get createAccountTitle => '계정 만들기';

  @override
  String get signUpSubtitle => '이메일과 비밀번호로 가입하세요.';

  @override
  String get confirmPassword => '비밀번호 확인';

  @override
  String get passwordMin8 => '비밀번호(8자 이상)';

  @override
  String get alreadyHaveAccount => '이미 계정이 있습니까?';

  @override
  String get checkEmailTitle => '확인하세요\n이메일';

  @override
  String otpSentTo(String email) {
    return '다음으로 6자리 코드를 보냈습니다.\n$email';
  }

  @override
  String get verifyAndSignIn => '확인 및 로그인';

  @override
  String get didntReceiveCode => '못받으셨나요?';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get otpExpiresHint => '코드가 5분 후에 만료됩니다. 안보이면 스팸메일함을 확인해보세요.';

  @override
  String get snackError => '오류';

  @override
  String get snackCopied => '복사';

  @override
  String get snackCopiedBody => '링크가 클립보드에 복사되었습니다';

  @override
  String get snackWelcome => '환영합니다';

  @override
  String get snackAccountCreated => '계정이 생성되었습니다';

  @override
  String get snackEnterEmail => '이메일을 입력해주세요';

  @override
  String get snackEnterPassword => '주소를 입력해주세요 비밀번호';

  @override
  String get snackInvalidEmail => '잘못된 이메일 주소';

  @override
  String get snackInvalidCredentials => '잘못된 이메일 또는 비밀번호';

  @override
  String get snackPasswordMin8 => '비밀번호는 8자 이상이어야 합니다';

  @override
  String get snackPasswordMismatch => '비밀번호가 일치하지 않습니다.';

  @override
  String get snackAccountExists => '계정이 이미 존재합니다. 로그인해주세요.';

  @override
  String get snackSignupFailed => '계정을 생성할 수 없습니다. 다시 시도하세요.';

  @override
  String get snackEnterOtp => '6자리 코드를 입력하세요';

  @override
  String get snackOtpExpired => '코드 만료';

  @override
  String get snackOtpExpiredBody => '새 코드를 요청하세요.';

  @override
  String get snackInvalidCode => '잘못된 코드';

  @override
  String get snackInvalidCodeBody => '코드가 잘못되었습니다. 다시 시도해 주세요.';

  @override
  String get snackSendCodeFailed => '코드를 보낼 수 없습니다. 연결을 확인하고 다시 시도하세요.';

  @override
  String get snackEmptyFolder => '빈 폴더';

  @override
  String get snackEmptyFolderBody => '선택한 폴더에서 파일을 찾을 수 없습니다.';

  @override
  String get snackFolderUnsupported => '지원되지 않습니다';

  @override
  String get snackFolderUnsupportedBody => '이 플랫폼에서는 폴더 업로드를 사용할 수 없습니다.';

  @override
  String get snackFolderReadError => '선택한 폴더를 읽을 수 없습니다.';

  @override
  String get snackLimitReached => '한도에 도달했습니다';

  @override
  String get snackLimitFilesBody => '크기 또는 파일 수 제한으로 인해 일부 파일이 추가되지 않았습니다.';

  @override
  String get snackFreePlanLimit =>
      '무료 요금제는 허용됩니다 전송당 최대 5GB. 일부 파일을 제거하거나 업그레이드하세요.';

  @override
  String get snackSignInEmail => '이메일로 보내려면 로그인하세요.';

  @override
  String get snackUploadStartFailed => '업로드를 시작할 수 없습니다.';

  @override
  String get snackVerifyEnterCode => '이메일에 있는 4자리 코드를 입력하세요.';

  @override
  String get snackVerifyInvalid => '잘못되었거나 만료된 코드입니다. 이메일을 확인하신 후 다시 시도해 주세요.';

  @override
  String get snackVerifyResendFailed => '코드를 재전송할 수 없습니다. 다시 시도하세요.';

  @override
  String get snackDownloadComplete => '다운로드 완료';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\"가 다운로드에 저장됨';
  }

  @override
  String get snackDownloadFailed => '다운로드 실패';

  @override
  String get snackSaved => '저장됨';

  @override
  String get snackServerUrlUpdated => '서버 URL이 업데이트되었습니다. 적용하려면 앱을 다시 시작하세요.';

  @override
  String get snackStoreError => '스토어 오류';

  @override
  String get snackMissingProducts => '상품이 없습니다';

  @override
  String get snackStoreUnavailable => '스토어 이용 불가';

  @override
  String get snackStoreUnavailableBody => '이 기기에서는 인앱 구매를 할 수 없습니다.';

  @override
  String get snackProductNotLoaded => '제품이 아직 로드되지 않았습니다.';

  @override
  String get snackRestoreStarted => '복원이 시작되었습니다';

  @override
  String get snackRestoreStartedBody => '확인 중입니다 구매.';

  @override
  String get snackRestoreFailed => '복원 실패';

  @override
  String get snackProcessing => '처리 중';

  @override
  String get snackPleaseWait => '잠시 기다려주세요…';

  @override
  String get snackSuccess => '성공';

  @override
  String get snackPurchaseCompleted => '구매가 완료되었습니다.';

  @override
  String get snackPurchaseError => '구매 오류';

  @override
  String get snackPurchaseFailed => '구매 실패했습니다.';

  @override
  String get snackCanceled => '취소';

  @override
  String get snackPurchaseCanceled => '구매가 취소되었습니다.';

  @override
  String get snackUpload => '업로드';

  @override
  String get snackVerify => '확인';

  @override
  String get doNotExpire => '하지 마세요 만료';

  @override
  String get hourSingular => '시간';

  @override
  String get hourPlural => '시간';

  @override
  String get daySingular => '일';

  @override
  String get dayPlural => '일';

  @override
  String get emailAddressLabel => '이메일 주소';

  @override
  String get passwordLabelCaps => '비밀번호';

  @override
  String get confirmPasswordLabelCaps => '비밀번호 확인';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => '이체 링크 또는 ID';

  @override
  String get howToReceive => '수신방법';

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
  String get planAdsTitle => '광고 플랜';

  @override
  String get planAdsBullet1 => '광고 없는 앱 이용';

  @override
  String get planAdsBullet2 => '모든 광고 제거';

  @override
  String get planProTitle => '프로 플랜';

  @override
  String get planProBullet1 => '최대 20GB 파일 전송';

  @override
  String get planProBullet2 => '빠른 업로드';

  @override
  String get planPremiumTitle => '프리미엄 플랜';

  @override
  String get planPremiumBullet1 => '최대 100GB까지 파일 전송';

  @override
  String get planPremiumBullet2 => '초고속 업로드';

  @override
  String get planSubscriptionDisclaimer =>
      '무료 체험 기간 없음 - 추가 앱 기능을 사용하려면 구독이 필요합니다. 즉시 비용이 청구됩니다. 언제든지 취소하실 수 있습니다.';

  @override
  String get perMonth => '/월';

  @override
  String get perYear => '/년';

  @override
  String get snackConnectionProblem => '연결에 문제가 있습니다. 다시 시도해 주세요.';

  @override
  String get networkTitle => '네트워크';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return '파일: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return '오늘 · $time';
  }

  @override
  String yesterdayAt(String time) {
    return '어제 · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$days일 전 · $time';
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
    return '$sent / $total • $remaining 왼쪽';
  }

  @override
  String get loadingShort => '로드 중…';

  @override
  String get colorPaletteTitle => '색상 팔레트';

  @override
  String get colorPaletteSectionBackgrounds => '배경(잉크 배율)';

  @override
  String get colorPaletteSectionAccent => '악센트 / 기본';

  @override
  String get colorPaletteSectionText => '텍스트';

  @override
  String get colorPaletteSectionBorders => '테두리 및 유리';

  @override
  String get colorPaletteSectionSemantic => 'Semantic';

  @override
  String get colorPaletteSectionLive => '라이브 테마(현재)';

  @override
  String get colorPaletteActiveHint => '★ = 적극적으로 사용됨 화면';

  @override
  String get colorPaletteCopyHint => '견본을 길게 누르면 16진수 값이 복사됩니다.';

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
  String get settingsAppBrand => '공유 크게\n동영상 파일';

  @override
  String get loginEmailPasswordPrompt => '이메일과 비밀번호를 입력하여 로그인하세요.';

  @override
  String get forgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get forgotPasswordTitle => '비밀번호 재설정';

  @override
  String get forgotPasswordBody => '계정 이메일을 입력하시면 재설정 코드를 보내드립니다.';

  @override
  String get forgotPasswordSubmit => '재설정 코드 보내기';

  @override
  String get resetPasswordTitle => '새 비밀번호 만들기';

  @override
  String get resetPasswordBody =>
      '다음을 입력하세요 이메일에 있는 6자리 코드를 입력하고 새 비밀번호를 선택하세요.';

  @override
  String get resetPasswordSubmit => '비밀번호 업데이트';

  @override
  String get snackPasswordResetSent => '초기화 코드 전송됨';

  @override
  String get snackPasswordResetSentBody => '이메일에서 6자리 재설정 코드를 확인하세요.';

  @override
  String get snackPasswordResetFailed => '초기화 코드를 보낼 수 없습니다. 다시 시도해 보세요.';

  @override
  String get snackPasswordUpdated => '비밀번호가 업데이트되었습니다';

  @override
  String get snackPasswordUpdatedBody => '새 비밀번호로 로그인하세요.';

  @override
  String get snackPasswordResetInvalid => '재설정 코드가 잘못되었거나 만료되었습니다.';

  @override
  String get otpDigitLabel => '6-DIGIT CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count개 파일 더보기';
  }
}
