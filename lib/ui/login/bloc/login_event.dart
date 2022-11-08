import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class ButtonLoginPressed extends LoginEvent {
  final String username;
  final String password;
  const ButtonLoginPressed({required this.password, required this.username});

  @override
  List<Object?> get props => [password, username];
}
