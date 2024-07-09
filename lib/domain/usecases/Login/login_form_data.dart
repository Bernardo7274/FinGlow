

import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:FinGlow/domain/repositories/Login/login_repository.dart';

class LoginFormData{
  final LoginRepository repository;

  LoginFormData(this.repository);

  Future<LoginModel> call() async{
    final loginData = await repository.loginFormData();

    //Validaciones
    if (loginData.email.isEmpty) {
      throw Exception("Email cannot be empty");
    }

    if (loginData.password.isEmpty) {
      throw Exception("Password cannot be empty");
    }

    return loginData;
  }

}