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

class _BookingScreenState extends State<BookingScreen>
    with TickerProviderStateMixin {
  TabController? _tabBarController;

  @override
  initState() {
    _tabBarController = TabController(length: data.length, vsync: this);
    super.initState();
  }

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
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return BookingCardWidget(
                onTap: () {
                  Navigator.pushNamed(context, '/bookingDetail',
                      arguments: index);
                },
                image: 'assets/images/img.png',
                tag: index,
                name: 'Anhor choyxonasi',
                address: 'Andijon shahar, Boburshox ko’chasi',
                workingTime: 'workingTime',
              );
            }),
      ),
    );
  }
}
