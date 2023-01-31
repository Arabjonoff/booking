import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';

class OnboardAuth extends StatelessWidget {
  const OnboardAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.bg,
      body: Stack(
        children: [
          Image.asset('assets/images/bgimage.png',fit: BoxFit.cover,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              decoration:  BoxDecoration(
                gradient: const LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ]
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
                    offset: const Offset(0,-50),
                    color: Colors.black.withOpacity(0.3)
                  )
                ],
                color: Colors.black
              ),
              child: Column(
                children: [
                  Text('Hush kelibsiz!',style: Styles.boldH1(AppColor.white),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Shaxsiy hisob bo’lsa kirish tugmasiga bosing.Profilingiz yoq bolsa ro’yhatdan o’ting.',style: Styles.regularBody(AppColor.white),),
                  ),
                  const Spacer(),
                  ButtonWidget(text: "Kirish", onTap: (){}),
                  const SizedBox(height: 20,),
                  ButtonWidget(text: "Ro'yhatdan o'tish", onTap: (){}),
                  const SizedBox(height: 34,),

                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
