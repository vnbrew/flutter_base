import 'package:flutter_base/base/base_bloc_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_state.freezed.dart';

@freezed
class AppState extends BaseBlocState with _$AppState {
  const factory AppState({
    languageCode,
    isDarkTheme,
  }) = _AppState;
}
