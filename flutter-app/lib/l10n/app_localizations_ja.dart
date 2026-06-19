// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => '大きなビデオ ファイルを共有';

  @override
  String get heroAccent => 'すぐに共有します。';

  @override
  String get heroTitle => '大量に送信しますファイル';

  @override
  String get splashLoading => '読み込み中…';

  @override
  String get navSend => 'ダッシュボード';

  @override
  String get navHome => 'ホーム';

  @override
  String get navHistory => '履歴';

  @override
  String get navReceive => '受信';

  @override
  String get navPlans => '計画';

  @override
  String get navDownload => 'ダウンロード';

  @override
  String get navSettings => '設定';

  @override
  String get modeLink => '取得リンク';

  @override
  String get modeEmail => '電子メールで送信';

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
  String get pickFiles => 'ファイルを選択';

  @override
  String get pickFolder => 'フォルダーを選択';

  @override
  String get emailFrom => 'あなたの電子メール';

  @override
  String get mailFromUsesAccount => 'サインインした電子メールを使用します。';

  @override
  String get recipientEmailsHelper => '複数の受信者: カンマ、セミコロン、またはで区切ります。スペース。';

  @override
  String get emailTo => '受信者の電子メール';

  @override
  String get messageOptional => 'メッセージ (オプション)';

  @override
  String get passwordOptional => 'パスワード (オプション)';

  @override
  String get destructAfterDownload => 'ダウンロード後に削除';

  @override
  String get destructNo => '保持利用可能';

  @override
  String get sendButton => '送信';

  @override
  String get uploading => 'アップロード中…';

  @override
  String get uploadComplete => '完了';

  @override
  String get shareLinkTitle => 'あなたのリンク';

  @override
  String get copyLink => 'リンクをコピー';

  @override
  String get share => '共有';

  @override
  String get shareQrCode => 'QRコードを共有';

  @override
  String get uploadMore => '送信別の';

  @override
  String get emailSentTitle => '送信されたメール';

  @override
  String get verifyEmailTitle => 'メールを確認してください';

  @override
  String get verifyCodeHint => 'メールからコードを入力してください';

  @override
  String get verifySubmit => '確認';

  @override
  String get verifyResendCode => 'コードを再送信';

  @override
  String get verifyCodeSent => '新しい確認コードがメールに送信されました。';

  @override
  String get verifyEmailSmtpWarningTitle => '確認メールが送信されていない可能性があります。送信済み';

  @override
  String get verifyEmailSmtpWarningBody =>
      'サーバーは配信を確認できませんでした (多くの場合、SMTP の構成が間違っています)。サイト管理者に管理パネルのメール設定を確認するよう依頼し、[コードを再送信] をタップします。';

  @override
  String verifyEmailCheckSpamHint(String email) {
    return 'コードが届かない場合: ジャンク/スパムとプロモーションを確認し、少し待ってから、$email にタイプミスがないことを確認して、[再送信] をタップします。';
  }

  @override
  String get loginTitle => 'サインイン';

  @override
  String get signupHint => 'サイト アカウントの電子メールを使用し、パスワード。';

  @override
  String get emailHint => 'メール';

  @override
  String get passwordHint => 'パスワード';

  @override
  String get cancel => 'キャンセル';

  @override
  String get signIn => 'サインイン';

  @override
  String get downloadIdHint => '転送ID';

  @override
  String get privateIdHint => 'プライベートID（オプション）';

  @override
  String get fetchTransfer => '転送を開く';

  @override
  String get downloadFile => 'ダウンロード';

  @override
  String get unlockDownload => 'ダウンロードのロックを解除';

  @override
  String get downloadSaved => 'ダウンロードに保存しました';

  @override
  String get errorGeneric => '問題が発生しました';

  @override
  String get errorNetwork => 'ネットワークエラー';

  @override
  String get errorBadResponse => '予期しないサーバー応答';

  @override
  String get termsAccept => '規約に同意します';

  @override
  String get settingsApiUrl => '公開サイトURL';

  @override
  String get settingsAccount => 'アカウント';

  @override
  String get settingsAppearance => '外観';

  @override
  String get settingsTheme => 'テーマ';

  @override
  String get themeSystem => 'システム';

  @override
  String get themeLight => 'ライト';

  @override
  String get themeDark => 'ダーク';

  @override
  String get settingsSignedIn => 'サインインしています。';

  @override
  String get settingsSignedOut => 'サインインしていません';

  @override
  String get settingsOpenWebsite => '開くウェブサイト';

  @override
  String get signUp => 'サインアップ';

  @override
  String get settingsLinks => 'リンク';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get termsOfService => '利用規約';

  @override
  String get about => '概要';

  @override
  String get moreApps => 'もっと見るアプリ';

  @override
  String get settingsLanguage => '言語';

  @override
  String get languageEnglish => '英語';

  @override
  String get languageHindi => 'ヒンディー語';

  @override
  String get logout => 'ログアウト';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get deleteAccountConfirmTitle => 'アカウントを削除しますか?';

  @override
  String get deleteAccountConfirmBody =>
      'これにより、アカウントが完全に削除され、サインアウトされます。転送リンクは引き続き機能しますが、履歴には表示されなくなります。';

  @override
  String get deleteAccountSuccess => 'アカウントが削除されました';

  @override
  String get deleteAccountSuccessBody => 'アカウントが削除されました。';

  @override
  String get deleteAccountFailed => 'アカウントを削除できませんでした';

  @override
  String get deleteAccountFailedBody => 'もう一度試すか、サポートにお問い合わせください。';

  @override
  String get maxFilesReached => 'ファイルが多すぎます';

  @override
  String get fileTooLarge => 'ファイルも大';

  @override
  String get ipLimit => 'このネットワークからのアップロードが多すぎます';

  @override
  String get fillFields => '必須フィールドに入力してください';

  @override
  String get invalidEmail => '無効なメール';

  @override
  String get maxRecipientsReached => '受信者が多すぎます';

  @override
  String get loginRequiredTitle => 'サインインが必要です';

  @override
  String get loginRequiredBody => 'このサーバーにはアップロードまたはダウンロードするアカウントが必要です';

  @override
  String get settingsSubtitle => 'アプリの設定とアカウント。';

  @override
  String get dropHeavyFile => '重いファイルをここにドロップしてください。';

  @override
  String upToTotal(String max) {
    return '合計$maxまで';
  }

  @override
  String get removeAll => 'すべて削除';

  @override
  String get addFiles => 'ファイルを追加';

  @override
  String get adding => '追加中…';

  @override
  String get options => 'オプション';

  @override
  String get selfDestruct => 'その後自己破壊ダウンロード';

  @override
  String get expiry => '期限切れ';

  @override
  String get cancelUpload => 'アップロードをキャンセル';

  @override
  String get transferReady => '転送準備完了!';

  @override
  String get emailSentReady => 'メール送信済み!';

  @override
  String get shareRecipientHint => 'このリンクを受信者と共有します。';

  @override
  String get emailSentBody => '受信者に通知しました。';

  @override
  String get scanQr => 'スキャンして転送リンクを開きます。';

  @override
  String get shareLinkButton => '共有リンク';

  @override
  String get verifyFourDigit => '送信者メールに送信された 4 桁のコードを入力してください。';

  @override
  String get starting => '開始…';

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
    return '$amount 残り MB';
  }

  @override
  String get fillField => 'このフィールドに入力してください。';

  @override
  String get enterValidEmail => '有効な値を入力してくださいメール。';

  @override
  String get message => 'メッセージ';

  @override
  String get recipientEmail => '受信者の電子メール';

  @override
  String get active => 'アクティブ';

  @override
  String get expired => '期限切れ';

  @override
  String get historyTitle => '私の送金';

  @override
  String get signInToSeeTransfers => 'サインインして送金を確認します';

  @override
  String get signInTransfersBody => 'メールを使用して送金をアカウントにリンクします。パスワードは必要ありません。';

  @override
  String get couldNotLoadTransfers => 'ロードできませんでした転送';

  @override
  String get retry => '再試行';

  @override
  String get noTransfersYet => 'まだ転送はありません';

  @override
  String get noTransfersBody => 'ファイルを送信すると、ここに表示されます。';

  @override
  String get transferDetails => '転送の詳細';

  @override
  String get filesSection => 'ファイル';

  @override
  String get receiveTitle => 'ファイルを受信';

  @override
  String get receiveSubtitle => 'ダウンロードする転送リンクを貼り付けてくださいファイル。';

  @override
  String get pasteTooltip => '貼り付け';

  @override
  String get findTransfer => '転送を検索';

  @override
  String get receiveScanQr => 'QRをスキャン';

  @override
  String get receiveScanQrTitle => '転送QRをスキャン';

  @override
  String get receiveScanQrHint => 'QRコードをフレーム内に配置します。';

  @override
  String get receiveScanQrInvalid => 'このQRコードは有効な転送リンクではありません。';

  @override
  String get receiveScanQrCameraDenied => 'カメラアクセスはQR コードをスキャンするために必要です。';

  @override
  String get receiveStepGetLink => 'リンクを取得します';

  @override
  String get receiveStepGetLinkBody => '送信者に転送リンクを共有するよう依頼します。';

  @override
  String get receiveStepPaste => '貼り付けて検索';

  @override
  String get receiveStepPasteBody => '上のリンクを貼り付け、「転送を検索」をタップします。';

  @override
  String get receiveStepDownload => 'ファイルをダウンロード';

  @override
  String get receiveStepDownloadBody => 'ファイルの詳細を確認し、すべてをダウンロードします。 ';

  @override
  String get lookingUpTransfer => '転送を検索中…';

  @override
  String get transferNotFound => '転送が見つかりません。リンクを確認して、もう一度お試しください。';

  @override
  String get transferExpired => 'この転送は有効期限が切れたため、利用できません。';

  @override
  String get transferLoginRequired => 'この転送にアクセスするにはサインインが必要です。';

  @override
  String get transferBadResponse => '予期しないサーバーの応答。接続を確認してください。';

  @override
  String get transferNetworkError => 'ネットワーク エラー。インターネット接続を確認してください。';

  @override
  String transferLoadFailed(String error) {
    return '転送を読み込めませんでした: $error';
  }

  @override
  String get passwordProtected => 'パスワードで保護されています';

  @override
  String get enterPassword => 'パスワードを入力してください';

  @override
  String get unlock => 'ロックを解除';

  @override
  String get downloading => 'ダウンロード中…';

  @override
  String get downloadAllFiles => 'すべてのファイルをダウンロード';

  @override
  String get downloadSingleFile => 'ファイルをダウンロード';

  @override
  String get receiveAnother => '別の転送を受け取る';

  @override
  String get plansTitle => '計画';

  @override
  String get plansSubtitle => 'アップグレードして広告を削除し、より大きなファイルを送信します。';

  @override
  String get storeUnavailable => 'ストアは利用できません';

  @override
  String get storeUnavailableBody => '現在、アプリ内購入はご利用いただけません。';

  @override
  String get storeLoadingPrices => 'アプリから価格を読み込んでいますストア…';

  @override
  String get storePricesUnavailable => '価格を利用できません';

  @override
  String get storePricesPartial => '一部の価格を読み込めませんでした';

  @override
  String storePricesPartialBody(int loaded, int total) {
    return '$loaded/$total サブスクリプション製品が読み込まれました。';
  }

  @override
  String get storeSetupHint =>
      '実際の iPhone (シミュレータではなく) でテストし、サンドボックス Apple ID を使用し、6 つのサブスクリプションすべてが App Store Connect のこのアプリのバンドル ID で価格設定とともに作成されていることを確認してくださいset.';

  @override
  String get priceUnavailable => '—';

  @override
  String effectiveMonthlyPrice(String price) {
    return '$price/月';
  }

  @override
  String get freeVersionAds => '現在、広告付きの無料版をご利用中';

  @override
  String get restorePurchases => '購入内容を復元';

  @override
  String get plansContinue => '続行';

  @override
  String get planLinkRestore => '復元';

  @override
  String get termsAndConditions => '利用規約';

  @override
  String get createAccountTitle => '作成アカウント';

  @override
  String get signUpSubtitle => '電子メールとパスワードを使用してサインアップします。';

  @override
  String get confirmPassword => 'パスワードを確認してください';

  @override
  String get passwordMin8 => 'パスワード (8 文字以上)';

  @override
  String get alreadyHaveAccount => 'すでにアカウントをお持ちですか?';

  @override
  String get checkEmailTitle => 'アカウントを確認してください\nemail';

  @override
  String otpSentTo(String email) {
    return '6桁のコードを送信しました\n$email';
  }

  @override
  String get verifyAndSignIn => '確認してサインイン';

  @override
  String get didntReceiveCode => '受け取れませんでしたか?';

  @override
  String get tryAgain => 'もう一度お試しください';

  @override
  String get otpExpiresHint =>
      'コードの有効期限は 5 分です。スパム フォルダーが表示されない場合は、スパム フォルダーを確認してください。';

  @override
  String get snackError => 'エラー';

  @override
  String get snackCopied => 'コピーしました';

  @override
  String get snackCopiedBody => 'リンクをクリップボードにコピーしました';

  @override
  String get snackWelcome => 'ようこそ';

  @override
  String get snackAccountCreated => 'アカウントが作成されました';

  @override
  String get snackEnterEmail => 'メールアドレスを入力してください';

  @override
  String get snackEnterPassword => 'あなたのメールアドレスを入力してくださいパスワード';

  @override
  String get snackInvalidEmail => '電子メールアドレスが無効です';

  @override
  String get snackInvalidCredentials => '電子メールまたはパスワードが間違っています';

  @override
  String get snackPasswordMin8 => 'パスワードは8文字以上である必要があります';

  @override
  String get snackPasswordMismatch => 'パスワードが一致しません。';

  @override
  String get snackAccountExists => 'アカウントはすでに存在します。サインインしてください。';

  @override
  String get snackSignupFailed => 'アカウントを作成できませんでした。もう一度お試しください。';

  @override
  String get snackEnterOtp => '6桁のコードを入力してください';

  @override
  String get snackOtpExpired => 'コードの有効期限が切れています';

  @override
  String get snackOtpExpiredBody => '新しいコードをリクエストしてください。';

  @override
  String get snackInvalidCode => 'コードが無効です';

  @override
  String get snackInvalidCodeBody => 'コードが間違っています。もう一度お試しください。';

  @override
  String get snackSendCodeFailed => 'コードを送信できませんでした。接続を確認して、もう一度お試しください。';

  @override
  String get snackEmptyFolder => '空のフォルダー';

  @override
  String get snackEmptyFolderBody => '選択したフォルダーにファイルが見つかりません。';

  @override
  String get snackFolderUnsupported => 'サポートされていません';

  @override
  String get snackFolderUnsupportedBody => 'このプラットフォームではフォルダーのアップロードは利用できません。';

  @override
  String get snackFolderReadError => '選択したフォルダーを読み取れませんでした。';

  @override
  String get snackLimitReached => '制限に達しました';

  @override
  String get snackLimitFilesBody => 'サイズまたはファイル数の制限のため、一部のファイルは追加されませんでした。';

  @override
  String get snackFreePlanLimit =>
      '無料プランでは最大数まで許可されます転送ごとに最大 5GB。一部のファイルを削除するか、アップグレードしてください。';

  @override
  String get snackSignInEmail => 'メールで送信するにはサインインしてください。';

  @override
  String get snackUploadStartFailed => 'アップロードを開始できませんでした。';

  @override
  String get snackVerifyEnterCode => 'メールの 4 桁のコードを入力してください。';

  @override
  String get snackVerifyInvalid => 'コードが無効または期限切れです。メールを確認して、もう一度お試しください。';

  @override
  String get snackVerifyResendFailed => 'コードを再送信できませんでした。もう一度お試しください。';

  @override
  String get snackDownloadComplete => 'ダウンロードが完了しました';

  @override
  String snackDownloadSaved(String filename) {
    return '「$filename」がダウンロードに保存されました';
  }

  @override
  String get snackDownloadFailed => 'ダウンロードに失敗しました';

  @override
  String get snackSaved => '保存されました';

  @override
  String get snackServerUrlUpdated => 'サーバーURLが更新されました。適用するにはアプリを再起動してください。';

  @override
  String get snackStoreError => 'ストアエラー';

  @override
  String get snackMissingProducts => '商品がありません';

  @override
  String get snackStoreUnavailable => 'ストアは利用できません';

  @override
  String get snackStoreUnavailableBody => 'このデバイスではアプリ内購入をご利用いただけません。';

  @override
  String get snackProductNotLoaded => '商品がまだ読み込まれていません。';

  @override
  String get snackRestoreStarted => '復元を開始しました';

  @override
  String get snackRestoreStartedBody => '購入内容を確認中です。';

  @override
  String get snackRestoreFailed => '復元失敗';

  @override
  String get snackProcessing => '処理中';

  @override
  String get snackPleaseWait => 'お待ちください…';

  @override
  String get snackSuccess => '成功';

  @override
  String get snackPurchaseCompleted => '購入完了';

  @override
  String get snackPurchaseError => '購入エラー';

  @override
  String get snackPurchaseFailed => '購入失敗しました。';

  @override
  String get snackCanceled => 'キャンセルされました';

  @override
  String get snackPurchaseCanceled => '購入がキャンセルされました。';

  @override
  String get snackUpload => 'アップロード';

  @override
  String get snackVerify => '確認';

  @override
  String get doNotExpire => 'しないでください有効期限';

  @override
  String get hourSingular => '時間';

  @override
  String get hourPlural => '時間';

  @override
  String get daySingular => '日';

  @override
  String get dayPlural => '日';

  @override
  String get emailAddressLabel => 'メールアドレス';

  @override
  String get passwordLabelCaps => 'パスワード';

  @override
  String get confirmPasswordLabelCaps => 'パスワード確認';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => '転送リンクまたはID';

  @override
  String get howToReceive => '受け取り方法';

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
  String get planAdsTitle => '広告プラン';

  @override
  String get planAdsBullet1 => '広告無料アプリへのアクセス';

  @override
  String get planAdsBullet2 => 'すべての広告を削除';

  @override
  String get planProTitle => 'プロプラン';

  @override
  String get planProBullet1 => '最大20GBのファイルを送信';

  @override
  String get planProBullet2 => '高速アップロード';

  @override
  String get planPremiumTitle => 'プレミアムプラン';

  @override
  String get planPremiumBullet1 => '最大100GBのファイルを送信';

  @override
  String get planPremiumBullet2 => '超高速アップロード';

  @override
  String get planSubscriptionDisclaimer =>
      '試用期間なし — アプリの追加機能を使用するにはサブスクリプションが必要です。すぐに料金が請求されます。いつでもキャンセルできます。';

  @override
  String get perMonth => '/月';

  @override
  String get perYear => '/年';

  @override
  String get snackConnectionProblem => '接続の問題。もう一度お試しください。';

  @override
  String get networkTitle => 'ネットワーク';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'ファイル: $count · $size バイト';
  }

  @override
  String todayAt(String time) {
    return '今日 · $time';
  }

  @override
  String yesterdayAt(String time) {
    return '昨日 · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '$days日前 · 《PH3》';
  }

  @override
  String dateAt(String date, String time) {
    return '《PH2》・《PH3》';
  }

  @override
  String mbAmount(String amount) {
    return '《PH1》 MB';
  }

  @override
  String uploadProgressSummary(String sent, String total, String remaining) {
    return '《PH3》 / 《PH4》・《PH5》 左';
  }

  @override
  String get loadingShort => '読み込み中…';

  @override
  String get colorPaletteTitle => 'カラーパレット';

  @override
  String get colorPaletteSectionBackgrounds => '背景（インクスケール）';

  @override
  String get colorPaletteSectionAccent => 'アクセント /プライマリ';

  @override
  String get colorPaletteSectionText => 'テキスト';

  @override
  String get colorPaletteSectionBorders => 'ボーダーとガラス';

  @override
  String get colorPaletteSectionSemantic => 'セマンティック';

  @override
  String get colorPaletteSectionLive => 'ライブテーマ（現在）';

  @override
  String get colorPaletteActiveHint => '★ = 画面で積極的に使用されています';

  @override
  String get colorPaletteCopyHint => '任意のスウォッチを長押しして、その 16 進値をコピーします。';

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
  String get settingsAppBrand => '共有大\nビデオ ファイル';

  @override
  String get loginEmailPasswordPrompt => 'メール アドレスとパスワードを入力してサインインします。';

  @override
  String get forgotPassword => 'パスワードをお忘れですか?';

  @override
  String get forgotPasswordTitle => 'パスワードをリセット';

  @override
  String get forgotPasswordBody => 'アカウントのメール アドレスを入力すると、リセット コードが送信されます。';

  @override
  String get forgotPasswordSubmit => 'リセット コードを送信します';

  @override
  String get resetPasswordTitle => '新規作成パスワード';

  @override
  String get resetPasswordBody => 'メールから6桁のコードを入力し、新しいパスワードを選択してください。';

  @override
  String get resetPasswordSubmit => 'パスワードを更新';

  @override
  String get snackPasswordResetSent => 'リセットコードを送信しました';

  @override
  String get snackPasswordResetSentBody => '6桁のリセットコードについてメールを確認してください。';

  @override
  String get snackPasswordResetFailed => 'リセットコードを送信できませんでした。もう一度お試しください。';

  @override
  String get snackPasswordUpdated => 'パスワードが更新されました';

  @override
  String get snackPasswordUpdatedBody => '新しいパスワードでサインインしてください。';

  @override
  String get snackPasswordResetInvalid => 'リセットコードが無効または期限切れです。';

  @override
  String get otpDigitLabel => '6桁のコード';

  @override
  String receiveMoreFiles(int count) {
    return '+$count その他のファイル';
  }
}
