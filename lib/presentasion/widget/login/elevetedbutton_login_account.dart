import 'package:flutter/material.dart';

class ElevatedButton_LoginAccount extends StatelessWidget {
  const ElevatedButton_LoginAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 10,bottom: 10),
      child: Container(
        height: screenHight*0.09,
        width: screenWidth*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        child: ElevatedButton(
          onPressed: () {
            // إضافة الإجراء الذي تريده عند الضغط على الزر
          },
          style: ElevatedButton.styleFrom(
            // لون الخلفية
            primary: Colors.black,
            onPrimary: Colors.white, // لون النص
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(30.0), // تحديد حواف مستديرة
              // تحديد لون وعرض الحدود
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Login  to  account 😋 ',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
