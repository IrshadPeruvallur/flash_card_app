import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class FlipContainer extends StatelessWidget {
  const FlipContainer({
    this.isMeaning = false,
    this.word,
    super.key,
  });
  final String? word;
  final bool isMeaning;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            const LinearGradient(colors: [Colors.purple, Colors.purpleAccent]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: word ?? '',
            color: whiteColor,
            size: isMeaning ? 18 : 30,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.volume_down_outlined, color: Colors.white),
              CustomText(
                text: 'Ob.wi.o',
                color: whiteColor,
                size: 12,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 90,
            height: 70,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(whiteColor),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ))),
              onPressed: () {},
              child: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
