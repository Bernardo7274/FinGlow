import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class LoadRegisterDataEvent extends RegisterEvent {}

class NameChanged extends RegisterEvent {
  final String name;

  const NameChanged(this.name);

  @override
  List<Object?> get props => [name];
}

class SurnameChanged extends RegisterEvent {
  final String surname;

  const SurnameChanged(this.surname);

  @override
  List<Object?> get props => [surname];
}

class EmailChanged extends RegisterEvent {
  final String email;

  const EmailChanged(this.email);

  @override
  List<Object?> get props => [email];
}

class PhoneChanged extends RegisterEvent {
  final String phone;

  const PhoneChanged(this.phone);

  @override
  List<Object?> get props => [phone];
}

class BirthDateChanged extends RegisterEvent {
  final DateTime birthDate;

  const BirthDateChanged(this.birthDate);

  @override
  List<Object?> get props => [birthDate];
}

class CountryChanged extends RegisterEvent {
  final String country;

  const CountryChanged(this.country);

  @override
  List<Object?> get props => [country];
}

class RfcChanged extends RegisterEvent {
  final String rfc;

  const RfcChanged(this.rfc);

  @override
  List<Object?> get props => [rfc];
}

class TermsAcceptedChanged extends RegisterEvent {
  final bool termsAccepted;

  const TermsAcceptedChanged(this.termsAccepted);

  @override
  List<Object?> get props => [termsAccepted];
}

class FormSubmitted extends RegisterEvent {}
