import 'package:flutter/material.dart';
import 'package:FinGlow/presentation/views/movement_history.dart';
import 'package:FinGlow/presentation/views/movement_info.dart';

class LastMovementsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> movements = [
    {
      "title": "Movimiento FinGlow",
      "date": "14 de febrero",
      "amount": -2350.00,
      "unknownIconText": "Movimiento FinGlow",
      "shareIconText": "14 de febrero",
      "withdrawalAccount": "adam.rom72@gmail.com",
      "movementType": "Operation",
      "operationDate": "14 de febrero",
      "applicationDate": "14 de febrero",
      "folio": "MF2350FEB14"
    },
    {
      "title": "Transferencia interbancaria",
      "date": "29 de enero",
      "amount": -4200.00,
      "unknownIconText": "Transferencia interbancaria",
      "shareIconText": "29 de enero",
      "withdrawalAccount": "-4200.00",
      "movementType": "Transfer",
      "operationDate": "29 de enero",
      "applicationDate": "29 de enero",
      "folio": "TI4200ENE29"
    },
    {
      "title": "Pago de servicio",
      "date": "14 de enero",
      "amount": -700.00,
      "unknownIconText": "Pago de servicio",
      "shareIconText": "14 de enero",
      "withdrawalAccount": "-700.00",
      "movementType": "Payment",
      "operationDate": "14 de enero",
      "applicationDate": "14 de enero",
      "folio": "PS700ENE14"
    },
    {
      "title": "Transferencia interbancaria",
      "date": "06 de enero",
      "amount": -1500.00,
      "unknownIconText": "Transferencia interbancaria",
      "shareIconText": "06 de enero",
      "withdrawalAccount": "-1500.00",
      "movementType": "Transfer",
      "operationDate": "06 de enero",
      "applicationDate": "06 de enero",
      "folio": "TI1500ENE06"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    MaterialPageRoute(builder: (context) => MovementHistoryView(movements: movements)),
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
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: movements.length,
            itemBuilder: (context, index) {
              final movement = movements[index];
              return Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 0.1,
                    ),
                    title: Text(
                      movement['title'],
                      style: const TextStyle(
                        color: Color.fromRGBO(34, 221, 187, 1),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      movement['date'],
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      movement['amount'].toString(),
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
                            title: movement['title'],
                            date: movement['date'],
                            amount: movement['amount'],
                            unknownIconText: movement['unknownIconText'],
                            shareIconText: movement['shareIconText'],
                            withdrawalAccount: movement['withdrawalAccount'],
                            movementType: movement['movementType'],
                            operationDate: movement['operationDate'],
                            applicationDate: movement['applicationDate'],
                            folio: movement['folio'],
                          ),
                        ),
                      );
                    },
                  ),
                  if (index < movements.length - 1)
                    const Divider(
                      color: Color.fromRGBO(64, 162, 241, 1),
                      height: 0.5,
                      thickness: 2,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
