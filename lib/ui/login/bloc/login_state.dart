import 'package:flutter_base/base/base_bloc_state.dart';

class LoginState extends BaseBlocState {
  String email;
  String password;
  LoginState({
    required this.email,
    required this.password,
  });
}
