import 'package:flutter/material.dart';
import 'package:mobilelms/core/storage/preferences/prefs_helper.dart';
import 'package:mobilelms/generated/l10n.dart';

class Preferences extends ChangeNotifier {
  Locale _locale = const Locale('en_US');
  ThemeMode _currentThemeMode = ThemeMode.system;
  ThemeMode get currentThemeMode => _currentThemeMode;
  Locale get locale => _locale;

  Future<void> changeLanguage(String languageCode) async {
    if (S.delegate.isSupported(Locale(languageCode))) {
      await PreferenceHelper().saveLanguageCode(languageCode);
      await S.delegate.load(Locale(languageCode, languageCode));
      _locale = Locale(languageCode);
      notifyListeners();
    }
  }

  /// Get Language Code

  Future<void> getAppLocale() async {
    var savedLocale = await PreferenceHelper().getLanguageCode();
    _locale = Locale(savedLocale);
    notifyListeners();
  }

  /// For Set the Theme Mode

  setTheme(ThemeMode value) async {
    await PreferenceHelper().setThemeMode(value);
    _currentThemeMode = value;
    notifyListeners();
  }

  /// Get the Theme Mode

  Future<void> getTheme() async {
    var savedTheme = await PreferenceHelper().getThemeMode();
    _currentThemeMode = savedTheme;
    notifyListeners();
  }

  String get dropdownValue => _dropdownValue;
  String _dropdownValue = 'English';

  void updateDropdownValueLan(String value) {
    _dropdownValue = value;
    notifyListeners();
  }

  void setDropdownValue() {
    locale == const Locale('en')
        ? _dropdownValue = "English"
        : _dropdownValue = "नेपाली";
    notifyListeners();
  }
}
