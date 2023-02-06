import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BookingOrderScreen extends StatefulWidget {
  const BookingOrderScreen({Key? key}) : super(key: key);

  @override
  State<BookingOrderScreen> createState() => _BookingOrderScreenState();
}

class _BookingOrderScreenState extends State<BookingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 400,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 12*w),
                        margin: EdgeInsets.only(left: 20*w),
                        height: 50*h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white
                        ),
                        child: TextField(
                          inputFormatters: [
                            maskFormatter
                          ],
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.access_time_sharp),
                              border: InputBorder.none,
                            hintText: '00:00'
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(Icons.arrow_forward),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 12*w),
                        margin: EdgeInsets.only(right: 20*w),
                        height: 50*h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white
                        ),
                        child: TextField(
                          inputFormatters: [
                            maskFormatter
                          ],
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.access_time_sharp),
                              border: InputBorder.none,
                            hintText: '00:00'
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ButtonWidget(text: "Davom etish", onTap: () {}, color: Colors.black),
          SizedBox(
            height: 34 * h,
          )
        ],
      ),
    );
  }
}
var maskFormatter =  MaskTextInputFormatter(
    mask: '##:##',
    filter: { "#": RegExp(r'[0-9]') },
    type: MaskAutoCompletionType.lazy
);