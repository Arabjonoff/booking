import 'package:booking/src/utils/formart/phone_formartter.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:booking/src/widget/textfield/textfield_widget.dart';
import 'package:flutter/material.dart';
import '../../app_theme/app_color.dart';
import '../../app_theme/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Kirish',style: Styles.boldH1(AppColor.black),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 12),
              child: Text('Quyidagi satrga telefon raqamingizni kiriting',textAlign: TextAlign.center,style: Styles.regularContent(AppColor.black),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.grey,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text('+998',style: Styles.regularContent(AppColor.black),),
                  ),Expanded(child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      PhoneNumberTextInputFormatter()
                    ],
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Telfon raqam'
                    ),
                  ),)
                ],
              ),
            ),
            ButtonWidget(text: "Davom etish", onTap: (){}, color: AppColor.blue,)
          ],
        ),
      ),
    );
  }
}
