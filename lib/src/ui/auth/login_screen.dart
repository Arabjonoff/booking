import 'package:booking/src/utils/utils.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../app_theme/app_color.dart';
import '../../app_theme/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child:Column(
          children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Kirish',style: Styles.boldH1(AppColor.black),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 12),
                child: Text('Quyidagi satrga telefon raqamingizni kiriting',textAlign: TextAlign.center,style: Styles.regularContent(AppColor.black),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20*w),
                width: MediaQuery.of(context).size.width,
                height: 50*w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.grey,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0*w),
                      child: Text('+998',style: TextStyle(fontSize: 16*h),),
                    ),Expanded(child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [maskFormatter],
                      controller: controller,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Telfon raqam'
                      ),
                    ),)
                  ],
                ),
              ),
            ],
          ),),
            ButtonWidget(text: "Davom etish", onTap: (){
              Navigator.pushNamed(context, '/verfication');
            }, color: AppColor.blue,),
            SizedBox(height: 34*h,),
          ],
        ),
      ),
    );
  }
}
var maskFormatter =  MaskTextInputFormatter(
    mask: '(##) ###-##-##',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
);
