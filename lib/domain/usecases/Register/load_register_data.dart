import 'package:FinGlow/domain/models/Register/register_model.dart';
import 'package:FinGlow/domain/repositories/Register/registerD_repository.dart';

class LoadRegisterData {
  final RegisterRepository repository;

  LoadRegisterData(this.repository);

  Future<void> call(RegisterModel register) async {
    final registerData = await repository.submitUser(register);

    //Validaciones
    // if (registerData.name.isEmpty) {
    //   throw Exception('El nombre no debe estar vacío.');
    // }
    // if (!_isValidName(registerData.name)) {
    //   throw Exception('El nombre solo debe contener letras.');
    // }
    // if (registerData.surname.isEmpty) {
    //   throw Exception('El apellido no debe estar vacío.');
    // }
    // if (!_isValidName(registerData.surname)) {
    //   throw Exception('El apellido solo debe contener letras.');
    // }
    // if (!_isValidEmail(registerData.email)) {
    //   throw Exception('El correo electrónico no es válido.');
    // }
    // if (registerData.phone.isEmpty) {
    //   throw Exception('El teléfono no debe estar vacío.');
    // }
    // if (!_isValidPhone(registerData.phone)) {
    //   throw Exception('El teléfono no es válido.');
    // }
    // if (!_isValidBirthDate(registerData.birthDate)) {
    //   throw Exception('Debes tener al menos 18 años.');
    // }
    // if (registerData.country.isEmpty) {
    //   throw Exception('El país no debe estar vacío.');
    // }
    // if (registerData.rfc.isEmpty) {
    //   throw Exception('El RFC no debe estar vacío.');
    // }
    // if (!_isValidRFC(registerData.rfc)) {
    //   throw Exception('El RFC no es válido.');
    // }
    // if (registerData.password.isEmpty) {
    //   throw Exception('La contraseña no debe estar vacía.');
    // }
    // if (registerData.confirmPassword.isEmpty) {
    //   throw Exception('La confirmación de contraseña no debe estar vacía.');
    // }
    // if (registerData.password != registerData.confirmPassword) {
    //   throw Exception('Las contraseñas no coinciden.');
    // }
    // if (!registerData.termsAccepted) {
    //   throw Exception('Debe aceptar los términos y condiciones.');
    // }
    // if (!registerData.isValid) {
    //   throw Exception('Los datos no son válidos.');
    // }

    return registerData;
  }

  // bool _isValidName(String name) {
  //   // Valida que solo contenga letras y espacios
  //   final nameRegExp = RegExp(r'^[a-zA-Z\s]+$');
  //   return nameRegExp.hasMatch(name);
  // }

  // bool _isValidEmail(String email) {
  //   // Valida formato de correo electrónico
  //   final emailRegExp = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  //   return emailRegExp.hasMatch(email);
  // }

  // bool _isValidPhone(String phone) {
  //   // Valida que solo contenga exactamente 10 dígitos
  //   final phoneRegExp = RegExp(r'^\d{10}$');
  //   return phoneRegExp.hasMatch(phone);
  // }

  // bool _isValidBirthDate(DateTime birthDate) {
  //   // Valida que la fecha de nacimiento sea al menos 18 años en el pasado
  //   final currentDate = DateTime.now();
  //   final age = currentDate.year - birthDate.year;
  //   if (currentDate.month < birthDate.month || (currentDate.month == birthDate.month && currentDate.day < birthDate.day)) {
  //     return age > 18;
  //   }
  //   return age >= 18;
  // }

  // bool _isValidRFC(String rfc) {
  //   // Valida formato de RFC (12 dígitos)
  //   final rfcRegExp = RegExp(r'^[A-Z&Ñ]{3}[0-9]{6}[A-Z0-9]{3}$');
  //   return rfcRegExp.hasMatch(rfc);
  // }
}
