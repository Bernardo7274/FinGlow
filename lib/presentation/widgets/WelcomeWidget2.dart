// ignore_for_file: file_names
import 'package:flutter/material.dart';

class WelcomeWidget2 extends StatelessWidget {
  const WelcomeWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          '¡Se parte de FinGlow!',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 13),
        const Text(
          'Regístrate y da el primer paso\nhacia tu libertad financiera.',
          textAlign: TextAlign.center,
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
        const SizedBox(height: 1),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 0.0), // Eliminamos el padding horizontal
          alignment: Alignment.topLeft, // Alineamos el contenido a la izquierda
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Aseguramos que los elementos en la columna estén alineados a la izquierda
            children: [
              Text(
                'IDENTIFÍCATE',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ingresa los siguientes datos para iniciar el proceso de contratación.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
