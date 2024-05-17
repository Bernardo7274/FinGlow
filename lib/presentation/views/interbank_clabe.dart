import 'package:flutter/material.dart';

class InterbankClabeView extends StatefulWidget {
  const InterbankClabeView({super.key});

  @override
  State<InterbankClabeView> createState() => _InterbankClabeViewState();
}

class _InterbankClabeViewState extends State<InterbankClabeView> {
  int selectedIndex = 0;

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const <Widget>[
              Text(
                'CLABE Interbancaria',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(34, 221, 187, 1),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}