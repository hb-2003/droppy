import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Share Large Video Files'**
  String get appTitle;

  /// No description provided for @heroAccent.
  ///
  /// In en, this message translates to:
  /// **'instantly.'**
  String get heroAccent;

  /// No description provided for @heroTitle.
  ///
  /// In en, this message translates to:
  /// **'Send heavy files'**
  String get heroTitle;

  /// No description provided for @splashLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get splashLoading;

  /// No description provided for @navSend.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get navSend;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// No description provided for @navReceive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get navReceive;

  /// No description provided for @navPlans.
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get navPlans;

  /// No description provided for @navDownload.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get navDownload;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @modeLink.
  ///
  /// In en, this message translates to:
  /// **'Get a link'**
  String get modeLink;

  /// No description provided for @modeEmail.
  ///
  /// In en, this message translates to:
  /// **'Send by email'**
  String get modeEmail;

  /// No description provided for @pickFiles.
  ///
  /// In en, this message translates to:
  /// **'Choose files'**
  String get pickFiles;

  /// No description provided for @pickFolder.
  ///
  /// In en, this message translates to:
  /// **'Choose folder'**
  String get pickFolder;

  /// No description provided for @emailFrom.
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get emailFrom;

  /// No description provided for @emailTo.
  ///
  /// In en, this message translates to:
  /// **'Recipient email'**
  String get emailTo;

  /// No description provided for @messageOptional.
  ///
  /// In en, this message translates to:
  /// **'Message (optional)'**
  String get messageOptional;

  /// No description provided for @passwordOptional.
  ///
  /// In en, this message translates to:
  /// **'Password (optional)'**
  String get passwordOptional;

  /// No description provided for @destructAfterDownload.
  ///
  /// In en, this message translates to:
  /// **'Delete after download'**
  String get destructAfterDownload;

  /// No description provided for @destructNo.
  ///
  /// In en, this message translates to:
  /// **'Keep available'**
  String get destructNo;

  /// No description provided for @sendButton.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sendButton;

  /// No description provided for @uploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading…'**
  String get uploading;

  /// No description provided for @uploadComplete.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get uploadComplete;

  /// No description provided for @shareLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Your link'**
  String get shareLinkTitle;

  /// No description provided for @copyLink.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copyLink;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @uploadMore.
  ///
  /// In en, this message translates to:
  /// **'Send another'**
  String get uploadMore;

  /// No description provided for @emailSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Emails sent'**
  String get emailSentTitle;

  /// No description provided for @verifyEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify your email'**
  String get verifyEmailTitle;

  /// No description provided for @verifyCodeHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the code from your email'**
  String get verifyCodeHint;

  /// No description provided for @verifySubmit.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verifySubmit;

  /// No description provided for @verifyResendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get verifyResendCode;

  /// No description provided for @verifyCodeSent.
  ///
  /// In en, this message translates to:
  /// **'A new verification code was sent to your email.'**
  String get verifyCodeSent;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get loginTitle;

  /// No description provided for @signupHint.
  ///
  /// In en, this message translates to:
  /// **'Use your site account email and password.'**
  String get signupHint;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailHint;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordHint;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @downloadIdHint.
  ///
  /// In en, this message translates to:
  /// **'Transfer ID'**
  String get downloadIdHint;

  /// No description provided for @privateIdHint.
  ///
  /// In en, this message translates to:
  /// **'Private ID (optional)'**
  String get privateIdHint;

  /// No description provided for @fetchTransfer.
  ///
  /// In en, this message translates to:
  /// **'Open transfer'**
  String get fetchTransfer;

  /// No description provided for @downloadFile.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadFile;

  /// No description provided for @unlockDownload.
  ///
  /// In en, this message translates to:
  /// **'Unlock download'**
  String get unlockDownload;

  /// No description provided for @downloadSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved to Downloads'**
  String get downloadSaved;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorGeneric;

  /// No description provided for @errorNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error'**
  String get errorNetwork;

  /// No description provided for @errorBadResponse.
  ///
  /// In en, this message translates to:
  /// **'Unexpected server response'**
  String get errorBadResponse;

  /// No description provided for @termsAccept.
  ///
  /// In en, this message translates to:
  /// **'I agree to the terms'**
  String get termsAccept;

  /// No description provided for @settingsApiUrl.
  ///
  /// In en, this message translates to:
  /// **'Public site URL'**
  String get settingsApiUrl;

  /// No description provided for @settingsAccount.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsAccount;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @themeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @settingsSignedIn.
  ///
  /// In en, this message translates to:
  /// **'You are signed in.'**
  String get settingsSignedIn;

  /// No description provided for @settingsSignedOut.
  ///
  /// In en, this message translates to:
  /// **'You are not signed in.'**
  String get settingsSignedOut;

  /// No description provided for @settingsOpenWebsite.
  ///
  /// In en, this message translates to:
  /// **'Open website'**
  String get settingsOpenWebsite;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @settingsLinks.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get settingsLinks;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get termsOfService;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @moreApps.
  ///
  /// In en, this message translates to:
  /// **'More apps'**
  String get moreApps;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageHindi.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get languageHindi;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @maxFilesReached.
  ///
  /// In en, this message translates to:
  /// **'Too many files'**
  String get maxFilesReached;

  /// No description provided for @fileTooLarge.
  ///
  /// In en, this message translates to:
  /// **'File too large'**
  String get fileTooLarge;

  /// No description provided for @ipLimit.
  ///
  /// In en, this message translates to:
  /// **'Too many uploads from this network'**
  String get ipLimit;

  /// No description provided for @fillFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill required fields'**
  String get fillFields;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @maxRecipientsReached.
  ///
  /// In en, this message translates to:
  /// **'Too many recipients'**
  String get maxRecipientsReached;

  /// No description provided for @loginRequiredTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in required'**
  String get loginRequiredTitle;

  /// No description provided for @loginRequiredBody.
  ///
  /// In en, this message translates to:
  /// **'This server requires an account to upload or download.'**
  String get loginRequiredBody;

  /// No description provided for @settingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'App preferences and account.'**
  String get settingsSubtitle;

  /// No description provided for @dropHeavyFile.
  ///
  /// In en, this message translates to:
  /// **'Drop a heavy file here.'**
  String get dropHeavyFile;

  /// No description provided for @upToTotal.
  ///
  /// In en, this message translates to:
  /// **'Up to {max} total'**
  String upToTotal(String max);

  /// No description provided for @removeAll.
  ///
  /// In en, this message translates to:
  /// **'Remove all'**
  String get removeAll;

  /// No description provided for @addFiles.
  ///
  /// In en, this message translates to:
  /// **'Add files'**
  String get addFiles;

  /// No description provided for @adding.
  ///
  /// In en, this message translates to:
  /// **'Adding…'**
  String get adding;

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get options;

  /// No description provided for @selfDestruct.
  ///
  /// In en, this message translates to:
  /// **'Self-destruct after download'**
  String get selfDestruct;

  /// No description provided for @expiry.
  ///
  /// In en, this message translates to:
  /// **'Expiry'**
  String get expiry;

  /// No description provided for @cancelUpload.
  ///
  /// In en, this message translates to:
  /// **'Cancel upload'**
  String get cancelUpload;

  /// No description provided for @transferReady.
  ///
  /// In en, this message translates to:
  /// **'Transfer ready!'**
  String get transferReady;

  /// No description provided for @emailSentReady.
  ///
  /// In en, this message translates to:
  /// **'Email sent!'**
  String get emailSentReady;

  /// No description provided for @shareRecipientHint.
  ///
  /// In en, this message translates to:
  /// **'Share this link with your recipient.'**
  String get shareRecipientHint;

  /// No description provided for @emailSentBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ve notified your recipient(s).'**
  String get emailSentBody;

  /// No description provided for @scanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan to open the transfer link.'**
  String get scanQr;

  /// No description provided for @shareLinkButton.
  ///
  /// In en, this message translates to:
  /// **'SHARE LINK'**
  String get shareLinkButton;

  /// No description provided for @verifyFourDigit.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code sent to your sender email.'**
  String get verifyFourDigit;

  /// No description provided for @starting.
  ///
  /// In en, this message translates to:
  /// **'Starting…'**
  String get starting;

  /// No description provided for @filesCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file} other{{count} files}}'**
  String filesCount(int count);

  /// No description provided for @mbLeft.
  ///
  /// In en, this message translates to:
  /// **'{amount} MB left'**
  String mbLeft(String amount);

  /// No description provided for @fillField.
  ///
  /// In en, this message translates to:
  /// **'Please fill in this field.'**
  String get fillField;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email.'**
  String get enterValidEmail;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @recipientEmail.
  ///
  /// In en, this message translates to:
  /// **'Recipient email'**
  String get recipientEmail;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'My Transfers'**
  String get historyTitle;

  /// No description provided for @signInToSeeTransfers.
  ///
  /// In en, this message translates to:
  /// **'Sign in to see your transfers'**
  String get signInToSeeTransfers;

  /// No description provided for @signInTransfersBody.
  ///
  /// In en, this message translates to:
  /// **'We use your email to link transfers to your account — no password needed.'**
  String get signInTransfersBody;

  /// No description provided for @couldNotLoadTransfers.
  ///
  /// In en, this message translates to:
  /// **'Could not load transfers'**
  String get couldNotLoadTransfers;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @noTransfersYet.
  ///
  /// In en, this message translates to:
  /// **'No transfers yet'**
  String get noTransfersYet;

  /// No description provided for @noTransfersBody.
  ///
  /// In en, this message translates to:
  /// **'Once you send a file, it will appear here.'**
  String get noTransfersBody;

  /// No description provided for @transferDetails.
  ///
  /// In en, this message translates to:
  /// **'Transfer details'**
  String get transferDetails;

  /// No description provided for @filesSection.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get filesSection;

  /// No description provided for @receiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Receive Files'**
  String get receiveTitle;

  /// No description provided for @receiveSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Paste a transfer link to download files.'**
  String get receiveSubtitle;

  /// No description provided for @pasteTooltip.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get pasteTooltip;

  /// No description provided for @findTransfer.
  ///
  /// In en, this message translates to:
  /// **'Find Transfer'**
  String get findTransfer;

  /// No description provided for @receiveStepGetLink.
  ///
  /// In en, this message translates to:
  /// **'Get the link'**
  String get receiveStepGetLink;

  /// No description provided for @receiveStepGetLinkBody.
  ///
  /// In en, this message translates to:
  /// **'Ask the sender to share the transfer link with you.'**
  String get receiveStepGetLinkBody;

  /// No description provided for @receiveStepPaste.
  ///
  /// In en, this message translates to:
  /// **'Paste & find'**
  String get receiveStepPaste;

  /// No description provided for @receiveStepPasteBody.
  ///
  /// In en, this message translates to:
  /// **'Paste the link above and tap \"Find Transfer\".'**
  String get receiveStepPasteBody;

  /// No description provided for @receiveStepDownload.
  ///
  /// In en, this message translates to:
  /// **'Download files'**
  String get receiveStepDownload;

  /// No description provided for @receiveStepDownloadBody.
  ///
  /// In en, this message translates to:
  /// **'See file details and download everything at once.'**
  String get receiveStepDownloadBody;

  /// No description provided for @lookingUpTransfer.
  ///
  /// In en, this message translates to:
  /// **'Looking up transfer…'**
  String get lookingUpTransfer;

  /// No description provided for @transferNotFound.
  ///
  /// In en, this message translates to:
  /// **'Transfer not found. Check the link and try again.'**
  String get transferNotFound;

  /// No description provided for @transferExpired.
  ///
  /// In en, this message translates to:
  /// **'This transfer has expired and is no longer available.'**
  String get transferExpired;

  /// No description provided for @transferLoginRequired.
  ///
  /// In en, this message translates to:
  /// **'Sign in is required to access this transfer.'**
  String get transferLoginRequired;

  /// No description provided for @transferBadResponse.
  ///
  /// In en, this message translates to:
  /// **'Unexpected server response. Check your connection.'**
  String get transferBadResponse;

  /// No description provided for @transferNetworkError.
  ///
  /// In en, this message translates to:
  /// **'Network error. Check your internet connection.'**
  String get transferNetworkError;

  /// No description provided for @transferLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not load transfer: {error}'**
  String transferLoadFailed(String error);

  /// No description provided for @passwordProtected.
  ///
  /// In en, this message translates to:
  /// **'Password protected'**
  String get passwordProtected;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enterPassword;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading…'**
  String get downloading;

  /// No description provided for @downloadAllFiles.
  ///
  /// In en, this message translates to:
  /// **'Download all files'**
  String get downloadAllFiles;

  /// No description provided for @downloadSingleFile.
  ///
  /// In en, this message translates to:
  /// **'Download file'**
  String get downloadSingleFile;

  /// No description provided for @receiveAnother.
  ///
  /// In en, this message translates to:
  /// **'Receive another transfer'**
  String get receiveAnother;

  /// No description provided for @plansTitle.
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get plansTitle;

  /// No description provided for @plansSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to remove ads and send bigger files.'**
  String get plansSubtitle;

  /// No description provided for @storeUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Store unavailable'**
  String get storeUnavailable;

  /// No description provided for @storeUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'In-app purchases are not available right now.'**
  String get storeUnavailableBody;

  /// No description provided for @freeVersionAds.
  ///
  /// In en, this message translates to:
  /// **'Currently you are using our free version with ads'**
  String get freeVersionAds;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// No description provided for @createAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccountTitle;

  /// No description provided for @signUpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up with email and password.'**
  String get signUpSubtitle;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @passwordMin8.
  ///
  /// In en, this message translates to:
  /// **'Password (min 8 chars)'**
  String get passwordMin8;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @checkEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your\nemail'**
  String get checkEmailTitle;

  /// No description provided for @otpSentTo.
  ///
  /// In en, this message translates to:
  /// **'We sent a 6-digit code to\n{email}'**
  String otpSentTo(String email);

  /// No description provided for @verifyAndSignIn.
  ///
  /// In en, this message translates to:
  /// **'Verify & Sign in'**
  String get verifyAndSignIn;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive it?'**
  String get didntReceiveCode;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @otpExpiresHint.
  ///
  /// In en, this message translates to:
  /// **'Code expires in 5 minutes. Check your spam folder if you don\'t see it.'**
  String get otpExpiresHint;

  /// No description provided for @snackError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get snackError;

  /// No description provided for @snackCopied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get snackCopied;

  /// No description provided for @snackCopiedBody.
  ///
  /// In en, this message translates to:
  /// **'Link copied to clipboard'**
  String get snackCopiedBody;

  /// No description provided for @snackWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get snackWelcome;

  /// No description provided for @snackAccountCreated.
  ///
  /// In en, this message translates to:
  /// **'Account created'**
  String get snackAccountCreated;

  /// No description provided for @snackEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get snackEnterEmail;

  /// No description provided for @snackEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get snackEnterPassword;

  /// No description provided for @snackInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get snackInvalidEmail;

  /// No description provided for @snackInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Incorrect email or password'**
  String get snackInvalidCredentials;

  /// No description provided for @snackPasswordMin8.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get snackPasswordMin8;

  /// No description provided for @snackPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get snackPasswordMismatch;

  /// No description provided for @snackAccountExists.
  ///
  /// In en, this message translates to:
  /// **'Account already exists. Please sign in.'**
  String get snackAccountExists;

  /// No description provided for @snackSignupFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not create account. Try again.'**
  String get snackSignupFailed;

  /// No description provided for @snackEnterOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter the 6-digit code'**
  String get snackEnterOtp;

  /// No description provided for @snackOtpExpired.
  ///
  /// In en, this message translates to:
  /// **'Code expired'**
  String get snackOtpExpired;

  /// No description provided for @snackOtpExpiredBody.
  ///
  /// In en, this message translates to:
  /// **'Please request a new code.'**
  String get snackOtpExpiredBody;

  /// No description provided for @snackInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid code'**
  String get snackInvalidCode;

  /// No description provided for @snackInvalidCodeBody.
  ///
  /// In en, this message translates to:
  /// **'The code is incorrect. Please try again.'**
  String get snackInvalidCodeBody;

  /// No description provided for @snackSendCodeFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not send code. Check your connection and try again.'**
  String get snackSendCodeFailed;

  /// No description provided for @snackEmptyFolder.
  ///
  /// In en, this message translates to:
  /// **'Empty folder'**
  String get snackEmptyFolder;

  /// No description provided for @snackEmptyFolderBody.
  ///
  /// In en, this message translates to:
  /// **'No files found in the selected folder.'**
  String get snackEmptyFolderBody;

  /// No description provided for @snackFolderUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Not supported'**
  String get snackFolderUnsupported;

  /// No description provided for @snackFolderUnsupportedBody.
  ///
  /// In en, this message translates to:
  /// **'Folder upload is not available on this platform.'**
  String get snackFolderUnsupportedBody;

  /// No description provided for @snackFolderReadError.
  ///
  /// In en, this message translates to:
  /// **'Could not read the selected folder.'**
  String get snackFolderReadError;

  /// No description provided for @snackLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Limit reached'**
  String get snackLimitReached;

  /// No description provided for @snackLimitFilesBody.
  ///
  /// In en, this message translates to:
  /// **'Some files were not added because of size or file count limits.'**
  String get snackLimitFilesBody;

  /// No description provided for @snackFreePlanLimit.
  ///
  /// In en, this message translates to:
  /// **'Free plan allows up to 5GB per transfer. Please remove some files or upgrade.'**
  String get snackFreePlanLimit;

  /// No description provided for @snackSignInEmail.
  ///
  /// In en, this message translates to:
  /// **'Please sign in to send by email.'**
  String get snackSignInEmail;

  /// No description provided for @snackUploadStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start upload.'**
  String get snackUploadStartFailed;

  /// No description provided for @snackVerifyEnterCode.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code from your email.'**
  String get snackVerifyEnterCode;

  /// No description provided for @snackVerifyInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired code. Check the email and try again.'**
  String get snackVerifyInvalid;

  /// No description provided for @snackVerifyResendFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not resend code. Try again.'**
  String get snackVerifyResendFailed;

  /// No description provided for @snackDownloadComplete.
  ///
  /// In en, this message translates to:
  /// **'Download complete'**
  String get snackDownloadComplete;

  /// No description provided for @snackDownloadSaved.
  ///
  /// In en, this message translates to:
  /// **'\"{filename}\" saved to Downloads'**
  String snackDownloadSaved(String filename);

  /// No description provided for @snackDownloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Download failed'**
  String get snackDownloadFailed;

  /// No description provided for @snackSaved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get snackSaved;

  /// No description provided for @snackServerUrlUpdated.
  ///
  /// In en, this message translates to:
  /// **'Server URL updated. Restart the app to apply.'**
  String get snackServerUrlUpdated;

  /// No description provided for @snackStoreError.
  ///
  /// In en, this message translates to:
  /// **'Store error'**
  String get snackStoreError;

  /// No description provided for @snackMissingProducts.
  ///
  /// In en, this message translates to:
  /// **'Missing products'**
  String get snackMissingProducts;

  /// No description provided for @snackStoreUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Store unavailable'**
  String get snackStoreUnavailable;

  /// No description provided for @snackStoreUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'In-app purchases are not available on this device.'**
  String get snackStoreUnavailableBody;

  /// No description provided for @snackProductNotLoaded.
  ///
  /// In en, this message translates to:
  /// **'Product is not loaded yet.'**
  String get snackProductNotLoaded;

  /// No description provided for @snackRestoreStarted.
  ///
  /// In en, this message translates to:
  /// **'Restore started'**
  String get snackRestoreStarted;

  /// No description provided for @snackRestoreStartedBody.
  ///
  /// In en, this message translates to:
  /// **'We are checking your purchases.'**
  String get snackRestoreStartedBody;

  /// No description provided for @snackRestoreFailed.
  ///
  /// In en, this message translates to:
  /// **'Restore failed'**
  String get snackRestoreFailed;

  /// No description provided for @snackProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get snackProcessing;

  /// No description provided for @snackPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait…'**
  String get snackPleaseWait;

  /// No description provided for @snackSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get snackSuccess;

  /// No description provided for @snackPurchaseCompleted.
  ///
  /// In en, this message translates to:
  /// **'Purchase completed.'**
  String get snackPurchaseCompleted;

  /// No description provided for @snackPurchaseError.
  ///
  /// In en, this message translates to:
  /// **'Purchase error'**
  String get snackPurchaseError;

  /// No description provided for @snackPurchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed.'**
  String get snackPurchaseFailed;

  /// No description provided for @snackCanceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get snackCanceled;

  /// No description provided for @snackPurchaseCanceled.
  ///
  /// In en, this message translates to:
  /// **'Purchase canceled.'**
  String get snackPurchaseCanceled;

  /// No description provided for @snackUpload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get snackUpload;

  /// No description provided for @snackVerify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get snackVerify;

  /// No description provided for @doNotExpire.
  ///
  /// In en, this message translates to:
  /// **'Do not expire'**
  String get doNotExpire;

  /// No description provided for @hourSingular.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hourSingular;

  /// No description provided for @hourPlural.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get hourPlural;

  /// No description provided for @daySingular.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get daySingular;

  /// No description provided for @dayPlural.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get dayPlural;

  /// No description provided for @emailAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'EMAIL ADDRESS'**
  String get emailAddressLabel;

  /// No description provided for @passwordLabelCaps.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD'**
  String get passwordLabelCaps;

  /// No description provided for @confirmPasswordLabelCaps.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM PASSWORD'**
  String get confirmPasswordLabelCaps;

  /// No description provided for @emailExampleHint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get emailExampleHint;

  /// No description provided for @otpSixDigitHint.
  ///
  /// In en, this message translates to:
  /// **'000000'**
  String get otpSixDigitHint;

  /// No description provided for @verifyFourDigitHint.
  ///
  /// In en, this message translates to:
  /// **'0000'**
  String get verifyFourDigitHint;

  /// No description provided for @transferLinkOrId.
  ///
  /// In en, this message translates to:
  /// **'TRANSFER LINK OR ID'**
  String get transferLinkOrId;

  /// No description provided for @howToReceive.
  ///
  /// In en, this message translates to:
  /// **'HOW TO RECEIVE'**
  String get howToReceive;

  /// No description provided for @transferLinkHint.
  ///
  /// In en, this message translates to:
  /// **'https://… or paste ID'**
  String get transferLinkHint;

  /// No description provided for @filesReady.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file ready} other{{count} files ready}}'**
  String filesReady(int count);

  /// No description provided for @planAdsTitle.
  ///
  /// In en, this message translates to:
  /// **'Ads Plan'**
  String get planAdsTitle;

  /// No description provided for @planAdsBullet1.
  ///
  /// In en, this message translates to:
  /// **'Access to ads free app'**
  String get planAdsBullet1;

  /// No description provided for @planAdsBullet2.
  ///
  /// In en, this message translates to:
  /// **'Remove all ads'**
  String get planAdsBullet2;

  /// No description provided for @planProTitle.
  ///
  /// In en, this message translates to:
  /// **'Pro Plan'**
  String get planProTitle;

  /// No description provided for @planProBullet1.
  ///
  /// In en, this message translates to:
  /// **'Send files up to 20GB'**
  String get planProBullet1;

  /// No description provided for @planProBullet2.
  ///
  /// In en, this message translates to:
  /// **'Fast Upload'**
  String get planProBullet2;

  /// No description provided for @planPremiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Premium Plan'**
  String get planPremiumTitle;

  /// No description provided for @planPremiumBullet1.
  ///
  /// In en, this message translates to:
  /// **'Send files up to 100GB'**
  String get planPremiumBullet1;

  /// No description provided for @planPremiumBullet2.
  ///
  /// In en, this message translates to:
  /// **'Super fast upload'**
  String get planPremiumBullet2;

  /// No description provided for @planSubscriptionDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'No trial period — subscription is required to use the additional app functionality. You will be charged immediately. You can cancel anytime.'**
  String get planSubscriptionDisclaimer;

  /// No description provided for @perMonth.
  ///
  /// In en, this message translates to:
  /// **'/ month'**
  String get perMonth;

  /// No description provided for @perYear.
  ///
  /// In en, this message translates to:
  /// **'/ year'**
  String get perYear;

  /// No description provided for @snackConnectionProblem.
  ///
  /// In en, this message translates to:
  /// **'Connection problem. Please try again.'**
  String get snackConnectionProblem;

  /// No description provided for @networkTitle.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get networkTitle;

  /// No description provided for @transferIdLabel.
  ///
  /// In en, this message translates to:
  /// **'ID: {id}'**
  String transferIdLabel(String id);

  /// No description provided for @downloadMetaSummary.
  ///
  /// In en, this message translates to:
  /// **'Files: {count} · {size} bytes'**
  String downloadMetaSummary(String count, String size);

  /// No description provided for @todayAt.
  ///
  /// In en, this message translates to:
  /// **'Today · {time}'**
  String todayAt(String time);

  /// No description provided for @yesterdayAt.
  ///
  /// In en, this message translates to:
  /// **'Yesterday · {time}'**
  String yesterdayAt(String time);

  /// No description provided for @daysAgoAt.
  ///
  /// In en, this message translates to:
  /// **'{days}d ago · {time}'**
  String daysAgoAt(int days, String time);

  /// No description provided for @dateAt.
  ///
  /// In en, this message translates to:
  /// **'{date} · {time}'**
  String dateAt(String date, String time);

  /// No description provided for @mbAmount.
  ///
  /// In en, this message translates to:
  /// **'{amount} MB'**
  String mbAmount(String amount);

  /// No description provided for @uploadProgressSummary.
  ///
  /// In en, this message translates to:
  /// **'{sent} / {total}  •  {remaining} left'**
  String uploadProgressSummary(String sent, String total, String remaining);

  /// No description provided for @loadingShort.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loadingShort;

  /// No description provided for @colorPaletteTitle.
  ///
  /// In en, this message translates to:
  /// **'Color Palette'**
  String get colorPaletteTitle;

  /// No description provided for @colorPaletteSectionBackgrounds.
  ///
  /// In en, this message translates to:
  /// **'Backgrounds (ink scale)'**
  String get colorPaletteSectionBackgrounds;

  /// No description provided for @colorPaletteSectionAccent.
  ///
  /// In en, this message translates to:
  /// **'Accent / Primary'**
  String get colorPaletteSectionAccent;

  /// No description provided for @colorPaletteSectionText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get colorPaletteSectionText;

  /// No description provided for @colorPaletteSectionBorders.
  ///
  /// In en, this message translates to:
  /// **'Borders & Glass'**
  String get colorPaletteSectionBorders;

  /// No description provided for @colorPaletteSectionSemantic.
  ///
  /// In en, this message translates to:
  /// **'Semantic'**
  String get colorPaletteSectionSemantic;

  /// No description provided for @colorPaletteSectionLive.
  ///
  /// In en, this message translates to:
  /// **'Live Theme (current)'**
  String get colorPaletteSectionLive;

  /// No description provided for @colorPaletteActiveHint.
  ///
  /// In en, this message translates to:
  /// **'★ = actively used in screens'**
  String get colorPaletteActiveHint;

  /// No description provided for @colorPaletteCopyHint.
  ///
  /// In en, this message translates to:
  /// **'Long-press any swatch to copy its hex value.'**
  String get colorPaletteCopyHint;

  /// No description provided for @historyFilesSize.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file} other{{count} files}} · {size}'**
  String historyFilesSize(int count, String size);

  /// No description provided for @settingsAppBrand.
  ///
  /// In en, this message translates to:
  /// **'Share Large\nVideo Files'**
  String get settingsAppBrand;

  /// No description provided for @loginEmailPasswordPrompt.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and password to sign in.'**
  String get loginEmailPasswordPrompt;

  /// No description provided for @otpDigitLabel.
  ///
  /// In en, this message translates to:
  /// **'6-DIGIT CODE'**
  String get otpDigitLabel;

  /// No description provided for @receiveMoreFiles.
  ///
  /// In en, this message translates to:
  /// **'+{count} more files'**
  String receiveMoreFiles(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
