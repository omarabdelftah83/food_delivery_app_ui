
import 'package:flutter/material.dart';

class PositionVerify extends StatelessWidget {
  const PositionVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        width: 7,
        top: 170,
        right: 50,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        width: 10,
        top: 165,
        left: 50,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        width: 15,
        top: 65,
        right: 75,
        child: Image.asset(
          'assets/Path 2698.png',
          fit: BoxFit.cover,
        ),
      ),
    ],);
  }
}
