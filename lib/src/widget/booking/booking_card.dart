import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BookingCardWidget extends StatelessWidget {
  final String image;
  final int tag;
  final String name;
  final String address;
  final String workingTime;
  final Function() onTap;
  const BookingCardWidget({Key? key, required this.image, required this.name, required this.address, required this.workingTime, required this.onTap, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16*w,vertical: 10*h),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220*h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    tag: tag,
                      child: Image.asset(image,fit: BoxFit.cover,))),
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
      ),
    );
  }
}
