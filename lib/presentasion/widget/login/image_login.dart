
import 'package:flutter/material.dart';

class ImageLogin extends StatelessWidget {
  const ImageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        height: screenHight*0.5,
        width: screenWidth*1,
        child: Center(
          child: Image.asset(
            'assets/Group 324.png',

            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
