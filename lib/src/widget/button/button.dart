import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:flutter/material.dart';

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
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: FontSize.s18,
              fontWeight: FontWeightManager.semiBold,
              color: AppColor.white,
          ),
        ));
  }
}
