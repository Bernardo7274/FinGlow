import 'package:FinGlow/domain/models/Register/register_model.dart';

abstract class RegisterRepository {
  Future<void> submitUser(RegisterModel register);
}
