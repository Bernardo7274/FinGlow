import 'package:FinGlow/domain/usecases/Register/load_register_data.dart' as usecase;
import 'package:FinGlow/presentation/bloc/Register/register_event.dart';
import 'package:FinGlow/presentation/bloc/Register/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final usecase.LoadRegisterData loadRegisterData;

  RegisterBloc(this.loadRegisterData) : super(const RegisterState()) {
    on<LoadRegisterDataEvent>((event, emit) async {
      // final registerData = await loadRegisterData();
      // emit(RegisterState.fromModel(registerData));
    });

    on<NameChanged>((event, emit) {
      emit(state.copyWith(name: event.name, isValid: _validateForm()));
    });
    on<SurnameChanged>((event, emit) {
      emit(state.copyWith(surname: event.surname, isValid: _validateForm()));
    });
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email, isValid: _validateForm()));
    });
    on<PhoneChanged>((event, emit) {
      emit(state.copyWith(phone: event.phone, isValid: _validateForm()));
    });
    on<BirthDateChanged>((event, emit) {
      emit(state.copyWith(birthDate: event.birthDate, isValid: _validateForm()));
    });
    on<CountryChanged>((event, emit) {
      emit(state.copyWith(country: event.country, isValid: _validateForm()));
    });
    on<RfcChanged>((event, emit) {
      emit(state.copyWith(rfc: event.rfc, isValid: _validateForm()));
    });
    on<TermsAcceptedChanged>((event, emit) {
      emit(state.copyWith(termsAccepted: event.termsAccepted, isValid: _validateForm()));
    });
    on<FormSubmitted>((event, emit) {
      if (state.isValid) {
        // Handle form submission logic
      }
    });
  }

  bool _validateForm() {
    return state.name.isNotEmpty &&
        state.surname.isNotEmpty &&
        state.email.isNotEmpty &&
        state.phone.isNotEmpty &&
        state.birthDate != null &&
        state.country.isNotEmpty &&
        state.rfc.isNotEmpty &&
        state.termsAccepted;
  }
}
