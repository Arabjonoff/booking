import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool type;
  final TextEditingController  controller;
  const TextFieldWidget({Key? key, required this.hintText, required this.controller, this.type=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20*w,vertical: 10*h),
      padding: EdgeInsets.symmetric(horizontal: 20*w,),
      width: MediaQuery.of(context).size.width,
      height: 50*w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.grey
      ),
      child: TextField(
        keyboardType: type?TextInputType.number:TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none
        ),
        controller: controller,
      ),
    );
  }
}
