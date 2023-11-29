import 'package:flutter/material.dart';
import '../widget/login/container _onflower _login.dart';
import '../widget/login/elevatedbutton_create_account.dart';
import '../widget/login/image_login.dart';
import '../widget/login/elevetedbutton_login_account.dart';
import '../widget/login/textfaild_name_login.dart';
import '../widget/login/textfaild_pass_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 85, 86, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: const Stack(
                children: [ImageLogin(), ContainerOnFlower()],
              ),
            ),
            TextFaildName(),
            TextFaildPass(),
            const ElevatedButton_LoginAccount(),
            const ElevatedButton_CreateAccount(),
            const SizedBox(
              height: 30,
            ),
            const InkWell(
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors
                      .white, // يمكنك تغيير هذه القيمة إلى اللون الذي ترغب فيه
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
