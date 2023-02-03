import 'package:booking/src/ui/auth/register_screen.dart';
import 'package:booking/src/ui/auth/verfication_screen.dart';
import 'package:booking/src/ui/bottom_menu/main_screen.dart';
import 'package:booking/src/ui/onboarding/onboard_animate.dart';
import 'package:flutter/material.dart';

class RouterGenerator{
  Route? onGenerator(RouteSettings settings){
    var args = settings.arguments;
    switch(settings.name){
      case '/register':
        return _navigate( const RegisterScreen());
      case '/onboard':
        return _navigate( const OnboardAnimate());
      case '/verfication':
        return _navigate( const VerficationScreen());
      case '/main':
        return _navigate( const MainScreen());
    }
  }

}
_navigate(Widget screen) {
  return MaterialPageRoute(builder: (context) => screen);
}