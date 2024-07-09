import 'package:FinGlow/domain/usecases/Login/login_form_data.dart' as usecase;
import 'package:FinGlow/presentation/Bloc/Login/login_event.dart';
import 'package:FinGlow/presentation/Bloc/Login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final usecase.LoginFormData loadLogin;

  LoginBloc(this.loadLogin) : super(const LoginState(email: '', password: '')) {
    on<LoadLoginDataEvent>((event, emit) async {
      final loginData = await loadLogin();
      emit(LoginState.fromModel(loginData));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }

  bool _validateForm() {
    return state.email.isNotEmpty && state.password.isNotEmpty;
  }
}