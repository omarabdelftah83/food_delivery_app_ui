
import 'package:flutter/material.dart';

class TextFaildName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
         Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 18,right: 18,top: 10,bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
                  child: TextFieldWithIcon(
                    hintText: 'Your Phone Number',
                    icon: Icons.numbers,
                    borderColor: Colors.blue, // لون حدود الحقل
                    textColor: Colors.black, // لون النص
                    iconColor: Colors.black,
                    backgroundColor: Colors.white,// لون الأيقونة
                  ),
                ),
              ],
            ),
          ),


    );
  }
}

class TextFieldWithIcon extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color borderColor;
  final Color textColor;
  final Color iconColor;
  final Color backgroundColor;
  TextFieldWithIcon({
    required this.hintText,
    required this.icon,
    this.borderColor = Colors.white,
    this.textColor = Colors.black,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(

        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: iconColor,
        ),
        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(30.0,),
          borderSide: BorderSide(

            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: borderColor,
            width: 2.0, // سمك الحدود عند التركيز
          ),
        ),
        hintStyle: TextStyle(color: Colors.black38),
        fillColor: backgroundColor

      ),
      style: TextStyle(color: textColor),
    );
  }
}