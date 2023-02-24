import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';
// import 'app/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
    return FutureBuilder(builder: (context, snapshot) {
      future:
      Future.delayed(Duration(seconds: 3));
      if (snapshot.connectionState == ConnectionState.waiting) {
        return SplashScreen();
      } else {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: Routes.LOGIN,
          getPages: AppPages.routes,
        );
      }
    });
  }
}
