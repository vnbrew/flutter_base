import 'package:flutter_base/base/base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../di/di.dart';
import '../repository/preferences/shared_preferences.dart';
import 'app_event.dart';
import 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppInitiated>(_onAppInitiated);
    on<AppThemeChanged>(_onAppThemeChanged);
    on<AppLanguageChanged>(_onAppLanguageChanged);
  }

  Future<void> _onAppInitiated(
    AppInitiated event,
    Emitter<AppState> emit,
  ) async {
    final prefs = getIt<ISharedPreferencesManager>();
    emit(state.copyWith(
      isDarkTheme: prefs.isDarkMode(),
      languageCode: prefs.getLanguageCode(),
    ));
  }

  Future<void> _onAppThemeChanged(
    AppThemeChanged event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  Future<void> _onAppLanguageChanged(
    AppLanguageChanged event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(languageCode: event.languageCode));
  }
}
