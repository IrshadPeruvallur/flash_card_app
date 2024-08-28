import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.size,
    required this.onPressed,
    required this.text,
  });

  final Size size;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width * 0.09,
      width: size.width * 0.3,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(color: primaryColor)))),
        onPressed: onPressed,
        child: CustomText(text: text),
      ),
    );
  }
}
