// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:FinGlow/presentation/views/basic_card.dart';
import 'package:FinGlow/presentation/views/gold_card.dart';

class CardCarouselWidget extends StatelessWidget {
  final List<String> cardImages = [
    'assets/images/Tarjeta_Basic_virtual.png',
    'assets/images/Tarjeta_Gold_virtual.png',
  ];

  CardCarouselWidget({Key? key, required void Function(int index) onCardTapped})
      : super(key: key);

  void onCardTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BasicCardView()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GoldCardView()),
        );
        break;
      default:
        // ignore: avoid_print
        print("Tarjeta no reconocida");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSingleImage = cardImages.length == 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 16.0),
          child: Text(
            'Tarjeta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        CarouselSlider.builder(
          itemCount: isSingleImage
              ? 1
              : cardImages
                  .length,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {},
            scrollPhysics: isSingleImage
                ? const NeverScrollableScrollPhysics()
                : const ScrollPhysics(),
          ),
          itemBuilder: (context, index, realIdx) {
            return GestureDetector(
              onTap: () => onCardTapped(context, index),
              child: Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color.fromRGBO(64, 162, 241, 150), width: 2.0),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(
                    cardImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
