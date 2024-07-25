import 'package:fin_glow/presentation/views/transfer_accountFG.dart';
import 'package:fin_glow/presentation/widgets/name_list.dart';
import 'package:fin_glow/presentation/widgets/transfer_option_box.dart';
import 'package:flutter/material.dart';

class TransferMoneyView extends StatefulWidget {
  const TransferMoneyView({super.key});

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
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(
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
              const SizedBox(height: 20),
              Center(
                child: Container(
                  child: TransferOptionBox(
                    title1: 'A cuenta fin_glow',
                    subtitle1: 'Con e-mail celular o contacto',
                    title2: 'A cuenta bancaria o digital',
                    subtitle2: 'Con CLABE o tarjeta',
                    onTap1: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TransferAccountFG(),
                        ),
                      );                    },
                    onTap2: () {
                      // Acción cuando se toca la opción 2
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                child: const Padding(
                  padding: EdgeInsets.only(left: 16.0),
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
                child: const NameList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
