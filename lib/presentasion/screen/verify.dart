import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/presentasion/widget/verify/PinCodeAndKeyBord.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widget/verify/Container_verify.dart';
import '../widget/verify/position_verify.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 85, 86, 1),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height:screenHight*0.49,
                child:  const Stack(

                  children: [
                    Center(child: PositionVerify()),
                    Center(child: ContainerVerify()),
                  ],
                ),
              ),

              PinCodeAndKeyBord()

            ],
          ),
        ),
      ),
    );
  }
}




































//key board...///
// class Keyboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Color customColor = const Color(0xFFFFA0A0);
//     return Container(
//       color: const Color(0xFFFFA0A0),
//       height: 300.0, // ارتفاع اللوحة
//       child: Padding(
//         padding: const EdgeInsets.only(left: 8, right: 8, top: 0),
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//             childAspectRatio: 2.4, // تعديل نسبة العرض إلى الارتفاع
//           ),
//           itemCount: 12,
//           itemBuilder: (context, index) {
//             Color textColor = Colors.black;
//             Color boxColor = Colors.white;
//
//             if (index == 9) {
//               boxColor = const Color(0xFFFFA0A0);
//             } else if (index == 11) {
//               boxColor = const Color(0xFFFFA0A0);
//             } else {
//               boxColor = Colors.white;
//             }
//
//             //
//             String buttonText = (index < 9)
//                 ? '${index + 1}'
//                 : (index == 10)
//                     ? '0'
//                     : (index == 11)
//                         ? 'DEL'
//                         : (index == 9)
//                             ? '+*#'
//                             : (index == 13)
//                                 ? 'DEL'
//                                 : '+';
//
//             return InkWell(
//               onTap: () {
//                 print('تم النقر على الزر $buttonText');
//               },
//               //text..//
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: boxColor,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Center(
//                   child: Text(
//                     ('$buttonText'),
//                     style: TextStyle(
//                       fontSize: 24.0,
//                       color: textColor,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
