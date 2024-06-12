import 'package:flutter/material.dart';

class UserRegister2 extends StatefulWidget {
  const UserRegister2({super.key});

  @override
  State<UserRegister2> createState() => _UserRegister2State();
}

class _UserRegister2State extends State<UserRegister2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(1, 19, 48, 1),
              Color.fromRGBO(4, 38, 92, 1),
            ],
            stops: [
              0.3,
              0.7,
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              color: const Color.fromRGBO(16, 57, 121, 1),
              width: double.infinity,
              height: 80,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: const <Widget>[
                    Text(
                      'INFORMACIÓN PERSONAL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '¡Cada dato cuenta! Completa el formulario y \nalcanza tus metas financieras.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color.fromRGBO(16, 57, 121, 1),
              width: double.infinity,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
