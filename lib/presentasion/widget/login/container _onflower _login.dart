
import 'package:flutter/material.dart';

class ContainerOnFlower extends StatelessWidget {
  const ContainerOnFlower({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 178,left: 52),
          child: Positioned(
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
        ),

      ],),
    );
  }
}
