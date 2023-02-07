import 'package:booking/src/app_theme/app_color.dart';
import 'package:booking/src/utils/utils.dart';
import 'package:booking/src/widget/button/button.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColor.black,
        backgroundColor: AppColor.bg,
        centerTitle: true,
        title: Text('Sana va Vaqt'),
      ),
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 354 * h,
                    margin: EdgeInsets.symmetric(horizontal: 20 * w,vertical: 20*w),
                    padding: EdgeInsets.all(5*w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white
                    ),
                    child: SfDateRangePicker(
                      selectionColor: AppColor.blue,
                      minDate: DateTime.now(),
                      maxDate: DateTime(2050),
                    ),
                  ),
                  Text('Sanani tanlang'),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 12 * w),
                          margin: EdgeInsets.only(left: 20 * w),
                          height: 50 * h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white),
                          child: TextField(
                            inputFormatters: [maskFormatter],
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.access_time_sharp),
                                border: InputBorder.none,
                                hintText: '00:00'),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(Icons.arrow_forward),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 12 * w),
                          margin: EdgeInsets.only(right: 20 * w),
                          height: 50 * h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.white),
                          child: TextField(
                            inputFormatters: [maskFormatter],
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.access_time_sharp),
                                border: InputBorder.none,
                                hintText: '00:00'),
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
      ),
    );
  }
}

var maskFormatter = MaskTextInputFormatter(
    mask: '##:##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
