import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krsonline/app/constant/color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/riwayat_controller.dart';

class RiwayatView extends GetView<RiwayatController> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    int history = 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(
            Icons.arrow_back,
            color: appPrimary9,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: appPrimary9,
              ))
        ],
        title: Text(
          "Input Mata Kuliah",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appPrimaryC),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: SafeArea(
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 0.03 * sizeHeight),
                height: 0.08 * sizeHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: appPrimary9,
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 0.06 * sizeHeight,
                          width: 0.25 * sizeWidth,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/deco/transaction.png"))),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Berhasil",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: appPrimaryC),
                              ),
                            ),
                            Text("Pembayaran Angsuran 1",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: appPrimary2),
                                ))
                          ],
                        ),
                        SizedBox(
                          width: 0.05 * sizeWidth,
                        ),
                        Text("Rp 9 50.000",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: appPrimaryC),
                            ))
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
