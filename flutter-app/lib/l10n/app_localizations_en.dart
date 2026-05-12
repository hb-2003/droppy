// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Share Large Video Files';

  @override
  String get heroAccent => 'instantly.';

  @override
  String get heroTitle => 'Send heavy files';

  @override
  String get splashLoading => 'Loading…';

  @override
  String get navSend => 'Dashboard';

  @override
  String get navHome => 'Home';

  @override
  String get navHistory => 'History';

  @override
  String get navReceive => 'Receive';

  @override
  String get navPlans => 'Plans';

  @override
  String get navDownload => 'Download';

  @override
  String get navSettings => 'Settings';

  @override
  String get modeLink => 'Get a link';

  @override
  String get modeEmail => 'Send by email';

  @override
  String get pickFiles => 'Choose files';

  @override
  String get pickFolder => 'Choose folder';

  @override
  String get emailFrom => 'Your email';

  @override
  String get emailTo => 'Recipient email';

  @override
  String get messageOptional => 'Message (optional)';

  @override
  String get passwordOptional => 'Password (optional)';

  @override
  String get destructAfterDownload => 'Delete after download';

  @override
  String get destructNo => 'Keep available';

  @override
  String get sendButton => 'Send';

  @override
  String get uploading => 'Uploading…';

  @override
  String get uploadComplete => 'Done';

  @override
  String get shareLinkTitle => 'Your link';

  @override
  String get copyLink => 'Copy link';

  @override
  String get share => 'Share';

  @override
  String get shareQrCode => 'Share QR code';

  @override
  String get uploadMore => 'Send another';

  @override
  String get emailSentTitle => 'Emails sent';

  @override
  String get verifyEmailTitle => 'Verify your email';

  @override
  String get verifyCodeHint => 'Enter the code from your email';

  @override
  String get verifySubmit => 'Verify';

  @override
  String get verifyResendCode => 'Resend code';

  @override
  String get verifyCodeSent =>
      'A new verification code was sent to your email.';

  @override
  String get loginTitle => 'Sign in';

  @override
  String get signupHint => 'Use your site account email and password.';

  @override
  String get emailHint => 'Email';

  @override
  String get passwordHint => 'Password';

  @override
  String get cancel => 'Cancel';

  @override
  String get signIn => 'Sign in';

  @override
  String get downloadIdHint => 'Transfer ID';

  @override
  String get privateIdHint => 'Private ID (optional)';

  @override
  String get fetchTransfer => 'Open transfer';

  @override
  String get downloadFile => 'Download';

  @override
  String get unlockDownload => 'Unlock download';

  @override
  String get downloadSaved => 'Saved to Downloads';

  @override
  String get errorGeneric => 'Something went wrong';

  @override
  String get errorNetwork => 'Network error';

  @override
  String get errorBadResponse => 'Unexpected server response';

  @override
  String get termsAccept => 'I agree to the terms';

  @override
  String get settingsApiUrl => 'Public site URL';

  @override
  String get settingsAccount => 'Account';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get settingsSignedIn => 'You are signed in.';

  @override
  String get settingsSignedOut => 'You are not signed in.';

  @override
  String get settingsOpenWebsite => 'Open website';

  @override
  String get signUp => 'Sign up';

  @override
  String get settingsLinks => 'Links';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get termsOfService => 'Terms of service';

  @override
  String get about => 'About';

  @override
  String get moreApps => 'More apps';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get logout => 'Log out';

  @override
  String get maxFilesReached => 'Too many files';

  @override
  String get fileTooLarge => 'File too large';

  @override
  String get ipLimit => 'Too many uploads from this network';

  @override
  String get fillFields => 'Please fill required fields';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get maxRecipientsReached => 'Too many recipients';

  @override
  String get loginRequiredTitle => 'Sign in required';

  @override
  String get loginRequiredBody =>
      'This server requires an account to upload or download.';

  @override
  String get settingsSubtitle => 'App preferences and account.';

  @override
  String get dropHeavyFile => 'Drop a heavy file here.';

  @override
  String upToTotal(String max) {
    return 'Up to $max total';
  }

  @override
  String get removeAll => 'Remove all';

  @override
  String get addFiles => 'Add files';

  @override
  String get adding => 'Adding…';

  @override
  String get options => 'Options';

  @override
  String get selfDestruct => 'Self-destruct after download';

  @override
  String get expiry => 'Expiry';

  @override
  String get cancelUpload => 'Cancel upload';

  @override
  String get transferReady => 'Transfer ready!';

  @override
  String get emailSentReady => 'Email sent!';

  @override
  String get shareRecipientHint => 'Share this link with your recipient.';

  @override
  String get emailSentBody => 'We\'ve notified your recipient(s).';

  @override
  String get scanQr => 'Scan to open the transfer link.';

  @override
  String get shareLinkButton => 'SHARE LINK';

  @override
  String get verifyFourDigit =>
      'Enter the 4-digit code sent to your sender email.';

  @override
  String get starting => 'Starting…';

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
    return '$amount MB left';
  }

  @override
  String get fillField => 'Please fill in this field.';

  @override
  String get enterValidEmail => 'Enter a valid email.';

  @override
  String get message => 'Message';

  @override
  String get recipientEmail => 'Recipient email';

  @override
  String get active => 'Active';

  @override
  String get expired => 'Expired';

  @override
  String get historyTitle => 'My Transfers';

  @override
  String get signInToSeeTransfers => 'Sign in to see your transfers';

  @override
  String get signInTransfersBody =>
      'We use your email to link transfers to your account — no password needed.';

  @override
  String get couldNotLoadTransfers => 'Could not load transfers';

  @override
  String get retry => 'Retry';

  @override
  String get noTransfersYet => 'No transfers yet';

  @override
  String get noTransfersBody => 'Once you send a file, it will appear here.';

  @override
  String get transferDetails => 'Transfer details';

  @override
  String get filesSection => 'Files';

  @override
  String get receiveTitle => 'Receive Files';

  @override
  String get receiveSubtitle => 'Paste a transfer link to download files.';

  @override
  String get pasteTooltip => 'Paste';

  @override
  String get findTransfer => 'Find Transfer';

  @override
  String get receiveScanQr => 'Scan QR';

  @override
  String get receiveScanQrTitle => 'Scan transfer QR';

  @override
  String get receiveScanQrHint => 'Align the QR code inside the frame.';

  @override
  String get receiveScanQrInvalid =>
      'This QR code is not a valid transfer link.';

  @override
  String get receiveScanQrCameraDenied =>
      'Camera access is required to scan QR codes.';

  @override
  String get receiveStepGetLink => 'Get the link';

  @override
  String get receiveStepGetLinkBody =>
      'Ask the sender to share the transfer link with you.';

  @override
  String get receiveStepPaste => 'Paste & find';

  @override
  String get receiveStepPasteBody =>
      'Paste the link above and tap \"Find Transfer\".';

  @override
  String get receiveStepDownload => 'Download files';

  @override
  String get receiveStepDownloadBody =>
      'See file details and download everything at once.';

  @override
  String get lookingUpTransfer => 'Looking up transfer…';

  @override
  String get transferNotFound =>
      'Transfer not found. Check the link and try again.';

  @override
  String get transferExpired =>
      'This transfer has expired and is no longer available.';

  @override
  String get transferLoginRequired =>
      'Sign in is required to access this transfer.';

  @override
  String get transferBadResponse =>
      'Unexpected server response. Check your connection.';

  @override
  String get transferNetworkError =>
      'Network error. Check your internet connection.';

  @override
  String transferLoadFailed(String error) {
    return 'Could not load transfer: $error';
  }

  @override
  String get passwordProtected => 'Password protected';

  @override
  String get enterPassword => 'Enter password';

  @override
  String get unlock => 'Unlock';

  @override
  String get downloading => 'Downloading…';

  @override
  String get downloadAllFiles => 'Download all files';

  @override
  String get downloadSingleFile => 'Download file';

  @override
  String get receiveAnother => 'Receive another transfer';

  @override
  String get plansTitle => 'Plans';

  @override
  String get plansSubtitle => 'Upgrade to remove ads and send bigger files.';

  @override
  String get storeUnavailable => 'Store unavailable';

  @override
  String get storeUnavailableBody =>
      'In-app purchases are not available right now.';

  @override
  String get freeVersionAds =>
      'Currently you are using our free version with ads';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get createAccountTitle => 'Create account';

  @override
  String get signUpSubtitle => 'Sign up with email and password.';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get passwordMin8 => 'Password (min 8 chars)';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get checkEmailTitle => 'Check your\nemail';

  @override
  String otpSentTo(String email) {
    return 'We sent a 6-digit code to\n$email';
  }

  @override
  String get verifyAndSignIn => 'Verify & Sign in';

  @override
  String get didntReceiveCode => 'Didn\'t receive it?';

  @override
  String get tryAgain => 'Try again';

  @override
  String get otpExpiresHint =>
      'Code expires in 5 minutes. Check your spam folder if you don\'t see it.';

  @override
  String get snackError => 'Error';

  @override
  String get snackCopied => 'Copied';

  @override
  String get snackCopiedBody => 'Link copied to clipboard';

  @override
  String get snackWelcome => 'Welcome';

  @override
  String get snackAccountCreated => 'Account created';

  @override
  String get snackEnterEmail => 'Please enter your email';

  @override
  String get snackEnterPassword => 'Please enter your password';

  @override
  String get snackInvalidEmail => 'Invalid email address';

  @override
  String get snackInvalidCredentials => 'Incorrect email or password';

  @override
  String get snackPasswordMin8 => 'Password must be at least 8 characters';

  @override
  String get snackPasswordMismatch => 'Passwords do not match.';

  @override
  String get snackAccountExists => 'Account already exists. Please sign in.';

  @override
  String get snackSignupFailed => 'Could not create account. Try again.';

  @override
  String get snackEnterOtp => 'Please enter the 6-digit code';

  @override
  String get snackOtpExpired => 'Code expired';

  @override
  String get snackOtpExpiredBody => 'Please request a new code.';

  @override
  String get snackInvalidCode => 'Invalid code';

  @override
  String get snackInvalidCodeBody => 'The code is incorrect. Please try again.';

  @override
  String get snackSendCodeFailed =>
      'Could not send code. Check your connection and try again.';

  @override
  String get snackEmptyFolder => 'Empty folder';

  @override
  String get snackEmptyFolderBody => 'No files found in the selected folder.';

  @override
  String get snackFolderUnsupported => 'Not supported';

  @override
  String get snackFolderUnsupportedBody =>
      'Folder upload is not available on this platform.';

  @override
  String get snackFolderReadError => 'Could not read the selected folder.';

  @override
  String get snackLimitReached => 'Limit reached';

  @override
  String get snackLimitFilesBody =>
      'Some files were not added because of size or file count limits.';

  @override
  String get snackFreePlanLimit =>
      'Free plan allows up to 5GB per transfer. Please remove some files or upgrade.';

  @override
  String get snackSignInEmail => 'Please sign in to send by email.';

  @override
  String get snackUploadStartFailed => 'Could not start upload.';

  @override
  String get snackVerifyEnterCode => 'Enter the 4-digit code from your email.';

  @override
  String get snackVerifyInvalid =>
      'Invalid or expired code. Check the email and try again.';

  @override
  String get snackVerifyResendFailed => 'Could not resend code. Try again.';

  @override
  String get snackDownloadComplete => 'Download complete';

  @override
  String snackDownloadSaved(String filename) {
    return '\"$filename\" saved to Downloads';
  }

  @override
  String get snackDownloadFailed => 'Download failed';

  @override
  String get snackSaved => 'Saved';

  @override
  String get snackServerUrlUpdated =>
      'Server URL updated. Restart the app to apply.';

  @override
  String get snackStoreError => 'Store error';

  @override
  String get snackMissingProducts => 'Missing products';

  @override
  String get snackStoreUnavailable => 'Store unavailable';

  @override
  String get snackStoreUnavailableBody =>
      'In-app purchases are not available on this device.';

  @override
  String get snackProductNotLoaded => 'Product is not loaded yet.';

  @override
  String get snackRestoreStarted => 'Restore started';

  @override
  String get snackRestoreStartedBody => 'We are checking your purchases.';

  @override
  String get snackRestoreFailed => 'Restore failed';

  @override
  String get snackProcessing => 'Processing';

  @override
  String get snackPleaseWait => 'Please wait…';

  @override
  String get snackSuccess => 'Success';

  @override
  String get snackPurchaseCompleted => 'Purchase completed.';

  @override
  String get snackPurchaseError => 'Purchase error';

  @override
  String get snackPurchaseFailed => 'Purchase failed.';

  @override
  String get snackCanceled => 'Canceled';

  @override
  String get snackPurchaseCanceled => 'Purchase canceled.';

  @override
  String get snackUpload => 'Upload';

  @override
  String get snackVerify => 'Verify';

  @override
  String get doNotExpire => 'Do not expire';

  @override
  String get hourSingular => 'hour';

  @override
  String get hourPlural => 'hours';

  @override
  String get daySingular => 'day';

  @override
  String get dayPlural => 'days';

  @override
  String get emailAddressLabel => 'EMAIL ADDRESS';

  @override
  String get passwordLabelCaps => 'PASSWORD';

  @override
  String get confirmPasswordLabelCaps => 'CONFIRM PASSWORD';

  @override
  String get emailExampleHint => 'you@example.com';

  @override
  String get otpSixDigitHint => '000000';

  @override
  String get verifyFourDigitHint => '0000';

  @override
  String get transferLinkOrId => 'TRANSFER LINK OR ID';

  @override
  String get howToReceive => 'HOW TO RECEIVE';

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
  String get planAdsTitle => 'Ads Plan';

  @override
  String get planAdsBullet1 => 'Access to ads free app';

  @override
  String get planAdsBullet2 => 'Remove all ads';

  @override
  String get planProTitle => 'Pro Plan';

  @override
  String get planProBullet1 => 'Send files up to 20GB';

  @override
  String get planProBullet2 => 'Fast Upload';

  @override
  String get planPremiumTitle => 'Premium Plan';

  @override
  String get planPremiumBullet1 => 'Send files up to 100GB';

  @override
  String get planPremiumBullet2 => 'Super fast upload';

  @override
  String get planSubscriptionDisclaimer =>
      'No trial period — subscription is required to use the additional app functionality. You will be charged immediately. You can cancel anytime.';

  @override
  String get perMonth => '/ month';

  @override
  String get perYear => '/ year';

  @override
  String get snackConnectionProblem => 'Connection problem. Please try again.';

  @override
  String get networkTitle => 'Network';

  @override
  String transferIdLabel(String id) {
    return 'ID: $id';
  }

  @override
  String downloadMetaSummary(String count, String size) {
    return 'Files: $count · $size bytes';
  }

  @override
  String todayAt(String time) {
    return 'Today · $time';
  }

  @override
  String yesterdayAt(String time) {
    return 'Yesterday · $time';
  }

  @override
  String daysAgoAt(int days, String time) {
    return '${days}d ago · $time';
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
    return '$sent / $total  •  $remaining left';
  }

  @override
  String get loadingShort => 'Loading…';

  @override
  String get colorPaletteTitle => 'Color Palette';

  @override
  String get colorPaletteSectionBackgrounds => 'Backgrounds (ink scale)';

  @override
  String get colorPaletteSectionAccent => 'Accent / Primary';

  @override
  String get colorPaletteSectionText => 'Text';

  @override
  String get colorPaletteSectionBorders => 'Borders & Glass';

  @override
  String get colorPaletteSectionSemantic => 'Semantic';

  @override
  String get colorPaletteSectionLive => 'Live Theme (current)';

  @override
  String get colorPaletteActiveHint => '★ = actively used in screens';

  @override
  String get colorPaletteCopyHint =>
      'Long-press any swatch to copy its hex value.';

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
  String get settingsAppBrand => 'Share Large\nVideo Files';

  @override
  String get loginEmailPasswordPrompt =>
      'Enter your email and password to sign in.';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get forgotPasswordTitle => 'Reset password';

  @override
  String get forgotPasswordBody =>
      'Enter your account email and we will send a reset code.';

  @override
  String get forgotPasswordSubmit => 'Send reset code';

  @override
  String get resetPasswordTitle => 'Create new password';

  @override
  String get resetPasswordBody =>
      'Enter the 6-digit code from your email and choose a new password.';

  @override
  String get resetPasswordSubmit => 'Update password';

  @override
  String get snackPasswordResetSent => 'Reset code sent';

  @override
  String get snackPasswordResetSentBody =>
      'Check your email for a 6-digit reset code.';

  @override
  String get snackPasswordResetFailed =>
      'Could not send reset code. Try again.';

  @override
  String get snackPasswordUpdated => 'Password updated';

  @override
  String get snackPasswordUpdatedBody => 'Sign in with your new password.';

  @override
  String get snackPasswordResetInvalid => 'Invalid or expired reset code.';

  @override
  String get otpDigitLabel => '6-DIGIT CODE';

  @override
  String receiveMoreFiles(int count) {
    return '+$count more files';
  }
}
