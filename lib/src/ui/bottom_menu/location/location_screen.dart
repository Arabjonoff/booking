import 'package:booking/src/app_theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter/services.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColor.black,
        backgroundColor: AppColor.bg,
        title: Text('Joylashuv'),
      ),
      body: Column(
        children: [
          Expanded(
            child: YandexMap(

          ),),
        ],
      ),
    );
  }
}
