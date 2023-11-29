import 'package:flutter/material.dart';
class TextFaildPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18,right: 18,top: 5,bottom: 5),
          child: PasswordTextField(
            hintText: '   password',
          ),
        ),
      ],
    );
  }
}
class PasswordTextField extends StatefulWidget {
  final String hintText;

  PasswordTextField({required this.hintText});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}
class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 372,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 2.0, // سمك الحدود عند التركيز
            ),
          ),
         // contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
         fillColor: Colors.white,
          hintText: widget.hintText,
          suffixIcon: IconButton(
            icon: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
