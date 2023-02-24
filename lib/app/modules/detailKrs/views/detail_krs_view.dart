import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';

class DetailKrsView extends StatefulWidget {
  const DetailKrsView({super.key});

  @override
  State<DetailKrsView> createState() => _DetailKrsViewState();
}

class _DetailKrsViewState extends State<DetailKrsView> {
  final _controller = PageController();
  PanelController _panelController = PanelController();
  int currentIndex = 0;

  void tapOpenPanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();

  void tapClosePanel() => _panelController.isPanelClosed
      ? _panelController.open()
      : _panelController.close();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: appPrimaryC,
              ))
        ],
        title: Text(
          "Detail KRS",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appPrimaryC),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/deco/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SlidingUpPanel(
                controller: _panelController,
                maxHeight: 0.8 * size.height,
                parallaxEnabled: true,
                minHeight: 0,
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: appPrimary10.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("NIM",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text(
                                      "17.0504.0021",
                                      style: TextStyle(
                                        color: appPrimary2,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Nama",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Pablo Setiawan",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jumlah MK",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("8",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jumlah SKS",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("19",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tahun Akademik",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("2021/2022",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tanggal KRS",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("15-Januari-2022",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.03 * size.height,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: appPrimary10.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jenis SP2",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Biaya Kuliah per Semester",
                                          style: TextStyle(
                                            color: appPrimary2,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "T. Informatika (S1)(R)",
                                          style: TextStyle(
                                            color: appPrimary2,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Biaya",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Rp 3.500.000,00",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Angsuran 1",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Rp 2.000.000,00",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 0.02 * size.height,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Angsuran 2",
                                        style: TextStyle(
                                          color: appPrimaryC,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Text("Rp 1.500.000,00",
                                        style: TextStyle(
                                          color: appPrimary2,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.03 * size.height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Detail",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  color: appPrimaryC,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: appPrimaryC,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.03 * size.height,
                        ),
                        Container(
                          height: 0.06 * size.height,
                          width: 0.9 * size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              tapOpenPanel();
                            },
                            child: Text("Konfirmasi"),
                            style: ElevatedButton.styleFrom(
                              primary: appPrimary2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.02 * size.height,
                        ),
                        Container(
                          height: 0.06 * size.height,
                          width: 0.9 * size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.HOME);
                            },
                            child: Text("Kembali Ke Beranda"),
                            style: ElevatedButton.styleFrom(
                              primary: appPrimary9,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                panelBuilder: (controller) {
                  return Container(
                    decoration: BoxDecoration(
                        color: appPrimaryC,
                        image: DecorationImage(
                            image: AssetImage("assets/deco/gradient2.png"),
                            alignment: Alignment.topRight,
                            fit: BoxFit.contain)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: tapOpenPanel,
                            child: Container(
                              height: 0.005 * size.height,
                              width: 0.05 * size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: appPrimary9),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Pembayaran",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 0.02 * size.height,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.uZQdLXEgBEvR2OkcVVbBMQHaFj?w=271&h=203&c=7&r=0&o=5&pid=1.7"),
                              ),
                              SizedBox(width: 0.05 * size.width),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, Pablo",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text("Teknik Informatika",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                  Text(
                                    "17.0504.0021",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.08 * size.height,
                          ),
                          Text(
                            "Pembayaran Angsuran Ke-1",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0.04 * size.height,
                          ),
                          Text(
                            "RP 860.000,00",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 0.04 * size.height,
                          ),
                          Text(
                            "pembayaran sebelum tanggal 23, Juli 2020",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 0.08 * size.height,
                          ),
                          Container(
                            height: 0.06 * size.height,
                            width: 0.95 * size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.offAllNamed(Routes.PEMBAYARAN);
                              },
                              child: Text(
                                "Bayar Sekarang",
                                style: TextStyle(color: Colors.black),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
