import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OnboardScreen({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return  Scaffold(
      backgroundColor: AppColor.bg,
      body: Stack(
        children: [
          SizedBox(
            height: 484*w,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset(image,fit: BoxFit.cover,),
              ],
            )
          ),
          Padding(
            padding:  EdgeInsets.only(top: 412.0*h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 20*w),
                  child: SizedBox(
                    width: 240*w,
                      child: Text(title,style: TextStyle(fontSize: FontSize.s30,fontWeight: FontWeightManager.bold,color: AppColor.black),)),
                ),
                SizedBox(height: 20*h,),
                Padding(
                  padding: EdgeInsets.only(left: 20*w),
                  child: Text(subtitle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
