
import 'package:flutter/material.dart';

class PositionIntro extends StatelessWidget {
  const PositionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      Positioned(
        height: 71,
        width: 102,
        top: 270,
        right: 50,
        child: Image.asset(
          'assets/kisspng-hamburger-fried-chicken-chicken-sandwich-fast-food-hamburger-5a694e36561572.4592676415168507423526.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      ///small point grey
      Positioned(
        width: 10,
        top: 200,
        right: 50,
        child: Image.asset(
          'assets/Path 2698.png',

          fit: BoxFit.cover,
        ),
      ),
      ///small point grey
      Positioned(
        width: 10,
        top: 150,
        right: 250,
        child: Image.asset(
          'assets/Path 2698.png',

          fit: BoxFit.cover,
        ),
      ),
      ///small point grey
      Positioned(
        width: 15,
        top: 120,
        left: 50,
        child: Image.asset(
          'assets/Path 2698.png',

          fit: BoxFit.cover,
        ),
      ),
      ///small point grey
      Positioned(
        width: 15,
        top: 420,
        left: 50,
        child: Image.asset(
          'assets/Path 2698.png',

          fit: BoxFit.cover,
        ),
      ),
      ///small point grey
      Positioned(
        width: 10,
        top: 420,
        right: 90,
        child: Image.asset(
          'assets/Path 2697.png',

          fit: BoxFit.cover,
        ),
      ),
      ///small point orange
      Positioned(
        width: 18,
        top: 270,
        right: 200,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      ///small point orange
      Positioned(
        width: 7,
        top: 80,
        left: 110,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      ///small point orange
      Positioned(
        width: 10,
        top: 80,
        right: 110,
        child: Image.asset(
          'assets/Path 2698.png',
          fit: BoxFit.cover,
        ),
      ),
      ///small point orange
      Positioned(
        width: 10,
        top: 230,
        right: 340,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      ///small point orange
      Positioned(
        width: 10,
        top: 150,
        right: 150,
        child: Image.asset(
          'assets/Path 2697.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        height: 71,
        width: 90,
        top: 320,
        left: 20,
        child: Image.asset(
          'assets/Layer 1.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        height: 71,
        width: 60,
        top: 370,
        right: 20,
        child: Image.asset(
          'assets/juice_PNG7153.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        height: 71,
        width: 60,
        top: 250,
        left: 100,
        child: Image.asset(
          'assets/18-186908_salad-png-clipart-toss-salad-png-removebg-preview.png',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    ],);
  }
}
