import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable{
  final String email;
  final String password;

  const LoginState({
    this.email = "",
    this.password = ""
  });

  factory LoginState.fromModel(LoginModel model){
    return LoginState(
      email: model.email,
      password: model.password,
    );
  }

  LoginState copyWith({
    String? email,
    String? password
  }){
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}