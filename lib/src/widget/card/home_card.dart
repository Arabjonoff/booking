import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:booking/src/app_theme/values_manager.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getWidth(context);
    double w = Utils.getHeight(context);
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppMargin.m20*w,vertical: AppMargin.m8*h),
        width: MediaQuery.of(context).size.width,
        height: 194 * h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: AppColor.white),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 120 * h,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'name',
                    fit: BoxFit.cover,
                  )),
            ),
            Text(
              'data',
              style: TextStyle(
                fontSize: FontSize.s20,
                fontWeight: FontWeightManager.semiBold,
                color: AppColor.textColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
