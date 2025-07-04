// This file is generated by the Google Sheets localization tool. Do not edit manually.

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationEn extends AppLocalization {
  AppLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Doctorina';

  @override
  String get checkVersionUpdateNowButton => 'Update Now';

  @override
  String get checkVersionMaybeLaterButton => 'Maybe Later';

  @override
  String get checkVersionUpdateOptionalTitle => 'New update available';

  @override
  String get checkVersionUpdateRequiredTitle => 'Update Required';

  @override
  String checkVersionUpdateOptionalText(String version) {
    return 'A new version (v$version) of the app is available. Please update to continue for the best experience.';
  }

  @override
  String checkVersionUpdateRequiredText(String version) {
    return 'To continue, please update the app. This update includes important fixes and improvements.';
  }
}
