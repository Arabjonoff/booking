import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingRoomScreen extends StatelessWidget {
  const BookingRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.black,
        backgroundColor: AppColor.bg,
        title: Text('Xonalar royxati'),
      ),
      backgroundColor: AppColor.bg,
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 16,mainAxisSpacing: 16),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/bookingRoomDetail',arguments: index);
            },
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        tag: index,
                          child: Image.asset('assets/images/img.png',fit: BoxFit.cover,))),
                ),
                Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: index !=2?Colors.black26:Colors.red.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: Text('$index-Xona',style: Styles.regularH3(AppColor.white),)),
                      Center(child: Text('10 kishilik',style: Styles.regularH3(AppColor.white),)),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
