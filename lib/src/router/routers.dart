import 'package:booking/src/ui/auth/login_screen.dart';
import 'package:booking/src/ui/auth/register_screen.dart';
import 'package:booking/src/ui/auth/verfication_screen.dart';
import 'package:booking/src/ui/bottom_menu/booking/booking_detail_screen.dart';
import 'package:booking/src/ui/bottom_menu/booking/booking_room_detail.dart';
import 'package:booking/src/ui/bottom_menu/main_screen.dart';
import 'package:booking/src/ui/onboarding/onboard_animate.dart';
import 'package:flutter/material.dart';

import '../ui/bottom_menu/booking/booking_room.dart';

class RouterGenerator{
  Route? onGenerator(RouteSettings settings){
    var args = settings.arguments;
    switch(settings.name){
      case '/register':
        return _navigate( const RegisterScreen());
      case '/login':
        return _navigate( LoginScreen());
      case '/onboard':
        return _navigate( const OnboardAnimate());
      case '/verfication':
        return _navigate( const VerficationScreen());
      case '/main':
        return _navigate( const MainScreen());
      case '/bookingRoom':
        return _navigate( const BookingRoomScreen());
      case '/bookingDetail':
        return _navigate(  BookingDetailScreen(tag: args as int,));
      case '/bookingRoomDetail':
        return _navigate(  BookingRoomDetailScreen(tag: args as int,));
    }
  }

}
_navigate(Widget screen) {
  return MaterialPageRoute(builder: (context) => screen);
}