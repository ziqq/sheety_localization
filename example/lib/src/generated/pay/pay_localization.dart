// This file is generated by the Google Sheets localization tool. Do not edit manually.
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'pay_localization_de.dart';
import 'pay_localization_en.dart';
import 'pay_localization_es.dart';
import 'pay_localization_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of PayLocalization
/// returned by `PayLocalization.of(context)`.
///
/// Applications need to include `PayLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'pay/pay_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: PayLocalization.localizationsDelegates,
///   supportedLocales: PayLocalization.supportedLocales,
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
/// be consistent with the languages listed in the PayLocalization.supportedLocales
/// property.
abstract class PayLocalization {
  PayLocalization(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static PayLocalization of(BuildContext context) {
    return Localizations.of<PayLocalization>(context, PayLocalization)!;
  }

  static const LocalizationsDelegate<PayLocalization> delegate =
      _PayLocalizationDelegate();

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
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('ru')
  ];

  /// Заголовок экрана
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get title;

  /// Пример кнопки
  ///
  /// In en, this message translates to:
  /// **'Button example'**
  String get exampleButton;
}

class _PayLocalizationDelegate extends LocalizationsDelegate<PayLocalization> {
  const _PayLocalizationDelegate();

  @override
  Future<PayLocalization> load(Locale locale) {
    return SynchronousFuture<PayLocalization>(lookupPayLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en', 'es', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_PayLocalizationDelegate old) => false;
}

PayLocalization lookupPayLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return PayLocalizationDe();
    case 'en':
      return PayLocalizationEn();
    case 'es':
      return PayLocalizationEs();
    case 'ru':
      return PayLocalizationRu();
  }

  throw FlutterError(
      'PayLocalization.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
