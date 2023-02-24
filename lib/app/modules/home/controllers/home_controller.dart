import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krsonline/app/modules/informasi/views/informasi_view.dart';
import 'package:krsonline/app/modules/profil/views/profil_view.dart';
import 'package:krsonline/app/modules/riwayat/views/riwayat_view.dart';
import 'package:krsonline/app/routes/app_pages.dart';
import '../../../constant/color.dart';
import '../widgets/home.dart';

class HomeController extends GetxController {
  RxInt indexWidget = 0.obs;

  void changeIndexButtonNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidget = [
    HomeWidget(),
    InformasiView(),
    RiwayatView(),
    ProfilView(),
  ];
}

class MyCard extends StatelessWidget {
  final String img;

  const MyCard({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 0.9 * sizeWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/banner/" + img), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12),
        color: appPrimaryC,
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  // final String icon1;
  // final String icon2;
  // final String icon3;
  // final String icon4;
  // final String icon5;
  // final String icon6;
  // final String icon7;
  // final String icon8;
  // const MyMenu({
  //   super.key,
  //   required this.icon1,
  //   required this.icon2,
  //   required this.icon3,
  //   required this.icon4,
  //   required this.icon5,
  //   required this.icon6,
  //   required this.icon7,
  //   required this.icon8,
  // });

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // Menu Code
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.KRS);
              },
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/krs.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.NILAI);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/nilai.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.JADWAL);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/jadwal.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.BTQ);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/ujianbtq.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        )),
        SizedBox(
          height: 10,
        ),
        //Menu Code
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SKRIPSI);
              },
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/skripsi.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.KKN);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/kkn.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.WISUDA);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/wisuda.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: (() {
                Get.toNamed(Routes.KERJAPRAKTIK);
              }),
              child: Container(
                height: 0.07 * sizeHeight,
                width: 0.10 * sizeWidth,
                child: Image(
                  image: AssetImage("assets/icon/kerjapraktik.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        )),

        // //
      ],
    );
  }
}
