import 'package:fin_glow/domain/models/Register/register_model.dart';

abstract class RegisterRepository {
  Future<void> submitUser(RegisterModel register);
}
