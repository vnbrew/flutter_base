import 'package:flutter_base/base/base_state.dart';
import 'package:flutter_base/enum/enum.dart';

abstract class AppState extends BaseState {
  LanguageCode languageCode;
  bool isDarkTheme;
  AppState({
    this.languageCode = LanguageCode.en,
    this.isDarkTheme = false,
  });
}

