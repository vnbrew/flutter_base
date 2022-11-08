import 'package:flutter_base/enum/enum.dart';
import 'package:flutter_base/mapper/language_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPreferencesManager {
  void setLanguageCode(LanguageCode lang);
  LanguageCode getLanguageCode();

  void setThemeMode(bool isDark);
  bool isDarkMode();

  void setUserLoggedIn();
  void setUserLoggedOut();
  bool isUserLoggedIn();
}

@LazySingleton(as: ISharedPreferencesManager)
class SharedPreferencesManager implements ISharedPreferencesManager {
  final String _themePrefs = "theme";
  final String _languagePrefs = "language";
  final String _loginPrefs = "login";
  late SharedPreferences _preferences;
  late ILanguageMapper _languageMapper;

  SharedPreferencesManager(
    SharedPreferences references,
    ILanguageMapper languageMapper,
  ) {
    _preferences = references;
    _languageMapper = languageMapper;
  }

  @override
  void setLanguageCode(LanguageCode lang) {
    _preferences.setString(
      _languagePrefs,
      _languageMapper.mapToLanguageName(lang),
    );
  }

  @override
  LanguageCode getLanguageCode() {
    final languageName = _preferences.getString(_languagePrefs) ?? '';
    return _languageMapper.mapToLanguageCode(languageName);
  }

  @override
  bool isDarkMode() {
    return _preferences.getBool(_themePrefs) ?? false;
  }

  @override
  void setThemeMode(bool isDark) {
    _preferences.setBool(_themePrefs, isDark);
  }

  @override
  bool isUserLoggedIn() {
    return _preferences.getBool(_loginPrefs) ?? false;
  }

  @override
  void setUserLoggedIn() {
    _preferences.setBool(_loginPrefs, true);
  }

  @override
  void setUserLoggedOut() {
    _preferences.setBool(_loginPrefs, false);
  }
}
