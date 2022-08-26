import 'package:flutter_base/base/base_bloc_event.dart';

import '../enum/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_event.freezed.dart';

abstract class AppEvent extends BaseBlocEvent {
  const AppEvent();
}

@freezed
class AppThemeChanged extends AppEvent with _$AppThemeChanged {
  const factory AppThemeChanged({
    required bool isDarkTheme,
  }) = _AppThemeChanged;
}

@freezed
class AppLanguageChanged extends AppEvent with _$AppLanguageChanged {
  const factory AppLanguageChanged({
    required LanguageCode languageCode,
  }) = _AppLanguageChanged;
}

@freezed
class AppInitiated extends AppEvent with _$AppInitiated {
  const factory AppInitiated() = _AppInitiated;
}
