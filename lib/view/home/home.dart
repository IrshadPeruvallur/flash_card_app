import 'package:carousel_slider/carousel_slider.dart';
import 'package:flash_card/constants/colors.dart';
import 'package:flash_card/constants/words_list.dart';
import 'package:flash_card/controller/home_controller.dart';
import 'package:flash_card/view/chat/chat_screen.dart';
import 'package:flash_card/view/home/widgets/elaveted_button.dart';
import 'package:flash_card/view/home/widgets/flip_carousel.dart';
import 'package:flash_card/view/home/widgets/phrases_percent_indicator.dart';
import 'package:flash_card/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final homeController = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        leading:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        title: const CustomText(
          text: 'Flash Card',
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
          size: 20,
          color: whiteColor,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatScreen(),
                    ));
              },
              icon: const Icon(
                Icons.chat,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size.width * 1),
                bottomRight: Radius.circular(size.width * 1),
              ),
              // gradient: LinearGradient(
              //   colors: [Colors.purple, Colors.purpleAccent],
              // ),
            ),
          ),
          const SizedBox(height: 50),
          const PhrasesCircularPercentIndicatorWidget(),
          const SizedBox(height: 30),
          CarouselSlider.builder(
            itemCount: wordList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    FlipCarouselWidget(
              meaning: meaningList[itemIndex],
              word: wordList[itemIndex],
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              height: size.width * 0.8,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.all(size.width * 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButtonWidget(
                    size: size,
                    onPressed: () {
                      homeController.onTapPrevious();
                    },
                    text: 'Previos'),
                ElevatedButtonWidget(
                    size: size,
                    onPressed: () {
                      homeController.onTapNext(15);
                    },
                    text: 'Next')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
