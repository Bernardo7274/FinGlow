import 'package:flutter/material.dart';

class PaymentscheduleButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const PaymentscheduleButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0, bottom: 8.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icon11.png', // Replace with your image path
                  width: 40.0, // Set the image size
                  height: 40.0, // Set the image size
                ),
                const SizedBox(width: 8.0),
                const Text(
                  'Programación de Pagos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
