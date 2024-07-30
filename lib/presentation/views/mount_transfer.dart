import 'package:FinGlow/presentation/views/confirm_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MountTransferView extends StatefulWidget {
  final String name;

  const MountTransferView({Key? key, required this.name}) : super(key: key);

  @override
  State<MountTransferView> createState() => _MountTransferViewState();
}

class _MountTransferViewState extends State<MountTransferView> {
  String amount = '0.00'; // Definir la cantidad dentro del estado

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '¿Cuánto dinero quieres transferir?',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFC4C4C4),
                          child: Text(
                            widget.name.substring(0, 1).toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          widget.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 150,
                          child: _buildAmountTextField(amount, (value) {
                            setState(() {
                              amount = value;
                            });
                          }),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.0),
                          child: Text(
                            'Motivo',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 6.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF1E3559),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Ingrese el motivo',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Navegar a la vista confirm_transaction.dart
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ConfirmTransactionView(name: widget.name, amount: amount,),
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
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Continuar',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildAmountTextField(String amount, ValueChanged<String> onChanged) {
  return TextField(
    onTap: () {
      if (amount == '0.00') {
        onChanged('');
      }
    },
    keyboardType: TextInputType.number,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 32.0),
    decoration: InputDecoration(
      hintText: amount == '0.00' ? '' : '0.00',
      hintStyle: TextStyle(color: Colors.grey, fontSize: 32.0),
      border: InputBorder.none,
      counterText: '', // Elimina la visualización de contador
    ),
    onChanged: onChanged,
    controller: TextEditingController.fromValue(
      TextEditingValue(
        text: amount,
        selection: TextSelection.collapsed(offset: amount.length),
      ),
    ),
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
    ],
    maxLength: 6,
    maxLengthEnforcement: MaxLengthEnforcement.enforced,
  );
}
