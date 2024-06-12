import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class RegisterModel {
  String name;
  String surname;
  String email;
  String phone;
  DateTime birthDate;
  String country;
  String rfc;
  String password;
  String confirmPassword;
  bool termsAccepted;
  bool isValid;

  RegisterModel({
    required this.name,
    required this.surname,
    required this.email,
    required this.phone,
    required this.birthDate,
    required this.country,
    required this.rfc,
    required this.password,
    required this.confirmPassword,
    required this.termsAccepted,
    required this.isValid,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => _$RegisterModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
