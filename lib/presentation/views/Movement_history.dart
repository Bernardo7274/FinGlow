import 'package:FinGlow/presentation/views/movement_info.dart';
import 'package:flutter/material.dart';

class MovementHistoryView extends StatelessWidget {
  final List<Map<String, dynamic>> movements;

  const MovementHistoryView({Key? key, required this.movements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de movimientos'),
        backgroundColor: Color.fromRGBO(1, 19, 48, 1),
      ),
      body: Container(
        decoration: BoxDecoration(
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
        child: ListView.builder(
          itemCount: movements.length,
          itemBuilder: (context, index) {
            final movement = movements[index];
            return ListTile(
              title: Text(
                movement['title'],
                style: TextStyle(
                  color: Color.fromRGBO(34, 221, 187, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                movement['date'],
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                movement['amount'].toString(),
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14,
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
            );
          },
        ),
      ),
    );
  }
}
