import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:booking/src/widget/textfield/textfield_widget.dart';
import 'package:flutter/material.dart';

import '../../app_theme/style.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.black,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ro‘yxatdan o‘tish',style: Styles.boldH1(AppColor.black),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 12),
              child: Text('Avtorizatsiya qilish uchun quyidagi satrlarga ma’lumotlaringizni kiriting',textAlign: TextAlign.center,style: Styles.regularBody(AppColor.black),),
            ),
            TextFieldWidget(hintText: 'Ism', controller: controllerName),
            TextFieldWidget(hintText: 'Familya', controller: controllerName),
            TextFieldWidget(hintText: '9989', controller: controllerName),
            const SizedBox(height: 40,),
            ButtonWidget(text: 'Davom etish', onTap: (){
              Navigator.pushNamed(context, '/verfication');
            }, color: AppColor.blue)
          ],
        ),
      ),
    );
  }
}
