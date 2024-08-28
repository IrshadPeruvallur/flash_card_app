import 'package:flash_card/view/home/widgets/flip_container.dart';
import 'package:flip_carousel/flip_carousel.dart';
import 'package:flutter/material.dart';

class FlipCarouselWidget extends StatelessWidget {
  const FlipCarouselWidget({
    super.key,
    required this.word,
    required this.meaning,
  });
  final String word;
  final String meaning;
  // List<dynamic> cardItems = ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlipCarousel(
      items: [
        FlipContainer(
          word: word,
        ),
        FlipContainer(
          isMeaning: true,
          word: meaning,
        ),
      ],
      transitionDuration: const Duration(milliseconds: 400),
      isAssetImage: false,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      width: size.width * 0.8,
      height: size.width * 0.8,
      perspectiveFactor: 0.002,
      layersGap: 10,
      onChange: (int pageIndex) {},
      onTap: () {},
    );
  }
}
