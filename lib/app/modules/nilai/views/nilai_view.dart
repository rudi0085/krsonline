import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:krsonline/app/modules/nilai/bindings/nilai.dart';

import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import '../controllers/nilai_controller.dart';

class NilaiView extends StatefulWidget {
  const NilaiView({super.key});

  @override
  State<NilaiView> createState() => _NilaiViewState();
}

class _NilaiViewState extends State<NilaiView> {
  bool isVisible = true;
  bool isVisible2 = true;
  bool isVisible3 = true;
  bool click = true;
  bool click2 = true;
  bool click3 = true;
  final columns = ["Id", "Makul", "Nilai"];
  List<Nilai> nilai = [
    Nilai(id: "KPT250321", makul: "AIK 2", nilai: "A"),
    Nilai(id: "KPT391253", makul: "Bahasa Inggris", nilai: "B-"),
    Nilai(id: "KPT271421", makul: "Algoritma", nilai: "B"),
    Nilai(id: "KPT212341", makul: "Numerical Method", nilai: "A"),
    Nilai(id: "KPT250456", makul: "Data Science", nilai: "B-"),
    Nilai(id: "KPT256789", makul: "Web Programing", nilai: "B"),
  ];
  List<Nilai> selectedNilai = [];
  @override
  Widget build(BuildContext context) {
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
          "Nilai",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appPrimaryC),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/deco/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: 360,
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Cari Mata Kuliah",
                          contentPadding: EdgeInsets.all(5),
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: appPrimaryC),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 360,
                    child: Text(
                      "Nilai yang ada di halaman ini adalah daftar nilai berdasarkan mata kuliah yang pernah anda ambil. Untuk Mencetak transkrip nilai silahkan mencetak di fakultas masing-masing. Klik Daftar Tahun Ajaran Untuk Melihat Daftar Nilai !",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 12),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gasal Thn Ajaran  2020/2021",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: appPrimaryC),
                            ),
                            // Icon(
                            //   Icons.keyboard_arrow_down,
                            //   size: 35,
                            //   color: appPrimary,
                            // ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    click = !click;
                                    isVisible = !isVisible;
                                  });
                                },
                                child: Icon(
                                  (click == false)
                                      ? Icons.keyboard_arrow_down
                                      : Icons.keyboard_arrow_up,
                                  size: 35,
                                  color: appPrimaryC,
                                ))
                          ],
                        ),
                      ),
                      Visibility(
                        visible: isVisible,
                        child: Container(
                          width: 360,
                          child: DataTable(
                            columns: getColumns(columns),
                            rows: getRows(nilai),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Genap Thn Ajaran  2020/2021",
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
                                      isVisible2 = !isVisible2;
                                    });
                                  },
                                  child: Icon(
                                    (click2 == false)
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    size: 35,
                                    color: appPrimaryC,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: isVisible2,
                            child: Container(
                              width: 360,
                              child: DataTable(
                                columns: getColumns(columns),
                                rows: getRows(nilai),
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Gasal Thn Ajaran  2021/2022",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: appPrimaryC),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      click3 = !click3;
                                      isVisible3 = !isVisible3;
                                    });
                                  },
                                  child: Icon(
                                    (click3 == false)
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    size: 35,
                                    color: appPrimaryC,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: isVisible3,
                            child: Container(
                              width: 360,
                              child: DataTable(
                                columns: getColumns(columns),
                                rows: getRows(nilai),
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.03),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Cetak Nilai"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: appPrimaryC),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<DataColumn> getColumns(List<String> columns) =>
      columns.map((String column) => DataColumn(label: Text(column))).toList();

  List<DataRow> getRows(List<Nilai> nilai) => nilai
      .map((Nilai nilai) => DataRow(
              selected: selectedNilai.contains(nilai),
              onSelectChanged: (isSelected) => setState(() {
                    final isAdding = isSelected != null && isSelected;

                    isAdding
                        ? selectedNilai.add(nilai)
                        : selectedNilai.remove(nilai);
                  }),
              cells: [
                DataCell(
                  Text(nilai.id),
                ),
                DataCell(
                  Text(nilai.makul),
                ),
                DataCell(
                  Text(nilai.nilai),
                ),
              ]))
      .toList();
}
