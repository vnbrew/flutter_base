import 'dart:io';

import 'package:flutter_base/di/di.dart';
import 'package:flutter_base/preferences/shared_preferences.dart';
import 'package:flutter_base/ui/login/bloc/login_event.dart';
import 'package:flutter_base/ui/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<ButtonLoginPressed>(_onButtonLoginPressed);
  }

  Future<void> _onButtonLoginPressed(
    ButtonLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    try {
      await Future.delayed(const Duration(seconds: 2));
      getIt<ISharedPreferencesManager>().setUserLoggedIn();
      emit(LoginSuccess(token: event.username));
    } on IOException catch (e) {
      emit(LoginFailure(error: e.toString()));
    }
  }
}
