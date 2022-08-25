import '../enum/enum.dart';
import 'base_event.dart';

abstract class AppEvent extends BaseEvent {
  const AppEvent();
}

class AppThemeChanged extends AppEvent {
  bool isDartTheme;
  AppThemeChanged({
    required this.isDartTheme,
  });
}

class AppLanguageChanged extends AppEvent {
  LanguageCode languageCode;
  AppLanguageChanged({
    required this.languageCode,
  });
}
