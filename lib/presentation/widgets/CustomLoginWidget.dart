// ignore_for_file: file_names
import 'package:FinGlow/presentation/views/menubar.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:local_auth/local_auth.dart';
import 'package:intl/intl.dart';

class CustomLoginWidget extends StatefulWidget {
  final bool isAuthenticated;

  const CustomLoginWidget({Key? key, required this.isAuthenticated})
      : super(key: key);

  @override
  State<CustomLoginWidget> createState() => _CustomLoginWidgetState();
}

class _CustomLoginWidgetState extends State<CustomLoginWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LocalAuthentication auth = LocalAuthentication();
  bool _passwordVisible = false;
  final String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  //final String _expectedEmail = "correo@ejemplo.com";
  final String _expectedPassword = "123";

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
              // Verificación si los campos están vacíos
              if (_emailController.text.isEmpty ||
                  _passwordController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Por favor, complete todos los campos.'),
                    backgroundColor: Colors.red,
                  ),
                );
                return; // Salir si los campos están vacíos
              }

              // Validación del correo electrónico
              if (!EmailValidator.validate(_emailController.text)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                        'Por favor, ingrese un correo electrónico válido.'),
                    backgroundColor: Colors.red,
                  ),
                );
                return; // Salir si el correo no es válido
              }

              // Verificación de correo electrónico y contraseña esperados
              if (_passwordController.text == _expectedPassword) {
                // Si las credenciales son correctas, proceder con la lógica de autenticación
                if (!widget.isAuthenticated) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, autentifique su huella'),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  // Navegar a la vista de inicio si la autenticación es exitosa
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const MenubarView(),
                  ));
                }
              } else {
                // Si las credenciales no coinciden, mostrar un mensaje de error
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
