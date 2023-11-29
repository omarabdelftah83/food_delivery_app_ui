
import 'package:flutter/material.dart';

class ImageIntro extends StatelessWidget {
  const ImageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Image.asset(
        'assets/stupefied-handsome-male-driver-scooter-with-red-helmet-delivering-pizza-removebg.png',
        width: screenWidth * 0.7,
        height: screenHight * 0.5,
        fit: BoxFit.cover,
      ),
    );
  }
}
