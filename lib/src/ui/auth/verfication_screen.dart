import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';

class VerficationScreen extends StatelessWidget {
  const VerficationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tasdiqlash',style: Styles.boldH1(AppColor.black),),
            Center(child: Text('Tasdiqlash kodi +998912990123 raqmiga jonatildi',style: Styles.regularContent(AppColor.black),),),

            ButtonWidget(text: "Davom etish", onTap: (){}, color: AppColor.blue)
          ],
        ),
      ),
    );
  }
}
