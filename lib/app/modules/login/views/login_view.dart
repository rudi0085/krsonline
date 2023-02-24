import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krsonline/app/constant/color.dart';
import 'package:krsonline/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/deco/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 250,
                child: Image.asset(
                  "assets/logo/logo-login.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: appPrimaryC,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome to KRS Online Universitas Muhammadiyah Magelang",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appPrimary2,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Nomor Induk Mahasiswa",
                  fillColor: appPrimary9,
                  filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Kata Sandi",
                    fillColor: appPrimary9,
                    filled: true,
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Color(0xff8A8A8A),
                      ),
                    )),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () => Get.offAllNamed(Routes.HOME),
                  child: Text("Masuk"),
                  style: ElevatedButton.styleFrom(
                    primary: appPrimaryC,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Lupa Kata Sandi?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: appPrimary2,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
