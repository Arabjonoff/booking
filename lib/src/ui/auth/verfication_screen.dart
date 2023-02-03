import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerficationScreen extends StatelessWidget {
  const VerficationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColor.black,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Column(
          children: [
           Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Tasdiqlash',style: Styles.boldH1(AppColor.black),),
               Center(child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 38.0),
                 child: Text('Tasdiqlash kodi +998912990123 raqmiga jonatildi',textAlign: TextAlign.center,style: Styles.regularContent(AppColor.black),),
               ),),
               const SizedBox(height: 24,),
               Center(
                 child: Pinput(
                   controller: controller,
                   showCursor: true,
                   length: 5,
                   defaultPinTheme: defaultPinTheme,
                   focusedPinTheme: focusedPinTheme,
                   submittedPinTheme: submittedPinTheme,
                 ),
               ),
             ],
           )),
            ButtonWidget(text: "Davom etish", onTap: (){
              Navigator.pushNamed(context, '/main');
            }, color: AppColor.blue),
            const SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 50,
  height: 50,
  textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 24,
  ),
  decoration: BoxDecoration(
    boxShadow: const [
      BoxShadow(
          color: Color.fromRGBO(255, 255, 255, 0.1),
          offset: Offset(0,4)
      )
    ],
    color: AppColor.grey,
    borderRadius: BorderRadius.circular(10),
  ),
);
final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: AppColor.blue,
  ),
);
