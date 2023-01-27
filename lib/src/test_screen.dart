import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
            color: Colors.blue
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Image.asset('assets/images/jk.png',),),
              Text('data')
            ],
          )
          ,
        ),
      ),

    );
  }
}
