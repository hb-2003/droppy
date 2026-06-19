import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';

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
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gl'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
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

  /// No description provided for @modeWifi.
  ///
  /// In en, this message translates to:
  /// **'Wi‑Fi'**
  String get modeWifi;

  /// No description provided for @modePc.
  ///
  /// In en, this message translates to:
  /// **'PC'**
  String get modePc;

  /// No description provided for @modeNearby.
  ///
  /// In en, this message translates to:
  /// **'Nearby'**
  String get modeNearby;

  /// No description provided for @nearbyTitle.
  ///
  /// In en, this message translates to:
  /// **'Nearby share'**
  String get nearbyTitle;

  /// No description provided for @nearbySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Send files to a device next to you on the same Wi‑Fi — no internet upload needed.'**
  String get nearbySubtitle;

  /// No description provided for @nearbySend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get nearbySend;

  /// No description provided for @nearbyReceive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get nearbyReceive;

  /// No description provided for @nearbySendDesc.
  ///
  /// In en, this message translates to:
  /// **'Pick files and wait for a nearby device to connect'**
  String get nearbySendDesc;

  /// No description provided for @nearbyReceiveDesc.
  ///
  /// In en, this message translates to:
  /// **'Find nearby devices and download their files'**
  String get nearbyReceiveDesc;

  /// No description provided for @nearbyPickFiles.
  ///
  /// In en, this message translates to:
  /// **'Choose files to send'**
  String get nearbyPickFiles;

  /// No description provided for @nearbyStartSharing.
  ///
  /// In en, this message translates to:
  /// **'Start sharing nearby'**
  String get nearbyStartSharing;

  /// No description provided for @nearbyWaitingForReceiver.
  ///
  /// In en, this message translates to:
  /// **'Waiting for nearby device…'**
  String get nearbyWaitingForReceiver;

  /// No description provided for @nearbyScanning.
  ///
  /// In en, this message translates to:
  /// **'Looking for nearby devices…'**
  String get nearbyScanning;

  /// No description provided for @nearbyNoDevices.
  ///
  /// In en, this message translates to:
  /// **'No nearby devices found'**
  String get nearbyNoDevices;

  /// No description provided for @nearbyNoDevicesHint.
  ///
  /// In en, this message translates to:
  /// **'Ask the sender to tap Send, choose files, and start sharing on the same Wi‑Fi.'**
  String get nearbyNoDevicesHint;

  /// No description provided for @nearbyFilesReady.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 file ready} other{{count} files ready}}'**
  String nearbyFilesReady(int count);

  /// No description provided for @nearbyDownloadAll.
  ///
  /// In en, this message translates to:
  /// **'Download all'**
  String get nearbyDownloadAll;

  /// No description provided for @nearbySharingActive.
  ///
  /// In en, this message translates to:
  /// **'Ready to share'**
  String get nearbySharingActive;

  /// No description provided for @nearbyStopSharing.
  ///
  /// In en, this message translates to:
  /// **'Stop sharing'**
  String get nearbyStopSharing;

  /// No description provided for @nearbyConnectFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not connect to this device. Try again.'**
  String get nearbyConnectFailed;

  /// No description provided for @nearbyComplete.
  ///
  /// In en, this message translates to:
  /// **'Transfer complete'**
  String get nearbyComplete;

  /// No description provided for @nearbyOpen.
  ///
  /// In en, this message translates to:
  /// **'Share nearby'**
  String get nearbyOpen;

  /// No description provided for @nearbyOpenDesc.
  ///
  /// In en, this message translates to:
  /// **'Auto-find devices — no QR or link needed'**
  String get nearbyOpenDesc;

  /// No description provided for @pcShareHint.
  ///
  /// In en, this message translates to:
  /// **'Share files with a computer on the same Wi‑Fi network.'**
  String get pcShareHint;

  /// No description provided for @pcStartSharing.
  ///
  /// In en, this message translates to:
  /// **'Share with PC'**
  String get pcStartSharing;

  /// No description provided for @pcShareReady.
  ///
  /// In en, this message translates to:
  /// **'Open on your computer'**
  String get pcShareReady;

  /// No description provided for @pcShareReadyBody.
  ///
  /// In en, this message translates to:
  /// **'Open the link below in Chrome, Edge, or Safari on your computer to download the files.'**
  String get pcShareReadyBody;

  /// No description provided for @pcOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Scan the QR or open the link on your computer'**
  String get pcOpenInBrowser;

  /// No description provided for @pcBrowserUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Computer link'**
  String get pcBrowserUrlLabel;

  /// No description provided for @snackPcNoNetwork.
  ///
  /// In en, this message translates to:
  /// **'No network connection'**
  String get snackPcNoNetwork;

  /// No description provided for @snackPcShareFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start PC sharing'**
  String get snackPcShareFailed;

  /// No description provided for @snackPcShareFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Connect to Wi‑Fi and try again.'**
  String get snackPcShareFailedBody;

  /// No description provided for @snackPcReceiveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start PC receive'**
  String get snackPcReceiveFailed;

  /// No description provided for @snackPcReceiveFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Connect to Wi‑Fi and try again.'**
  String get snackPcReceiveFailedBody;

  /// No description provided for @receivePcTitle.
  ///
  /// In en, this message translates to:
  /// **'Receive from computer'**
  String get receivePcTitle;

  /// No description provided for @pcReceiveStart.
  ///
  /// In en, this message translates to:
  /// **'Start receiving'**
  String get pcReceiveStart;

  /// No description provided for @pcReceiveStop.
  ///
  /// In en, this message translates to:
  /// **'Stop receiving'**
  String get pcReceiveStop;

  /// No description provided for @pcReceiveReady.
  ///
  /// In en, this message translates to:
  /// **'Waiting for uploads'**
  String get pcReceiveReady;

  /// No description provided for @pcReceiveHint.
  ///
  /// In en, this message translates to:
  /// **'On your computer, open the link below and upload files.'**
  String get pcReceiveHint;

  /// No description provided for @pcReceivedFiles.
  ///
  /// In en, this message translates to:
  /// **'{count} files received'**
  String pcReceivedFiles(int count);

  /// No description provided for @receivePcHowTo1.
  ///
  /// In en, this message translates to:
  /// **'Start receiving on your phone'**
  String get receivePcHowTo1;

  /// No description provided for @receivePcHowTo1Body.
  ///
  /// In en, this message translates to:
  /// **'Tap Start receiving, then keep this screen open.'**
  String get receivePcHowTo1Body;

  /// No description provided for @receivePcHowTo2.
  ///
  /// In en, this message translates to:
  /// **'Open the link on your computer'**
  String get receivePcHowTo2;

  /// No description provided for @receivePcHowTo2Body.
  ///
  /// In en, this message translates to:
  /// **'Use the QR code or copy the http:// address into your browser.'**
  String get receivePcHowTo2Body;

  /// No description provided for @receivePcHowTo3.
  ///
  /// In en, this message translates to:
  /// **'Upload from the browser'**
  String get receivePcHowTo3;

  /// No description provided for @receivePcHowTo3Body.
  ///
  /// In en, this message translates to:
  /// **'Files are saved to Downloads on this phone.'**
  String get receivePcHowTo3Body;

  /// No description provided for @historyPcSent.
  ///
  /// In en, this message translates to:
  /// **'PC'**
  String get historyPcSent;

  /// No description provided for @historyPcReceived.
  ///
  /// In en, this message translates to:
  /// **'From PC'**
  String get historyPcReceived;

  /// No description provided for @historyPcSessionEnded.
  ///
  /// In en, this message translates to:
  /// **'This PC session has ended. Share again from Send to transfer files.'**
  String get historyPcSessionEnded;

  /// No description provided for @historyPcReceivedNote.
  ///
  /// In en, this message translates to:
  /// **'Files were saved to Downloads on this device.'**
  String get historyPcReceivedNote;

  /// No description provided for @wifiShareHint.
  ///
  /// In en, this message translates to:
  /// **'Share files directly with a nearby device on the same Wi‑Fi network.'**
  String get wifiShareHint;

  /// No description provided for @wifiSameNetworkHint.
  ///
  /// In en, this message translates to:
  /// **'Both devices must be on the same Wi‑Fi network.'**
  String get wifiSameNetworkHint;

  /// No description provided for @wifiStartSharing.
  ///
  /// In en, this message translates to:
  /// **'Start sharing'**
  String get wifiStartSharing;

  /// No description provided for @wifiShareReady.
  ///
  /// In en, this message translates to:
  /// **'Ready to receive'**
  String get wifiShareReady;

  /// No description provided for @wifiShareReadyBody.
  ///
  /// In en, this message translates to:
  /// **'Ask the receiver to scan the QR code or open the address below on the same Wi‑Fi network.'**
  String get wifiShareReadyBody;

  /// No description provided for @snackWifiNoNetwork.
  ///
  /// In en, this message translates to:
  /// **'No Wi‑Fi connection'**
  String get snackWifiNoNetwork;

  /// No description provided for @snackWifiNoNetworkBody.
  ///
  /// In en, this message translates to:
  /// **'Connect to Wi‑Fi to share files locally.'**
  String get snackWifiNoNetworkBody;

  /// No description provided for @snackWifiShareFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start Wi‑Fi sharing'**
  String get snackWifiShareFailed;

  /// No description provided for @snackWifiShareFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Check your Wi‑Fi connection and try again.'**
  String get snackWifiShareFailedBody;

  /// No description provided for @receiveWifiTitle.
  ///
  /// In en, this message translates to:
  /// **'Receive via Wi‑Fi'**
  String get receiveWifiTitle;

  /// No description provided for @receiveWifiUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'Sender address'**
  String get receiveWifiUrlLabel;

  /// No description provided for @receiveWifiUrlHint.
  ///
  /// In en, this message translates to:
  /// **'http://192.168.1.5:12345/wifi/...'**
  String get receiveWifiUrlHint;

  /// No description provided for @receiveWifiFind.
  ///
  /// In en, this message translates to:
  /// **'Find files'**
  String get receiveWifiFind;

  /// No description provided for @receiveWifiScanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan Wi‑Fi QR'**
  String get receiveWifiScanQr;

  /// No description provided for @receiveWifiInvalidUrl.
  ///
  /// In en, this message translates to:
  /// **'This is not a valid Wi‑Fi share address.'**
  String get receiveWifiInvalidUrl;

  /// No description provided for @receiveWifiConnectFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not reach the sender. Make sure both devices are on the same Wi‑Fi.'**
  String get receiveWifiConnectFailed;

  /// No description provided for @receiveWifiHowTo1.
  ///
  /// In en, this message translates to:
  /// **'Start sharing on the sender'**
  String get receiveWifiHowTo1;

  /// No description provided for @receiveWifiHowTo1Body.
  ///
  /// In en, this message translates to:
  /// **'On Send, choose Wi‑Fi and tap Start sharing.'**
  String get receiveWifiHowTo1Body;

  /// No description provided for @receiveWifiHowTo2.
  ///
  /// In en, this message translates to:
  /// **'Scan or paste the address'**
  String get receiveWifiHowTo2;

  /// No description provided for @receiveWifiHowTo2Body.
  ///
  /// In en, this message translates to:
  /// **'Use the scanner or paste the http:// address from the sender.'**
  String get receiveWifiHowTo2Body;

  /// No description provided for @receiveWifiHowTo3.
  ///
  /// In en, this message translates to:
  /// **'Download the files'**
  String get receiveWifiHowTo3;

  /// No description provided for @receiveWifiHowTo3Body.
  ///
  /// In en, this message translates to:
  /// **'Files are saved to your Downloads folder.'**
  String get receiveWifiHowTo3Body;

  /// No description provided for @wifiDownloadAll.
  ///
  /// In en, this message translates to:
  /// **'Download all'**
  String get wifiDownloadAll;

  /// No description provided for @wifiDownloadedFiles.
  ///
  /// In en, this message translates to:
  /// **'Saved {count} files to Downloads'**
  String wifiDownloadedFiles(int count);

  /// No description provided for @wifiDownloadingProgress.
  ///
  /// In en, this message translates to:
  /// **'Downloading {current} of {total}…'**
  String wifiDownloadingProgress(int current, int total);

  /// No description provided for @historyWifiSent.
  ///
  /// In en, this message translates to:
  /// **'Wi‑Fi'**
  String get historyWifiSent;

  /// No description provided for @historyWifiReceived.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get historyWifiReceived;

  /// No description provided for @historyWifiSessionEnded.
  ///
  /// In en, this message translates to:
  /// **'This Wi‑Fi session has ended. Start a new share on Send to transfer again.'**
  String get historyWifiSessionEnded;

  /// No description provided for @historyWifiReceivedNote.
  ///
  /// In en, this message translates to:
  /// **'Files were saved to Downloads on this device.'**
  String get historyWifiReceivedNote;

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

  /// No description provided for @mailFromUsesAccount.
  ///
  /// In en, this message translates to:
  /// **'Uses your signed-in email.'**
  String get mailFromUsesAccount;

  /// No description provided for @recipientEmailsHelper.
  ///
  /// In en, this message translates to:
  /// **'Multiple recipients: separate with commas, semicolons, or spaces.'**
  String get recipientEmailsHelper;

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

  /// No description provided for @shareQrCode.
  ///
  /// In en, this message translates to:
  /// **'Share QR code'**
  String get shareQrCode;

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

  /// No description provided for @verifyEmailSmtpWarningTitle.
  ///
  /// In en, this message translates to:
  /// **'Verification email may not have been sent'**
  String get verifyEmailSmtpWarningTitle;

  /// No description provided for @verifyEmailSmtpWarningBody.
  ///
  /// In en, this message translates to:
  /// **'The server could not confirm delivery (often SMTP is misconfigured). Ask your site admin to check Mail settings in the admin panel, then tap Resend code.'**
  String get verifyEmailSmtpWarningBody;

  /// No description provided for @verifyEmailCheckSpamHint.
  ///
  /// In en, this message translates to:
  /// **'If it does not arrive: check Junk/Spam and Promotions, wait a minute, confirm {email} has no typos, then tap Resend.'**
  String verifyEmailCheckSpamHint(String email);

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

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get deleteAccountConfirmTitle;

  /// No description provided for @deleteAccountConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'This permanently deletes your account and signs you out. Your transfer links will keep working, but they will no longer appear in your history.'**
  String get deleteAccountConfirmBody;

  /// No description provided for @deleteAccountSuccess.
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get deleteAccountSuccess;

  /// No description provided for @deleteAccountSuccessBody.
  ///
  /// In en, this message translates to:
  /// **'Your account has been removed.'**
  String get deleteAccountSuccessBody;

  /// No description provided for @deleteAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not delete account'**
  String get deleteAccountFailed;

  /// No description provided for @deleteAccountFailedBody.
  ///
  /// In en, this message translates to:
  /// **'Please try again or contact support.'**
  String get deleteAccountFailedBody;

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

  /// No description provided for @receiveScanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan QR'**
  String get receiveScanQr;

  /// No description provided for @receiveScanQrTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan transfer QR'**
  String get receiveScanQrTitle;

  /// No description provided for @receiveScanQrHint.
  ///
  /// In en, this message translates to:
  /// **'Align the QR code inside the frame.'**
  String get receiveScanQrHint;

  /// No description provided for @receiveScanQrInvalid.
  ///
  /// In en, this message translates to:
  /// **'This QR code is not a valid transfer link.'**
  String get receiveScanQrInvalid;

  /// No description provided for @receiveScanQrCameraDenied.
  ///
  /// In en, this message translates to:
  /// **'Camera access is required to scan QR codes.'**
  String get receiveScanQrCameraDenied;

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

  /// No description provided for @storeLoadingPrices.
  ///
  /// In en, this message translates to:
  /// **'Loading prices from App Store…'**
  String get storeLoadingPrices;

  /// No description provided for @storePricesUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Prices unavailable'**
  String get storePricesUnavailable;

  /// No description provided for @storePricesPartial.
  ///
  /// In en, this message translates to:
  /// **'Some prices could not be loaded'**
  String get storePricesPartial;

  /// No description provided for @storePricesPartialBody.
  ///
  /// In en, this message translates to:
  /// **'{loaded} of {total} subscription products loaded.'**
  String storePricesPartialBody(int loaded, int total);

  /// No description provided for @storeSetupHint.
  ///
  /// In en, this message translates to:
  /// **'Test on a real iPhone (not Simulator), use a Sandbox Apple ID, and ensure all 6 subscriptions are created under this app’s bundle ID in App Store Connect with pricing set.'**
  String get storeSetupHint;

  /// No description provided for @priceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'—'**
  String get priceUnavailable;

  /// No description provided for @effectiveMonthlyPrice.
  ///
  /// In en, this message translates to:
  /// **'{price}/month'**
  String effectiveMonthlyPrice(String price);

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

  /// No description provided for @plansContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get plansContinue;

  /// No description provided for @planLinkRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get planLinkRestore;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get termsAndConditions;

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
  /// **'Passwords do not match.'**
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

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordBody.
  ///
  /// In en, this message translates to:
  /// **'Enter your account email and we will send a reset code.'**
  String get forgotPasswordBody;

  /// No description provided for @forgotPasswordSubmit.
  ///
  /// In en, this message translates to:
  /// **'Send reset code'**
  String get forgotPasswordSubmit;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Create new password'**
  String get resetPasswordTitle;

  /// No description provided for @resetPasswordBody.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code from your email and choose a new password.'**
  String get resetPasswordBody;

  /// No description provided for @resetPasswordSubmit.
  ///
  /// In en, this message translates to:
  /// **'Update password'**
  String get resetPasswordSubmit;

  /// No description provided for @snackPasswordResetSent.
  ///
  /// In en, this message translates to:
  /// **'Reset code sent'**
  String get snackPasswordResetSent;

  /// No description provided for @snackPasswordResetSentBody.
  ///
  /// In en, this message translates to:
  /// **'Check your email for a 6-digit reset code.'**
  String get snackPasswordResetSentBody;

  /// No description provided for @snackPasswordResetFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not send reset code. Try again.'**
  String get snackPasswordResetFailed;

  /// No description provided for @snackPasswordUpdated.
  ///
  /// In en, this message translates to:
  /// **'Password updated'**
  String get snackPasswordUpdated;

  /// No description provided for @snackPasswordUpdatedBody.
  ///
  /// In en, this message translates to:
  /// **'Sign in with your new password.'**
  String get snackPasswordUpdatedBody;

  /// No description provided for @snackPasswordResetInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired reset code.'**
  String get snackPasswordResetInvalid;

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
  bool isSupported(Locale locale) => <String>[
    'ar',
    'az',
    'be',
    'bg',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'he',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'kn',
    'ko',
    'ky',
    'lo',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'ne',
    'nl',
    'no',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sq',
    'sr',
    'sv',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'vi',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
