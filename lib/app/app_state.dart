import 'package:flutter_base/base/base_bloc_state.dart';
import 'package:flutter_base/enum/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    @Default(LanguageCode.en) languageCode,
    @Default(false) isDarkTheme,
  }) = _AppState;
}
