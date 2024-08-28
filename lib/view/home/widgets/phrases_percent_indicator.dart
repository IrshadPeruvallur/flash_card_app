import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PhrasesCircularPercentIndicatorWidget extends StatelessWidget {
  const PhrasesCircularPercentIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: 'Everyday Phrases',
          fontWeight: FontWeight.bold,
          size: 20,
        ),
        const SizedBox(width: 20),
        CircularPercentIndicator(
          radius: 45.0,
          lineWidth: 10.0,
          percent: 0.5,
          rotateLinearGradient: true,
          animation: true,
          animationDuration: 1000,
          curve: Curves.easeInBack,
          center: const Text(
            "5/15",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          progressColor: primaryColor,
        ),
      ],
    );
  }
}
