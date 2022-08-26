import 'package:flutter_base/base/base_bloc.dart';
import 'package:flutter_base/ui/login/bloc/login_event.dart';
import 'package:flutter_base/ui/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(email: "", password: "")) {
    on<EmailTextFieldChanged>(
      _onEmailTextFieldChanged,
    );
    on<PasswordTextFieldChanged>(
      _onPasswordTextFieldChanged,
    );
  }

  void _onEmailTextFieldChanged(
    EmailTextFieldChanged event,
    Emitter<LoginState> emit,
  ) {
    state.email = event.email;
    emit(state);
  }

  void _onPasswordTextFieldChanged(
    PasswordTextFieldChanged event,
    Emitter<LoginState> emit,
  ) {
    state.password = event.password;
    emit(state);
  }
}
