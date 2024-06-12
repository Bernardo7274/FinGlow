import 'package:FinGlow/domain/models/Register/register_model.dart';

abstract class RegisterRepository {
  Future<RegisterModel> loadRegisterData();
}
