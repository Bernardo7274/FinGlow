// ignore_for_file: file_names
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          '¡Bienvenido a FinGlow!',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Tu éxito financiero comienza hoy.',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        Image.asset(
          'assets/images/logo_vertical.png',
          width: 265,
          height: 242,
        ),
      ],
    );
  }
}
