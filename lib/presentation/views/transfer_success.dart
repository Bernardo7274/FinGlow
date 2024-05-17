import 'package:FinGlow/presentation/views/menubar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class transferSuccessView extends StatefulWidget {
  final String name;
  final String amount;

  const transferSuccessView(
      {Key? key, required this.name, required this.amount})
      : super(key: key);

  @override
  State<transferSuccessView> createState() => _transferSuccessState();
}

// ignore: camel_case_types
class _transferSuccessState extends State<transferSuccessView> {
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
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenubarView(),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "¡Listo! Le transferiste a ${widget.name}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        CircleAvatar(
                          backgroundColor: const Color(0xFFC4C4C4),
                          radius: 36.0,
                          child: CircleAvatar(
                            backgroundColor: const Color(0xFF939BA8),
                            radius: 32.0,
                            child: Text(
                              widget.name.substring(0, 1).toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 90),
                    Text(
                      "\$${widget.amount}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/logo_icono.png',
                          height: 80,
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            "\nCon disponible en FinGlow Wallet.\n\nFinGlow procesó el pago, a nombre y por cuenta de FinGlow Wallet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => transferSuccessView(
                                name: widget.name,
                                amount: widget.amount,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A5959),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 30.0),
                          child: Text(
                            'Compartir comprobante',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Rectángulo horizontalmente redondeado con imagen de fondo y filtro negro
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 60),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/images/gasolina.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.5), // Opacidad del filtro negro
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Center(
                            child: Text(
                              'Cashback en Gasolina',
                              style: TextStyle(
                                color: Colors.white.withOpacity(
                                    0.8), // Opacidad del texto blanco
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    // Texto como botón para volver al inicio
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MenubarView(),
                            ),
                          );
                        },
                        child: const Text(
                          'Volver al inicio',
                          style: TextStyle(
                            color: Color.fromARGB(255, 64, 162, 241),
                            fontSize: 16,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
