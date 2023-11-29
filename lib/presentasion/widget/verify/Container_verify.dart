
import 'package:flutter/material.dart';

class ContainerVerify extends StatelessWidget {
  const ContainerVerify({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Container(
      child: Column(
        children: [
          //photo ...///
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Image.asset('assets/icon.png'),
          ),
          //text...///
          const Padding(
            padding: EdgeInsets.only(top: 45),
            child: Text(
              'Verification code',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          //text...///
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'We sent you a Verification code to your\n  mobile number',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),

        ],
      ),
    );
  }
}
