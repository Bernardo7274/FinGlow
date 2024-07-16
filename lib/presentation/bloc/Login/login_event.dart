import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class SubmitLoginEvent extends LoginEvent {
  final LoginModel login;

  const SubmitLoginEvent(this.login);

  @override
  List<Object> get props => [login];
}