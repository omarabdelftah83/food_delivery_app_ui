
import 'package:flutter/material.dart';

class Container2Intro extends StatelessWidget {
  const Container2Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 740,
          ),
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  32.0), // إضافة حواف مستديرة إذا كنت ترغب
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Positioned(
                    child: Image.asset(
                      'assets/Group 296.png',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Positioned(
                    child: Image.asset(
                      'assets/Foodizone.png',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Feeling Hungry ? ',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Let’s order right now ',
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(

                    'The fastest delivery service in the \n town,start ordering now ',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey,),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      // إضافة الإجراء الذي تريده عند الضغط على الزر
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(245, 71, 72,1), // لون الخلفية
                      onPrimary: Colors.white, // لون النص
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0), // تحديد حواف مستديرة
                        // تحديد لون وعرض الحدود
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Let’s Order 😋 ',style: TextStyle(fontWeight: FontWeight.w600),),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
    ;
  }
}
