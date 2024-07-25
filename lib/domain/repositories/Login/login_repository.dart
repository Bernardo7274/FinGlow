import 'package:fin_glow/domain/models/Login/login_model.dart';

abstract class LoginRepository {
  Future<void> loginUser(LoginModel login);
}
