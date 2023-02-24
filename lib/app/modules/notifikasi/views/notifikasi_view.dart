import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:krsonline/app/constant/color.dart';
import 'package:krsonline/app/routes/app_pages.dart';

class NotifikasiView extends StatefulWidget {
  const NotifikasiView({super.key});

  @override
  State<NotifikasiView> createState() => _NotifikasiViewState();
}

class _NotifikasiViewState extends State<NotifikasiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/deco/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  child: Image.asset(
                    "assets/deco/notif-ilus.png",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                width: 250,
                child: Text(
                  "Pembayaran Berhasil",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 32,
                      color: appPrimaryC,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                child: Text(
                  "Terimakasih pembayaranmu berhasil. Jika status masih pending kamu bisa hubungi Biro Keuangan untuk konfirmasi",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: appPrimaryC,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 350,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appPrimaryC,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    child: Text("Kembali ke beranda")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
