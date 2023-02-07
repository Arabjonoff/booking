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

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  TabController? _tabBarController;

  @override
  initState() {
    _tabBarController = TabController(length: data.length, vsync: this);
    super.initState();
  }
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
            height: 50 * h,
            child: TabBar(
              unselectedLabelColor: AppColor.black.withOpacity(0.5),
              padding: EdgeInsets.only(left: 16 * w, top: 7 * w),
              isScrollable: true,
              indicatorColor: AppColor.blue,
              labelColor: AppColor.white,
              indicator: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: AppColor.blue,
              ),
              labelStyle: TextStyle(
                fontSize: 20 * h,
              ),
              controller: _tabBarController,
              tabs: data.map((e) {
                return Tab(
                  text: e,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
