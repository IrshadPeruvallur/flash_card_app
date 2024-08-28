import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/constants/words_list.dart';
import 'package:flash_card/view/chat/widget/chat_bubble.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 248, 255),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Row(
          children: [
            Image(
              image: AssetImage('assets/icons/image.png'),
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'JOHN DOE'),
                CustomText(
                  text: 'Online',
                  size: 12,
                  color: primaryColor,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Expanded(
        child: ListView.builder(
            itemCount: messageList.length,
            itemBuilder: (context, index) => ChatBubble(
                  isSent: index / 2 == 1,
                  message: messageList[index],
                )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(Icons.keyboard_alt_outlined, size: 30),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/icons/image.png'),
              width: 50,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 30),
        ],
        onTap: (index) {},
      ),
    );
  }
}
