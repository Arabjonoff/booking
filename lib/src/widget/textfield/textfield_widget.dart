import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController  controller;
  const TextFieldWidget({Key? key, required this.hintText, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 20*w,vertical: 15*h),
      width: MediaQuery.of(context).size.width,
      height: 50*h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.grey
      ),
      child: TextField(
        controller: controller,
      ),
    );
  }
}
