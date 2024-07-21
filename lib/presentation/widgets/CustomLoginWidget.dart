// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:local_auth/local_auth.dart';
import 'package:intl/intl.dart';
import 'package:FinGlow/data/repositories/Login/login_respository_impl.dart';
import 'package:FinGlow/domain/usecases/Login/login_form_data.dart';
import 'package:FinGlow/presentation/bloc/Login/login_event.dart';
import 'package:FinGlow/presentation/bloc/Login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FinGlow/presentation/Bloc/Login/login_bloc.dart';
import 'package:FinGlow/domain/models/Login/login_model.dart';

class CustomLoginWidget extends StatefulWidget {
  final bool isAuthenticated;

  const CustomLoginWidget({super.key, required this.isAuthenticated});

  @override
  State<CustomLoginWidget> createState() => _CustomLoginWidgetState();
}

class _CustomLoginWidgetState extends State<CustomLoginWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LocalAuthentication auth = LocalAuthentication();
  bool _passwordVisible = false;
  final String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final String _expectedPassword = "123";

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginRepository = LoginRepositoryImpl();
    final loginData = LoginData(loginRepository);

    return BlocProvider(
      create: (context) => LoginBloc(loginData, context),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial || state is LoginError) {
            return buildForm(context, state is LoginError ? state.message : null);
          } else if (state is LoginLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoginSuccess) {
            return const Center(child: Text('Login Success'));
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildForm(BuildContext context, String? errorMessage) {
    return Column(
      children: <Widget>[
        if (errorMessage != null)
          Text(
            errorMessage,
            style: const TextStyle(color: Colors.red),
          ),
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: const InputDecoration(
            labelText: 'Correo Electrónico',
            labelStyle: TextStyle(
              color: Colors.white,
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
        TextFormField(
          controller: _passwordController,
          obscureText: !_passwordVisible,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: const TextStyle(
              color: Colors.white,
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
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_emailController.text.isEmpty ||
                  _passwordController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor, complete todos los campos.'),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }

              if (!EmailValidator.validate(_emailController.text)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        'Por favor, ingrese un correo electrónico válido.'),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }

              if (_passwordController.text == _expectedPassword) {
                if (!widget.isAuthenticated) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, autentifique su huella'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  final user = LoginModel(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  BlocProvider.of<LoginBloc>(context)
                      .add(SubmitLoginEvent(user));
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Contraseña incorrecta.'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0A5959),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Entrar',
                style: TextStyle(
                  fontFamily: 'Arial',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
      ],
    );
  }
}
