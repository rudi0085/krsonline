import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/konfirmasi_controller.dart';

class KonfirmasiView extends GetView<KonfirmasiController> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.KRS),
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
                color: appPrimaryC,
              ))
        ],
        title: Text(
          "Konfirmasi",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appPrimaryC),
        ),
      ),
      body: Container(
        height: sizeHeight * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/deco/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Jumlah nilai IP anda 3,54, anda dapat mengambil maksimal 19 SKS",
                    style: TextStyle(
                        fontFamily: "Popins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.03 * sizeHeight,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohon Cek Kembali mata kuliah yang",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: appPrimary2),
                      ),
                      Text(
                        "anda ambil. Pastikan sesuai dengan",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: appPrimary2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "instruksi DPA",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: appPrimary2),
                          ),
                          SizedBox(
                            width: 0.04 * sizeWidth,
                          ),
                          Icon(
                            Icons.warning_rounded,
                            color: appRedDeActive,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.02 * sizeHeight,
                  ),
                  SizedBox(height: 400, child: SelectedData()),
                  SizedBox(
                    height: 0.019 * sizeHeight,
                  ),
                  Container(
                    height: 0.06 * sizeHeight,
                    width: 0.85 * sizeWidth,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(Routes.DETAIL_KRS);
                      },
                      child: Text("Konfirmasi"),
                      style: ElevatedButton.styleFrom(
                        primary: appPrimary2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
