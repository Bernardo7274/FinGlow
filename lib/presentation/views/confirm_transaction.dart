import 'package:FinGlow/presentation/views/transfer_success.dart';
import 'package:FinGlow/presentation/widgets/CardCarouselWidget.dart';
import 'package:flutter/material.dart';

class ConfirmTransactionView extends StatefulWidget {
  final String name;
  final String amount; // Nuevo parámetro para almacenar la cantidad

  const ConfirmTransactionView(
      {Key? key, required this.name, required this.amount})
      : super(key: key);

  @override
  State<ConfirmTransactionView> createState() => _ConfirmTransactionState();
}

class _ConfirmTransactionState extends State<ConfirmTransactionView> {
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
              // Botón de retroceso
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(), // Espacio para empujar el ícono hacia la izquierda
                ],
              ),
              // Contenido de la confirmación de transacción
              // Mostrar el nombre y la cantidad
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFC4C4C4),
                    radius: 36.0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF939BA8),
                      radius: 32.0,
                      child: Text(
                        widget.name.substring(0, 1).toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 220),
                  // Mostrar "Total" a la izquierda y la cantidad a la derecha
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$ ${widget.amount}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Agregar el widget CardCarouselWidget
                  CardCarouselWidget(onCardTapped: (index) {}),
                  SizedBox(height: 30),
                  // Botón de transferir
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => transferSuccessView(name: widget.name, amount: widget.amount,),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0A5959),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 100.0),
                      child: Text(
                        'Transferir',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
