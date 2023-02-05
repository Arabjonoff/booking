import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/ui/bottom_menu/booking/booking_screen.dart';
import 'package:booking/src/ui/bottom_menu/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/bottom_navigate/bottom_navigate_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
int _currentIndex = 0;
final _inactiveColor = Colors.red;

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: AppColor.bg,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: _currentIndex ==0?SvgPicture.asset('assets/active_icons/home.svg'):SvgPicture.asset('assets/icons/home.svg'),
          title: Text('Asosiy'),
          activeColor: AppColor.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: _currentIndex ==1?SvgPicture.asset('assets/active_icons/sms.svg'):SvgPicture.asset('assets/icons/sms.svg'),
          title: Text('Xabarlar'),
          activeColor: AppColor.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: _currentIndex ==2?SvgPicture.asset('assets/active_icons/add.svg'):SvgPicture.asset('assets/icons/add.svg'),
          title: Text(
            'Buyurtma ',
          ),
          activeColor: AppColor.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: _currentIndex ==3?SvgPicture.asset('assets/active_icons/location.svg'):SvgPicture.asset('assets/icons/location.svg'),
          title: Text(
            'Joylashuv ',
          ),
          activeColor: AppColor.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: _currentIndex ==4?SvgPicture.asset('assets/active_icons/profile.svg'):SvgPicture.asset('assets/icons/profile.svg'),
          title: Text(
            'Profile ',
          ),
          activeColor: AppColor.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),

      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
    const HomeScreen(),
      Container(
        alignment: Alignment.center,
        child: Text("Buyurtam",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      BookingScreen(),
      Container(
        alignment: Alignment.center,
        child: Text("LOtaipn",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}

