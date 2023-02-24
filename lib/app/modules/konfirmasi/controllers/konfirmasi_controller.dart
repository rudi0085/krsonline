import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/color.dart';
import '../../../constant/makul.dart';

class KonfirmasiController extends GetxController {
  //TODO: Implement KonfirmasiController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}

class SelectedData extends StatefulWidget {
  const SelectedData({
    super.key,
  });

  @override
  State<SelectedData> createState() => _SelectedDataState();
}

class _SelectedDataState extends State<SelectedData> {
  Color? color;
  int selectedIndex = -1;
  String? selectedValue;

  int sortIndex = 0;
  bool isAscending = true;
  // bool isAdding = true;

  List<Makul> makul = [
    Makul(id: "KPT250321", name: "AIK 2", sks: 3, semester: 2),
    Makul(id: "KPT253214", name: "Metode Penelitian", sks: 2, semester: 6),
    Makul(id: "KPT391253", name: "Bahasa Inggris", sks: 4, semester: 2),
    // Makul(id: "KPT271421", name: "Algoritma", sks: 6, semester: 4),
    // Makul(id: "KPT955321", name: "Mobile Programing", sks: 6, semester: 6),
    // Makul(id: "KPT212341", name: "Numerical Method", sks: 4, semester: 4),
    Makul(id: "KPT250321", name: "Data Science", sks: 3, semester: 6),
    // Makul(id: "KPT250456", name: "HCI", sks: 2, semester: 4),
    Makul(id: "KPT256789", name: "AIK 4", sks: 3, semester: 4),
    // Makul(id: "KPT251231", name: "Skripsi", sks: 6, semester: 6),
    Makul(id: "KPT212321", name: "KKN", sks: 3, semester: 4),
  ];

  sortData() {
    if (sortIndex == 0) {
      makul.sort(
        (a, b) {
          if (isAscending) {
            return a.semester.toString().compareTo(b.semester.toString());
          } else {
            return b.semester.toString().compareTo(a.semester.toString());
          }
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DataTable(
            sortColumnIndex: sortIndex,
            sortAscending: isAscending,
            dataRowColor: MaterialStateColor.resolveWith(
                (states) => appPrimary2.withOpacity(0.03)),
            dataTextStyle: GoogleFonts.poppins(color: appPrimary2),
            headingTextStyle: GoogleFonts.poppins(
                color: appPrimaryC, fontWeight: FontWeight.bold),
            showBottomBorder: true,
            headingRowHeight: 40,
            columnSpacing: 10,
            dataRowHeight: 60,
            onSelectAll: (isSelectedAll) => isSelectedAll! ? makul : [],
            columns: <DataColumn>[
              DataColumn(
                  onSort: ((columnIndex, ascending) {
                    sortIndex = columnIndex;
                    isAscending = ascending;
                    sortData();
                    setState(() {});
                  }),
                  label: Text("ID")),
              DataColumn(
                label: Expanded(
                  child: Text("Mata Kuliah"),
                ),
              ),
              DataColumn(label: Text("SKS")),
              DataColumn(label: Text("Semester"))
            ],
            rows: makul
                .map(
                  (e) => DataRow(
                    color: MaterialStateColor.resolveWith(
                        (states) => appPrimary2.withOpacity(0.005)),
                    selected: true,
                    onSelectChanged: (b) {
                      print("OnSelect");
                    },
                    cells: [
                      DataCell(Text(e.id)),
                      DataCell(Text(e.name)),
                      DataCell(Text(e.sks.toString())),
                      DataCell(Text(e.semester.toString())),
                    ],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
