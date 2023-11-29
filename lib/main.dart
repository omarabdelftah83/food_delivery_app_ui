import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/presentasion/screen/intro.dart';
import 'package:food_delivery_app_ui/presentasion/screen/login.dart';
import 'package:food_delivery_app_ui/presentasion/widget/verify/PinCodeAndKeyBord.dart';
import 'package:food_delivery_app_ui/presentasion/screen/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Verify(),
    );
  }
}

