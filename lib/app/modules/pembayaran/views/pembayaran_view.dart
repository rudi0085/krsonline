import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/pembayaran_controller.dart';

// class PembayaranView extends GetView<PembayaranController> {
//   @override
//   Widget build(BuildContext context) {

//   }
// }
class PembayaranView extends StatefulWidget {
  const PembayaranView({super.key});

  @override
  State<PembayaranView> createState() => _PembayaranViewState();
}

class _PembayaranViewState extends State<PembayaranView> {
  bool isVisibleBank = true;
  bool isVisibleVA = true;
  bool click1 = true;
  bool click2 = true;
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
            onPressed: () => Get.offAllNamed(Routes.HOME),
            icon: Icon(
              Icons.arrow_back,
              color: appPrimary9,
            ),
          ),
          title: Text(
            "Pembayaran",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: appPrimaryC),
          ),
        ),
        body: Container(
          height: 1 * sizeHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/deco/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Pembayaran",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: appPrimary2),
                        ),
                        Text("Rp 860.000,00",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: appPrimary2)),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/logo/logo-bjateng.png"),
                        SizedBox(
                          width: 0.04 * sizeWidth,
                        ),
                        Text(
                          "Bank Jateng (Dicek Otomatis)",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: appPrimaryC),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 0.4 * sizeWidth,
                            child: Text(
                              "No Virtual Account",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  color: appPrimary2),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("188 1705 0400 2100",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: appPrimaryC)),
                              Text("Salin",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      color: appPrimary2)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.height * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Petunjuk Pembayaran via Bank",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: appPrimaryC),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                click1 = !click1;
                                isVisibleBank = !isVisibleBank;
                              });
                            },
                            child: Icon(
                              (click1 == false)
                                  ? Icons.keyboard_arrow_down
                                  : Icons.keyboard_arrow_up,
                              size: 35,
                              color: appPrimaryC,
                            ),
                          )
                        ],
                      ),
                    ),
                    // Petunjuk Pembayaran BANK
                    Visibility(
                      visible: isVisibleBank,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Text("Datang ke Counter Bank Jateng Terdekat",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: appPrimaryC,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 320,
                                  child: Text("Ambil nomor Antrian",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: appPrimaryC,
                                          fontWeight: FontWeight.w600)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "3",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 0.7 * sizeWidth,
                                  child: Text(
                                    "Katakan jika anda ingin membayar kuliah dari Universitas Muhammadiyah Magelang",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: appPrimaryC,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 0.7 * sizeWidth,
                                  child: Text(
                                      "Petugas akan memberi tahu anda jumlah yang harus dibayarkan, Lalu bayar dan SELESAI",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: appPrimaryC,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Petunjuk Pembayaran via Transfer",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: appPrimaryC),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              click2 = !click2;
                              isVisibleVA = !isVisibleVA;
                            });
                          },
                          child: Icon(
                            (click1 == false)
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            size: 35,
                            color: appPrimaryC,
                          ),
                        )
                      ],
                    ),
                    // Petunjuk pembayaran Vitrtual Acc
                    Visibility(
                      visible: isVisibleVA,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Text("Pilih m-Transfer > Virtual Account",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: appPrimaryC,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "2",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 320,
                                  child: Text(
                                      "Masukan nomor Virtual Account 188 1705 0400 2100",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: appPrimaryC,
                                          fontWeight: FontWeight.w600)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "3",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 0.7 * sizeWidth,
                                  child: Text(
                                    "Periksa informasi yang tertera, pastikan semua data yang ditampilkan sesuai.",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        color: appPrimaryC,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 0.027 * sizeHeight,
                                      width: 0.05 * sizeWidth,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: appPrimary3,
                                      ),
                                    ),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: appPrimary11),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 0.03 * sizeWidth,
                                ),
                                Container(
                                  width: 0.7 * sizeWidth,
                                  child: Text(
                                      "Jika sudah benar, tekan kirim > masukan PIN dan pilih OK",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 16,
                                          color: appPrimaryC,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.052 * sizeHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 0.052 * sizeHeight,
                          width: 0.4 * sizeWidth,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: appPrimary9,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Get.offAllNamed(Routes.HOME);
                            },
                            child: Text(
                              "Ubah Pembayaran",
                            ),
                          ),
                        ),
                        Container(
                          height: 0.052 * sizeHeight,
                          width: 0.4 * sizeWidth,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: appPrimaryC,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Get.offAllNamed(Routes.NOTIFIKASI);
                            },
                            child: Text("Selesai"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
