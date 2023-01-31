import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool color;
  final bool border;

  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color = true,
      this.border = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      height: 57 * h,
      margin: EdgeInsets.symmetric(horizontal: 20 * w),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed:onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.semiBold,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
