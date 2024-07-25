// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardCarouselWidget2 extends StatefulWidget {
  final List<String> cardImages = [
    "assets/images/Publicidad fin_glow.png",
    "assets/images/Publicidad fin_glow(1).png",
    "assets/images/Publicidad fin_glow(2).png",
    "assets/images/Publicidad fin_glow(3).png",
    "assets/images/Publicidad fin_glow(4).png",
    "assets/images/Publicidad fin_glow(5).png",
  ];

 CardCarouselWidget2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CardCarouselWidget2State createState() => _CardCarouselWidget2State();
}

class _CardCarouselWidget2State extends State<CardCarouselWidget2> {

  @override
  Widget build(BuildContext context) {
    bool isSingleImage = widget.cardImages.length == 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        CarouselSlider.builder(
          itemCount: isSingleImage ? 1 : widget.cardImages.length,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
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
              child: Container(
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromRGBO(64, 162, 241, 150),
                      width: 2.0),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(
                    widget.cardImages[index],
                    width: 250,
                    height: 70,
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
