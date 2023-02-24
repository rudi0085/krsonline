import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:krsonline/app/constant/color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
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
                Icons.more_vert,
                color: appPrimaryC,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.uZQdLXEgBEvR2OkcVVbBMQHaFj?w=271&h=203&c=7&r=0&o=5&pid=1.7"),
                  ),
                  Text(
                    "Pablo Setiawan",
                    style: TextStyle(
                        fontFamily: "Popins",
                        fontWeight: FontWeight.bold,
                        color: appPrimaryC,
                        fontSize: 24),
                  ),
                  Text(
                    "Teknik Informatika",
                    style: TextStyle(
                        fontFamily: "Popins",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "17.0504.0021",
                    style: TextStyle(
                        fontFamily: "Popins",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Cari Menu yang anda inginkan",
                          contentPadding: EdgeInsets.all(5),
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: appPrimaryC),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: appPrimaryC,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Pengaturan",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: appPrimary2),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: appPrimaryC,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Ubah Biodata",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: appPrimary2),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.help,
                                  color: appPrimaryC,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Bantuan",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: appPrimary2),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.info,
                                  color: appPrimaryC,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Informasi Penting",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: appPrimary2),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ]),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 35,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () => Get.offAllNamed(Routes.LOGIN),
                      child: Text("Keluar"),
                      style: ElevatedButton.styleFrom(
                        primary: appPrimaryC,
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
