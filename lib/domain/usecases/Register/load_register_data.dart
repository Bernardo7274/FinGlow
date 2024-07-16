import 'package:FinGlow/domain/models/Register/register_model.dart';
import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';

class RegisterData {
  final RegisterRepository repository;

  RegisterData(this.repository);

  Future<void> call(RegisterModel register) async {
    await repository.submitUser(register);
  }
}
