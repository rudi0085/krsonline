import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krsonline/app/constant/color.dart';

class Senin extends StatelessWidget {
  const Senin({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/inggris.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Bahasa Inggris",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Selasa extends StatelessWidget {
  const Selasa({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 0.2 * sizeHeight,
                          child: Image.asset(
                            "assets/deco/mob-prog.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        "Mobile Programming",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimaryC,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Text(
                        "Agus, Skom., M.Kom",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 0.01 * sizeHeight,
                      ),
                      Row(
                        children: [
                          Text(
                            "08.00 - 11.30",
                            style: GoogleFonts.openSans(
                                fontStyle: FontStyle.normal,
                                color: appPrimary2,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Container(
                            width: 0.02 * sizeWidth,
                            height: 0.01 * sizeHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appPrimary2,
                            ),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Text("Lab 201",
                              style: GoogleFonts.openSans(
                                  fontStyle: FontStyle.normal,
                                  color: appPrimary2,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          color: Colors.transparent,
                          height: 0.2 * sizeHeight,
                          child: Image.asset(
                            "assets/deco/inggris.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        "Bahasa Inggris",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimaryC,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Text(
                        "Agus, Skom., M.Kom",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 0.01 * sizeHeight,
                      ),
                      Row(
                        children: [
                          Text(
                            "08.00 - 11.30",
                            style: GoogleFonts.openSans(
                                fontStyle: FontStyle.normal,
                                color: appPrimary2,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Container(
                            width: 0.02 * sizeWidth,
                            height: 0.01 * sizeHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appPrimary2,
                            ),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Text("Lab 201",
                              style: GoogleFonts.openSans(
                                  fontStyle: FontStyle.normal,
                                  color: appPrimary2,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          color: Colors.transparent,
                          height: 0.2 * sizeHeight,
                          child: Image.asset(
                            "assets/deco/mob-prog.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        "Mobile Programming",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimaryC,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Text(
                        "Agus, Skom., M.Kom",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: 0.01 * sizeHeight,
                      ),
                      Row(
                        children: [
                          Text(
                            "08.00 - 11.30",
                            style: GoogleFonts.openSans(
                                fontStyle: FontStyle.normal,
                                color: appPrimary2,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Container(
                            width: 0.02 * sizeWidth,
                            height: 0.01 * sizeHeight,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: appPrimary2,
                            ),
                          ),
                          SizedBox(
                            width: 0.03 * sizeWidth,
                          ),
                          Text("Lab 201",
                              style: GoogleFonts.openSans(
                                  fontStyle: FontStyle.normal,
                                  color: appPrimary2,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Rabu extends StatelessWidget {
  const Rabu({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/inggris.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Bahasa Inggris",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Kamis extends StatelessWidget {
  const Kamis({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mata Kuliah 2",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary9,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary9,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary9,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/inggris.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Bahasa Inggris",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "12.00 - 13.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary9,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary9,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary9,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary9,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary9,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary9,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Jumat extends StatelessWidget {
  const Jumat({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "HCI",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary9,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimaryC,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/inggris.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Database",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimaryC,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 0.2 * sizeHeight,
                      child: Image.asset(
                        "assets/deco/mob-prog.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    "Mobile Programming",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimaryC,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "Agus, Skom., M.Kom",
                    style: GoogleFonts.openSans(
                        fontStyle: FontStyle.normal,
                        color: appPrimary2,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 0.01 * sizeHeight,
                  ),
                  Row(
                    children: [
                      Text(
                        "08.00 - 11.30",
                        style: GoogleFonts.openSans(
                            fontStyle: FontStyle.normal,
                            color: appPrimary2,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Container(
                        width: 0.02 * sizeWidth,
                        height: 0.01 * sizeHeight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appPrimary2,
                        ),
                      ),
                      SizedBox(
                        width: 0.03 * sizeWidth,
                      ),
                      Text("Lab 201",
                          style: GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              color: appPrimary2,
                              fontWeight: FontWeight.w600))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
