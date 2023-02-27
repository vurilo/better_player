import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PreferenceHelper {
  ///Preferences keys

  static const String _languageCodeKey = 'prefs_language_code';
  static const String _themeModeKey = 'prefs_app_theme_mode';

  static final PreferenceHelper _singleton = PreferenceHelper._internal();

  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  factory PreferenceHelper() {
    return _singleton;
  }

  PreferenceHelper._internal();

  Future<void> saveLanguageCode(String langCode) async {
    return await _storage.write(key: _languageCodeKey, value: langCode);
  }

  /// Default is english language
  Future<String> getLanguageCode() async {
    return await _storage.read(key: _languageCodeKey) ?? 'en';
  }

  /// get the theme mode, defaults to system
  Future<ThemeMode> getThemeMode() async {
    var themeValue = await _storage.read(key: _themeModeKey);
    ThemeMode theme = ThemeMode.system;
    switch (themeValue) {
      case 'ThemeMode.dark':
        theme = ThemeMode.dark;
        break;
      case 'ThemeMode.light':
        theme = ThemeMode.light;
        break;
      default:
        theme = ThemeMode.system;
        break;
    }
    return theme;
  }

  /// save the theme
  Future<void> setThemeMode(ThemeMode mode) async {
    await _storage.write(key: _themeModeKey, value: mode.toString());
  }

  Future<void> clearAll(bool isLogout) async {
    if (!isLogout) {
      await _storage.deleteAll();
    }
  }
}
