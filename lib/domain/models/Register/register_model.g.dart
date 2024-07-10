// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      country: json['country'] as String,
      rfc: json['rfc'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      termsAccepted: json['termsAccepted'] as bool,
      isValid: json['isValid'] as bool,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'phone': instance.phone,
      'birthDate': instance.birthDate.toIso8601String(),
      'country': instance.country,
      'rfc': instance.rfc,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'termsAccepted': instance.termsAccepted,
      'isValid': instance.isValid,
    };
