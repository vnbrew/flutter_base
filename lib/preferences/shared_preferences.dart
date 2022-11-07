import 'package:flutter_base/enum/enum.dart';
import 'package:flutter_base/mapper/language_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPreferencesManager {
  void setLanguageCode(LanguageCode lang);
  LanguageCode getLanguageCode();

  void setThemeMode(bool isDark);
  bool isDarkMode();
}

@LazySingleton(as: ISharedPreferencesManager)
class SharedPreferencesManager implements ISharedPreferencesManager {
  final String _themePrefs = "theme";
  final String _languagePrefs = "language";
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
}
