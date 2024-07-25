import 'package:fin_glow/presentation/widgets/BarChartSample1.dart';
import 'package:flutter/material.dart';

class MensualWidget extends StatelessWidget {
  const MensualWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 1),
          const Text(
            'Periodo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                AssetImage('assets/icons/icon14.png'),
                size: 30,
                color: Colors.white,
              ),
              Text(
                'Feb 2023',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                ' -',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              ImageIcon(
                AssetImage('assets/icons/icon14.png'),
                size: 30,
                color: Colors.white,
              ),
              Text(
                'Marzo 2024',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAmountIndicator('Ingresos', '\$80,200.00', Colors.blue),
              const SizedBox(width: 120),
              _buildAmountIndicator('Egresos', '-\$35,229.00', Colors.teal),
            ],
          ),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.white,
            thickness: 2.0,
            height:
                2.0, // Divider thickness and the space it occupies in the main axis.
          ),
          const SizedBox(height: 1),
          const BarChartSample1(),
        ],
      ),
    );
  }

  Widget _buildAmountIndicator(String label, String amount, Color color) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.square_rounded, color: color, size: 20.0),
            const SizedBox(width: 8.0),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          amount,
          style: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
