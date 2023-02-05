import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/app_theme/style.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  List data = [
    'Faol buyurtmalar ',
    'O\'tib ketgan buyurtmalar',
    'Bekor qilingan buyurtmalar',
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Asosiy'),
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
    );
  }
}
