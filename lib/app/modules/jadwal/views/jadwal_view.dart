import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/jadwal_controller.dart';

import '../widgets/hari.dart';

class JadwalView extends StatefulWidget {
  const JadwalView({super.key});

  @override
  State<JadwalView> createState() => _JadwalViewState();
}

class _JadwalViewState extends State<JadwalView> {
  List<String> items = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat"];
  int current = 0;
  List<Widget> myWidget = [
    Senin(),
    Selasa(),
    Rabu(),
    Kamis(),
    Jumat(),
  ];

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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: appPrimaryC,
              ))
        ],
        title: Text(
          "Jadwal",
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
        child: SafeArea(
          child: Center(
              child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 0.1 * sizeHeight,
                  width: double.infinity,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                margin: EdgeInsets.all(8),
                                width: sizeWidth * 0.2,
                                height: 0.05 * sizeHeight,
                                decoration: BoxDecoration(
                                    color: current == index
                                        ? appPrimaryC
                                        : appPrimary9,
                                    borderRadius: current == index
                                        ? BorderRadius.circular(18)
                                        : BorderRadius.circular(12)),
                                child: Center(
                                    child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            Visibility(
                                visible: current == index,
                                child: Container(
                                  width: 0.05 * sizeWidth,
                                  height: 0.009 * sizeHeight,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: appPrimaryC,
                                  ),
                                ))
                          ],
                        );
                      }),
                ),

                ///MAIN BODY
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: 0.75 * sizeHeight,
                  color: Colors.transparent.withOpacity(0.0),
                  child: myWidget.elementAt(current),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
