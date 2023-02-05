import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookingCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String workingTime;
  const BookingCardWidget({Key? key, required this.image, required this.name, required this.address, required this.workingTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16*w,vertical: 10*h),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200*h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image,fit: BoxFit.cover,)),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100*h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 40
                  )
                ],
                  gradient: const LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black38,
                    Colors.transparent,
                  ]
                )
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 18.0*w,top: 20*h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: Styles.regularH3(AppColor.white),),
                    Text(address,style: Styles.regularContent(AppColor.white)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
