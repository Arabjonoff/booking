import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/font_manager.dart';
import 'package:booking/src/app_theme/values_manager.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      padding: EdgeInsets.all(AppPadding.p10*h),
      width: MediaQuery.of(context).size.width,
      height: 100*h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColor.white
      ),
      child: Row(
        children: [
          Container(
            width: 80*h,
            height: 80*h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                placeholder: (context, url) => const CircularProgressIndicator.adaptive(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          Expanded(child: Column(
            children: [
              Text('data',style: TextStyle(color: AppColor.textColor,fontSize: FontSize.s20,fontWeight: FontWeightManager.semiBold,),),
              Text('data',style: TextStyle(color: AppColor.textColor.withOpacity(0.7),fontSize: FontSize.s12,fontWeight: FontWeightManager.medium,),),
            ],
          ),),
        ],
      ),
    );
  }
}
