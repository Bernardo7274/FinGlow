import 'package:FinGlow/data/repositories/Card/card_repository_impl.dart';
import 'package:FinGlow/domain/usecases/Card/card_usecase.dart';
import 'package:FinGlow/presentation/bloc/Card/card_bloc.dart';
import 'package:FinGlow/presentation/bloc/Card/card_event.dart';
import 'package:FinGlow/presentation/bloc/Card/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Importa Flutter Bloc para usar BlocProvider
import 'package:FinGlow/presentation/views/movement_history.dart';
import 'package:FinGlow/presentation/views/movement_info.dart';

class LastMovementsWidget extends StatelessWidget {
  const LastMovementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardBloc(LoadEventData(CardRepositoryImpl()))
        ..add(LoadCardDataEvent()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Move this to Column
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Últimos movimientos',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const MovementHistoryView(movements: [])),
                    );
                  },
                  child: const Text(
                    'Ver todos',
                    style: TextStyle(
                      color: Color.fromRGBO(34, 221, 187, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(16, 57, 121, 150),
              border: Border.all(
                color: const Color.fromRGBO(64, 162, 241, 150),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: BlocBuilder<CardBloc, CardState>(
              builder: (context, state) {
                return Column(
                  children: [
                    movementTile(
                      context,
                      title: state.movementtype,
                      date: "${state.movementdate}",
                      amount: state.movementamount,
                      unknownIconText: "Movimiento FinGlow",
                      shareIconText: "14 de febrero",
                      withdrawalAccount: "adam.rom72@gmail.com",
                      movementType: "Operation",
                      operationDate: "14 de febrero",
                      applicationDate: "14 de febrero",
                      folio: "MF2350FEB14",
                    ),
                    const Divider(
                      color: Color.fromRGBO(64, 162, 241, 1),
                      height: 0.5,
                      thickness: 2,
                    ),
                    movementTile(
                      context,
                      title: "Transferencia interbancaria",
                      date: "29 de enero",
                      amount: -4200.00,
                      unknownIconText: "Transferencia interbancaria",
                      shareIconText: "29 de enero",
                      withdrawalAccount: "-4200.00",
                      movementType: "Transfer",
                      operationDate: "29 de enero",
                      applicationDate: "29 de enero",
                      folio: "TI4200ENE29",
                    ),
                    const Divider(
                      color: Color.fromRGBO(64, 162, 241, 1),
                      height: 0.5,
                      thickness: 2,
                    ),
                    movementTile(
                      context,
                      title: "Pago de servicio",
                      date: "14 de enero",
                      amount: -700.00,
                      unknownIconText: "Pago de servicio",
                      shareIconText: "14 de enero",
                      withdrawalAccount: "-700.00",
                      movementType: "Payment",
                      operationDate: "14 de enero",
                      applicationDate: "14 de enero",
                      folio: "PS700ENE14",
                    ),
                    const Divider(
                      color: Color.fromRGBO(64, 162, 241, 1),
                      height: 0.5,
                      thickness: 2,
                    ),
                    movementTile(
                      context,
                      title: "Transferencia interbancaria",
                      date: "06 de enero",
                      amount: -1500.00,
                      unknownIconText: "Transferencia interbancaria",
                      shareIconText: "06 de enero",
                      withdrawalAccount: "-1500.00",
                      movementType: "Transfer",
                      operationDate: "06 de enero",
                      applicationDate: "06 de enero",
                      folio: "TI1500ENE06",
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget movementTile(
    BuildContext context, {
    required String title,
    required String date,
    required double amount,
    required String unknownIconText,
    required String shareIconText,
    required String withdrawalAccount,
    required String movementType,
    required String operationDate,
    required String applicationDate,
    required String folio,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 0.1,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromRGBO(34, 221, 187, 1),
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        date,
        style: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 8,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        amount.toString(),
        style: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovementInfoView(
              title: title,
              date: date,
              amount: amount,
              unknownIconText: unknownIconText,
              shareIconText: shareIconText,
              withdrawalAccount: withdrawalAccount,
              movementType: movementType,
              operationDate: operationDate,
              applicationDate: applicationDate,
              folio: folio,
            ),
          ),
        );
      },
    );
  }
}
