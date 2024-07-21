import 'package:flutter/material.dart';

class MenuDescuentosWidget extends StatelessWidget {
  final List<String> serviceImages = [
    'assets/images/servicio1.png',
    'assets/images/servicio2.png',
    'assets/images/servicio3.png',
    'assets/images/servicio4.png',
    'assets/images/servicio5.png',
    'assets/images/servicio6.png',
  ];

  final List<String> discounts = [
    '10% de descuento',
    '5% de descuento',
    '10% de descuento',
    '15% de descuento',
    '8% de descuento',
    '20% de descuento',
  ];

  MenuDescuentosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          '6 beneficios disponibles',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print('Presionaste el card con el: ${discounts[index]}');
              },
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Color.fromRGBO(64, 162, 241, 1), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      serviceImages[index],
                      // Control the size of the image
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      discounts[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
