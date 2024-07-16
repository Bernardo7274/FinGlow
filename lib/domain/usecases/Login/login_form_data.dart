import 'package:FinGlow/domain/models/Login/login_model.dart';
import 'package:FinGlow/domain/repositories/Login/login_repository.dart';

class LoginData {
  final LoginRepository repository;

  LoginData(this.repository);

  Future<void> call(LoginModel login) async {
    await repository.loginUser(login);
  }
}
