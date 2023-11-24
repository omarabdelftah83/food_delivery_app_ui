import 'package:flutter/material.dart';

import '../widget/container2_intro.dart';
import '../widget/image_intro.dart';
import '../widget/position_intro.dart';

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
    return SingleChildScrollView(
      child: Container(
        height: 1110,
        child: const Stack(
          alignment: Alignment.center,
          children: [
            ImageIntro(),
            PositionIntro(),
            Container2Intro()
          ],
        ),
      ),
    );
  }
}
