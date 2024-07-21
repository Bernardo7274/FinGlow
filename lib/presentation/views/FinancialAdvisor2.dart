// ignore_for_file: file_names, non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';

class FinancialAdvisor2 extends StatefulWidget {
  const FinancialAdvisor2({super.key});

  @override
  State<FinancialAdvisor2> createState() => _FinancialAdvisor2ViewState();
}

class _FinancialAdvisor2ViewState extends State<FinancialAdvisor2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Llamada telefónica',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 19, 48, 1),
        elevation: 0,
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(1, 19, 48, 1),
              Color.fromRGBO(4, 38, 92, 1),
            ],
            stops: [0.3, 0.7],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/Chat_sup2.png'),
              const SizedBox(height: 20),
              const Text(
                'Te llamaremos al número +52 998 *** 1205',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color.fromRGBO(10, 106, 94, 1),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Continuar'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: const Text(
                  'Escribanme a otro número',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 229, 191, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
