import 'package:flutter_base/base/base_bloc_event.dart';

abstract class LoginEvent extends BaseBlocEvent {
  const LoginEvent();
}

class EmailTextFieldChanged extends LoginEvent {
  String email;
  EmailTextFieldChanged({required this.email});
}

class PasswordTextFieldChanged extends LoginEvent {
  String password;
  PasswordTextFieldChanged({required this.password});
}

class ButtonLoginPressed extends LoginEvent {
  const ButtonLoginPressed();
}
