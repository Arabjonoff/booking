import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  final color;
  final String text;
  final Function() onTap;
  final bool border;

  const ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.color,
      this.border = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColor.gradient1,
            AppColor.gradient2,
            AppColor.gradient3,
          ],
        ),
      ),
      height: 57 * w,
      margin: EdgeInsets.symmetric(horizontal: 20 * w),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.transparent,
            elevation: 1111),
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
