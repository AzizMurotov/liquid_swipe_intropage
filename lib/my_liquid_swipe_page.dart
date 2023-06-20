import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe_intropage/intro_page5.dart';

import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';
import 'intro_page4.dart';
class MyLiquidSwipePage extends StatefulWidget {
  static const String id = "my_liquid_swipe_page";
  const MyLiquidSwipePage({Key? key}) : super(key: key);

  @override
  State<MyLiquidSwipePage> createState() => _MyLiquidSwipePageState();
}

class _MyLiquidSwipePageState extends State<MyLiquidSwipePage> {
  List<Widget> _pages = [
    const IntroPage1(),
    const IntroPage2(),
    const IntroPage3(),
    const IntroPage4(),
    const IntroPage5(),
  ];
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: _pages,
      slideIconWidget:  const Icon(
        Icons.arrow_back_ios,
        size: 30,
      ),
      positionSlideIcon: 0.7,
      enableSideReveal: true,
      waveType: WaveType.liquidReveal,
      //fullTransitionValue: 770
      enableLoop: true,

    );
  }
}
