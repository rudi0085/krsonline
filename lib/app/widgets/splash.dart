import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: Center(
            child: Container(
              width: Get.width * 0.5,
              height: Get.width * 0.5,
              child: Image.asset("assets/logo/logo-splash.png"),
            ),
          )),
    );
  }
}
