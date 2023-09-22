import 'package:flutter/material.dart';

class LocaleProvider with ChangeNotifier {
  Locale _appLocale = const Locale("en");

  Locale get appLocale => _appLocale;

  void changeLocale(Locale locale) {
    if (_appLocale == locale) return;
    _appLocale = locale;
    notifyListeners();
  }
}