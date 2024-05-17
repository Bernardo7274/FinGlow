import 'package:flutter/material.dart';

class DepositMoneyView extends StatefulWidget {
  const DepositMoneyView({super.key});

  @override
  State<DepositMoneyView> createState() => _DepositMoneyViewState();
}

class _DepositMoneyViewState extends State<DepositMoneyView> {
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
                'Ingresar Dinero',
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