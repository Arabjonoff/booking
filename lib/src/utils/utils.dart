import 'package:flutter/cupertino.dart';

class Utils{
  static double getWidth(BuildContext context) => MediaQuery.of(context).size.width / 428;
  static double getHeight(BuildContext context) => MediaQuery.of(context).size.height / 926;
}