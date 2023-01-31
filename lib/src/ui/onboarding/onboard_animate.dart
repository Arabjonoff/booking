import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/ui/onboarding/onboard_auth.dart';
import 'package:booking/src/ui/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widget/button/button.dart';

class OnboardAnimate extends StatefulWidget {
  const OnboardAnimate({Key? key}) : super(key: key);

  @override
  State<OnboardAnimate> createState() => _OnboardAnimateState();
}

class _OnboardAnimateState extends State<OnboardAnimate> {
  PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: Column(
        children: [
          Expanded(
              child: PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: const [
              OnboardScreen(
                image: 'assets/images/onboard.png',
                title: 'O‘zingizga qulay kunni tanlang',
                subtitle:
                    'O‘zingizga qulay kunni tanlang va band qilib qo‘ying. Barchasi oson va qulay',
              ),
              OnboardScreen(
                image: 'assets/images/onboard.png',
                title: 'O‘zingizga qulay kunni tanlang',
                subtitle:
                'O‘zingizga qulay kunni tanlang va band qilib qo‘ying. Barchasi oson va qulay',
              ),
              OnboardScreen(
                image: 'assets/images/onboard.png',
                title: 'O‘zingizga qulay kunni tanlang',
                subtitle:
                'O‘zingizga qulay kunni tanlang va band qilib qo‘ying. Barchasi oson va qulay',
              ),
            ],
          ),),
          Container(
            margin: const EdgeInsets.only(
              bottom: 44,
              left: 25,
              right: 25,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          ButtonWidget(text: 'Davom etish',    onTap: () {
            if (currentIndex == 0) {
              setState(() {
                currentIndex = 1;
                _pageController.animateToPage(
                  1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                // _pageController.jumpToPage(1);
              });
            } else if (currentIndex == 1) {
              setState(() {
                currentIndex = 2;
                _pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
                //_pageController.jumpToPage(2);
              });
            } else if (currentIndex == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OnboardAuth(),
                ),
              );
            }
          },),
          SizedBox(
            height: 34 * h,
          ),
        ],
      ),
    );
  }
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
      height: 9,
      width: isActive ? 28 : 9,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: isActive ? AppColor.blue : AppColor.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }

}
