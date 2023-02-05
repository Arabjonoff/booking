import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:booking/src/widget/booking/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _index = 0;
  List data = [
    'Samovarlar',
    'Shifoxonalar',
    'Kafe va Restoranlar',
    'Mashhulot zallar',
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Band qilish'),
        foregroundColor: AppColor.black,
        backgroundColor: AppColor.bg,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/saved.svg'),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight * h),
          child: SizedBox(
            height: 45 * h,
            child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5 * w),
                      padding: EdgeInsets.symmetric(horizontal: 20 * w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _index == index ? AppColor.blue : AppColor.grey,
                      ),
                      child: Center(
                          child: Text(
                        data[index],
                        style: Styles.regularh2(
                            _index == index ? AppColor.white : AppColor.black),
                      )),
                    ),
                  );
                }),
          ),
        ),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return BookingCardWidget(
          image: 'assets/images/img.png',
          name: 'Anhor choyxonasi',
          address: 'Andijon shahar, Boburshox ko’chasi',
          workingTime: 'workingTime',
        );
      }),
    );
  }
}
