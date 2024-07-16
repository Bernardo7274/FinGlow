// ignore_for_file: library_private_types_in_public_api

import 'package:FinGlow/data/repositories/Login/login_respository_impl.dart';
import 'package:FinGlow/domain/usecases/Login/login_form_data.dart';
import 'package:FinGlow/presentation/bloc/Login/login_event.dart';
import 'package:FinGlow/presentation/bloc/Login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FinGlow/presentation/Bloc/Login/login_bloc.dart';
import 'package:FinGlow/domain/models/Login/login_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final loginRepository = LoginRepositoryImpl();
    final loginData = LoginData(loginRepository);

    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(loginData, context),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: 20.0),
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    if (state is LoginInitial) {
                      return buildForm(context);
                    } else if (state is LoginLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is LoginSuccess) {
                      return const Text('Sucess');
                    } else if (state is LoginError) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.message),
                          const SizedBox(height: 16),
                          buildForm(context),
                        ],
                      );
                    } else {
                      return Container();
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForm(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: const InputDecoration(
            labelText: 'Correo Electrónico',
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontFamily: 'Arial',
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(34, 221, 187, 1)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(34, 221, 187, 1)),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: passwordController,
          obscureText: !_passwordVisible,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontFamily: 'Arial',
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(34, 221, 187, 1)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(34, 221, 187, 1)),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  final user = LoginModel(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  BlocProvider.of<LoginBloc>(context)
                      .add(SubmitLoginEvent(user));
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
