import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:krsonline/app/constant/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeWidget extends StatefulWidget {
  // const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _controller = PageController();
  PanelController _panelController = PanelController();
  int currentIndex = 0;

  void tapClosePanel() => _panelController.isPanelOpen
      ? _panelController.close()
      : _panelController.open();

  void tapOpenPanel() => _panelController.isPanelClosed
      ? _panelController.open()
      : _panelController.close();
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
              maxHeight: 0.6 * sizeHeight,
              parallaxEnabled: true,
              minHeight: 0,
              color: appPrimaryC,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              body: SafeArea(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      //Paling atas
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          "https://th.bing.com/th/id/OIP.uZQdLXEgBEvR2OkcVVbBMQHaFj?w=271&h=203&c=7&r=0&o=5&pid=1.7"),
                                    ),
                                    SizedBox(width: 0.02 * sizeWidth),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hi, Pablo",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: appPrimaryC),
                                        ),
                                        Text("Teknik Informatika",
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: appPrimary2)),
                                        Text(
                                          "Selamat Datang Kembali",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              color: appPrimaryC),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                  color: appPrimaryC,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Card 1
                      Container(
                        padding: EdgeInsets.all(10),
                        width: sizeWidth * 0.8,
                        height: sizeHeight * 0.22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/deco/gradient1.png"),
                              alignment: Alignment.topLeft,
                              fit: BoxFit.fitHeight),
                          borderRadius: BorderRadius.circular(12),
                          color: appPrimaryC,
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Angsuran ke-2 belum dibayar",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 12),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.warning_rounded,
                                        color: appRedDeActive,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Jangan sampai dicutikan, silakan melakukan pembayaran sebelum tanggal 23, Juli 2020",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 0.01 * sizeHeight,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      tapOpenPanel();
                                    },
                                    child: Text("Bayar Sekarang"),
                                    style: ElevatedButton.styleFrom(
                                        primary: appPrimary9),
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.only(top: 15),
                                width: 0.13 * sizeWidth,
                                height: 0.05 * sizeHeight,
                                child: Row(
                                  children: [
                                    Image.asset("assets/icon/active.png"),
                                    SizedBox(
                                      width: 0.01 * sizeWidth,
                                    ),
                                    Text(
                                      "Active",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Informasi Penting",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: appPrimaryC,
                              ),
                            ),
                            IconButton(
                                onPressed: (() {}),
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: appPrimaryC,
                                ))
                          ],
                        ),
                      ),
                      //Kedua
                      Container(
                        height: 0.2 * sizeHeight,
                        width: sizeWidth * 0.8,
                        child: PageView(
                          scrollDirection: Axis.horizontal,
                          controller: _controller,
                          children: [
                            MyCard(
                              img: "banner1.jpg",
                            ),
                            MyCard(
                              img: "banner2.png",
                            ),
                            MyCard(
                              img: "banner1.jpg",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: SwapEffect(
                          activeDotColor: appPrimary2,
                          dotColor: appPrimary9,
                          dotWidth: 8,
                          dotHeight: 8,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Menu",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: appPrimaryC,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Lihat Semua",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: appPrimaryC,
                                  ),
                                ),
                                IconButton(
                                    onPressed: (() {}),
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 16,
                                      color: appPrimaryC,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),

                      //Ke3
                      MyMenu(),
                      //ke4

                      //ke5
                    ],
                  ),
                ),
              ),
              panelBuilder: (controller) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/deco/gradient2.png"),
                          alignment: Alignment.topRight,
                          fit: BoxFit.contain)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: tapClosePanel,
                          child: Container(
                            height: 0.01 * sizeHeight,
                            width: 0.05 * sizeWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: appPrimary9),
                          ),
                        ),
                        Text(
                          "Kartu Rencana Studi",
                          style: TextStyle(
                              fontSize: 35,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.warning_rounded,
                            color: appRedDeActive,
                          ),
                        ),
                        Text(
                          "Maaf anda belum dapat melakukan KRS",
                          style: TextStyle(
                            fontFamily: "Poppin",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Karena anda belum melakukan bimbingan dengan Dosen Pembimbing Akademik (DPA) ",
                          style: TextStyle(
                            fontFamily: "Poppin",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Mohon untuk bimbingan terlebih dahulu dengan DPA anda,",
                          style: TextStyle(
                            fontFamily: "Poppin",
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 0.05 * sizeHeight,
                        ),
                        Text(
                          "Endah Ratna Arumi, M. Cs,",
                          style: TextStyle(
                            fontFamily: "Poppin",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "13900611644214",
                          style: TextStyle(
                            fontFamily: "Poppin",
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 0.05 * sizeHeight),
                        SizedBox(
                          height: 0.05 * sizeHeight,
                          width: 0.9 * sizeWidth,
                          child: ElevatedButton(
                            onPressed: () {
                              return tapOpenPanel();
                            },
                            child: Text("Kembali Ke Beranda"),
                            style:
                                ElevatedButton.styleFrom(primary: appPrimary9),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
