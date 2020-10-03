
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalization {
  
  AppLocalization(this.locale);

  final Locale locale;
  Map<String, String> _localizedStrings;

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }
  static const LocalizationsDelegate<AppLocalization> delegate =
  _AppLocalizationDelegate();
  

  Future<void> load() async {
    String jsonString = await rootBundle.loadString('assets/locales/localization_${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) {
    return _localizedStrings[key] ?? "$key not found";
  }
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  
  const _AppLocalizationDelegate();
  
  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = new AppLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;

}