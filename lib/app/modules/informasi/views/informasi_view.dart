import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/informasi_controller.dart';

class InformasiView extends GetView<InformasiController> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
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
                color: appPrimaryC,
              ))
        ],
        title: Text(
          "Informasi",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appPrimaryC),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                child: MyCard(
                  img: "banner2.png",
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Lomba Desain Logo UNIMMA",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: appPrimaryC),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Dalam Rangka Milad Ke-56 Universitas Muhammadiyah Magelang",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: appPrimary2),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                  "Amet nullam lacus malesuada enim aliquet. Integer turpis amet quisque aliquam id at. Pulvinar proin pulvinar dictum nisi. Ullamcorper mauris auctor gravida nulla nunc. Dolor in amet dolor velit et convallis massa commodo molestie. Pellentesque venenatis amet, sagittis feugiat. At dignissim arcu sed amet, sit in. Purus dolor blandit diam quam turpis facilisi facilisi mauris. Amet lacus, lobortis pellentesque suspendisse. Cursus cum egestas lobortis a leo quis quis. Lorem lacus integer ultrices a, blandit. Adipiscing imperdiet eu nibh non turpis porta urna. Faucibus magna turpis at amet."),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 35,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Selengkapnya"),
                  style: ElevatedButton.styleFrom(
                    primary: appPrimaryC,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
