import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg'),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/sms.svg'),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/add.svg'),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/location.svg'),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg'),label: ''),
        ],
      ),
    );
  }
}
