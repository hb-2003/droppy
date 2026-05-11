import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

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
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

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
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
