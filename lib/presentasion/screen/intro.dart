import 'package:flutter/material.dart';

import '../widget/intro/container2_intro.dart';
import '../widget/intro/image_intro.dart';
import '../widget/intro/position_intro.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 85, 86, 1),
        body: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: 1070,
        child: const Stack(
          alignment: Alignment.center,
          children: [
            ImageIntro(),
            PositionIntro(),
            Container2Intro(),
          ],
        ),
      ),
    );
  }
}
