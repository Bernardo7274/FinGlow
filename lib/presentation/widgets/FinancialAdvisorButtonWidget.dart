import 'package:flutter/material.dart';

class FinancialAdvisorButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const FinancialAdvisorButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0, bottom: 30.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/icon8.png', // Replace with your image path
                  width: 40.0, // Set the image size
                  height: 40.0, // Set the image size
                ),
                const SizedBox(width: 8.0),
                const Text(
                  'Asesor financiero',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2.0,
            height: 2.0, // Divider thickness and the space it occupies in the main axis.
          ),
        ],
      ),
    );
  }
}
