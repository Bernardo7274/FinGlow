// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:fin_glow/domain/usecases/Login/login_form_data.dart';
import 'package:fin_glow/presentation/bloc/Login/login_event.dart';
import 'package:fin_glow/presentation/bloc/Login/login_state.dart';
import 'package:fin_glow/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginData submitLogin;
  final BuildContext context;

  LoginBloc(this.submitLogin, this.context) : super(LoginInitial()) {
    on<SubmitLoginEvent>((event, emit) async {
      emit(LoginLoading());
      try{
        await submitLogin(event.login);
        emit(LoginSuccess());
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
      } catch (e) {
        emit(LoginError('Failed to login'));
      }
    });
  }
}