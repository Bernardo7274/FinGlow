import 'package:FinGlow/presentation/views/transfer_accountFG.dart';
import 'package:FinGlow/presentation/widgets/name_list.dart';
import 'package:FinGlow/presentation/widgets/transfer_option_box.dart';
import 'package:flutter/material.dart';

class TransferMoneyView extends StatefulWidget {
  const TransferMoneyView({Key? key}) : super(key: key);

  @override
  State<TransferMoneyView> createState() => _TransferMoneyViewState();
}

class _TransferMoneyViewState extends State<TransferMoneyView> {
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
                        'Transferir Dinero',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TransferOptionBox(
                    title1: 'A cuenta FinGlow',
                    subtitle1: 'Con e-mail celular o contacto',
                    title2: 'A cuenta bancaria o digital',
                    subtitle2: 'Con CLABE o tarjeta',
                    onTap1: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TransferAccountFG(),
                        ),
                      );                    },
                    onTap2: () {
                      // Acción cuando se toca la opción 2
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Volver a transferir',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Envuelve el widget NameList en un Container
              Container(
                child: NameList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
