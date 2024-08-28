import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isSent;
  final String message;

  const ChatBubble({
    super.key,
    required this.isSent,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          bottom: size.width * .03,
          top: size.width * .03,
          left: isSent ? size.width * .15 : size.width * .03,
          right: isSent ? size.width * .03 : size.width * .15),
      child: Align(
        alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
        child: Row(
          mainAxisAlignment:
              !isSent ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            !isSent
                ? const Image(
                    image: AssetImage('assets/icons/image.png'),
                    width: 30,
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(size.width * .05),
                decoration: BoxDecoration(
                  color: !isSent
                      ? const Color.fromARGB(255, 32, 27, 85)
                      : whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(size.width * 0.045),
                    bottomRight: Radius.circular(size.width * 0.045),
                    topLeft: isSent
                        ? Radius.circular(size.width * 0.045)
                        : Radius.circular(size.width * 0.01),
                    topRight: isSent
                        ? Radius.circular(size.width * 0.01)
                        : Radius.circular(size.width * 0.045),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: isSent
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: CustomText(
                        textAlign: /* isSent ? TextAlign.end : */
                            TextAlign.start,
                        text: message,
                        color: isSent ? Colors.black : Colors.white,
                      ),
                    )
                    // ReadMoreText(
                    //   message,
                    //   textAlign: TextAlign.justify,
                    //   trimLength: 300,
                    //   style: GoogleFonts.montserrat(
                    //     color: isSent ? Colors.black : Colors.white,
                    //     fontSize: 15,
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            isSent
                ? const CircleAvatar(
                    backgroundColor: primaryColor,
                    radius: 20,
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
