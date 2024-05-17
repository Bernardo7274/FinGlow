import 'package:flutter/material.dart';

class MovementInfoView extends StatelessWidget {
  final String title;
  final String date;
  final double amount;
  final String unknownIconText;
  final String shareIconText;
  final String withdrawalAccount;
  final String movementType;
  final String operationDate;
  final String applicationDate;
  final String folio;

  const MovementInfoView({
    required this.title,
    required this.date,
    required this.amount,
    required this.unknownIconText,
    required this.shareIconText,
    required this.withdrawalAccount,
    required this.movementType,
    required this.operationDate,
    required this.applicationDate,
    required this.folio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles del movimiento'),
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
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Card(
                color: Color.fromRGBO(5, 32, 74, 1),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildDetailRow(Icons.calendar_today, 'Fecha', date),
                      _buildDetailRow(Icons.attach_money, 'Monto', '\$ $amount'),
                      _buildDetailRow(Icons.account_balance_wallet, 'Cuenta de retiro', ' $withdrawalAccount'),
                      _buildDetailRow(Icons.category, 'Tipo de movimiento', movementType),
                      _buildDetailRow(Icons.schedule, 'Fecha de operación', operationDate),
                      _buildDetailRow(Icons.event_available, 'Fecha de aplicación', applicationDate),
                      _buildDetailRow(Icons.confirmation_number, 'Folio', folio),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIconButton(Icons.error_outline, unknownIconText),
                  _buildIconButton(Icons.share, shareIconText),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 28.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 20),
          SizedBox(width: 10),
          Expanded(
            child: Text(label, style: TextStyle(color: Colors.white70, fontSize: 16)),
          ),
          Text(value, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white, size: 30),
          onPressed: () {},
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
