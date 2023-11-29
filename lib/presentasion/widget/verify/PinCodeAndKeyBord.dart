import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeAndKeyBord extends StatefulWidget {
  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeAndKeyBord> {
  late TextEditingController pinController;
  late FocusNode pinFocusNode;
  @override
  void initState() {
    super.initState();
    pinController = TextEditingController();
    pinFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45,top: 20),
                child: PinCodeTextField(
                  controller: pinController,
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.scale,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(16),
                    fieldHeight: 66,
                    fieldWidth: 66,
                    inactiveColor: Colors.white,
                    selectedColor: Colors.blue,
                    activeFillColor: Colors.blue,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.grey.shade100,
                    activeColor: Colors.green,
                  ),
                  onChanged: (pin) {
                    Future.delayed(Duration(milliseconds: 200), () {
                      FocusScope.of(context).unfocus();
                    });
                  },
                  // إضافة فوكس نود لربط الحقل مع لوحة المفاتيح
                  focusNode: pinFocusNode,
                ),
              ),
              Keyboardd(
                pinController: pinController,
                pinFocusNode: pinFocusNode,
              ),
            ],
          ),


    );
  }

  @override
  void dispose() {
    pinController.dispose();
    pinFocusNode.dispose();
    //_controller.dispose();
    super.dispose();
  }
}

class Keyboardd extends StatelessWidget {
  final TextEditingController pinController;
  final FocusNode pinFocusNode;

  Keyboardd({required this.pinController, required this.pinFocusNode});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    Color customColor = const Color(0xFFFFA0A0);

    return Container(
      color: const Color(0xFFFFA0A0),
      height: screenHight*0.4,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2.4,
          ),
          itemCount: 12,
          itemBuilder: (context, index) {
            Color textColor = Colors.black;
            Color boxColor = Colors.white;

            if (index == 9) {
              boxColor = const Color(0xFFFFA0A0);
            } else if (index == 11) {
              boxColor = const Color(0xFFFFA0A0);
            } else {
              boxColor = Colors.white;
            }

            String buttonText = (index < 9)
                ? '${index + 1}'
                : (index == 10)
                ? '0'
                : (index == 11)
                ? 'DEL'
                : (index == 9)
                ? '+*#'
                : (index == 13)
                ? 'DEL'
                : '+';

            return InkWell(
              onTap: () {
                print('تم النقر على الزر $buttonText');

                if (index == 11) {
                  // إذا كان الزر هو 'DEL'، قم بحذف الرمز من حقل النص
                  pinController.text = pinController.text.substring(0, pinController.text.length - 1);
                } else {
                  // إضافة الرمز المناسب إلى حقل النص
                  pinController.text += buttonText;
                }

                // قم بتغيير الفوكس نود للتبديل بين الحقلين
                FocusScope.of(context).requestFocus(pinFocusNode);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    ('$buttonText'),
                    style: TextStyle(
                      fontSize: 24.0,
                      color: textColor,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
