
import 'package:flutter/material.dart';

class ImageIntro extends StatelessWidget {
  const ImageIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/stupefied-handsome-male-driver-scooter-with-red-helmet-delivering-pizza-removebg.png',
        // استبدل بمسار الصورة في مشروعك
        width: 500,
        height: 423,
        fit: BoxFit.cover,
      ),
    );
  }
}
