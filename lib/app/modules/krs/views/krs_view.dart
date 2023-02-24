import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krsonline/app/constant/makul.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../../utils.dart';
import '../../../constant/color.dart';
import '../../../routes/app_pages.dart';
import 'scrollable_widget.dart';

class KrsView extends StatefulWidget {
  const KrsView({super.key});

  @override
  State<KrsView> createState() => _KrsViewState();
}

class _KrsViewState extends State<KrsView> {
  final _controller = PageController();
  int? sortColumnIndex;

  List<Makul> makul = [
    Makul(id: "KPT250321", name: "AIK 2", sks: 3, semester: 2),
    Makul(id: "KPT253214", name: "Metode Penelitian", sks: 2, semester: 6),
    Makul(id: "KPT391253", name: "Bahasa Inggris", sks: 4, semester: 2),
    Makul(id: "KPT271421", name: "Algoritma", sks: 6, semester: 4),
    Makul(id: "KPT955321", name: "Mobile Programing", sks: 6, semester: 6),
    Makul(id: "KPT212341", name: "Numerical Method", sks: 4, semester: 4),
    Makul(id: "KPT250321", name: "Data Science", sks: 3, semester: 6),
    Makul(id: "KPT250456", name: "HCI", sks: 2, semester: 4),
    Makul(id: "KPT256789", name: "AIK 4", sks: 3, semester: 4),
    Makul(id: "KPT251231", name: "Skripsi", sks: 6, semester: 6),
    Makul(id: "KPT212321", name: "KKN", sks: 3, semester: 4),
  ];
  // List<Makul> makul = Makul.getMakul();
  List<Makul> selectedMakul = [];
  PanelController _panelController = PanelController();
  int currentIndex = 0;

  int current = 0;
  bool isAscending = false;

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
            "Input Mata Kuliah",
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
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Cari Mata Kuliah",
                          contentPadding: EdgeInsets.all(5),
                          prefixIcon: Icon(Icons.search),
                          fillColor: appPrimary9,
                          prefixIconColor: appPrimaryC),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Jumlah nilai IP anda 3,54, anda dapat mengambil maksimal 19 SKS",
                    style: TextStyle(
                        fontFamily: "Popins",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: appPrimaryC),
                  ),

                  // Expanded(child: PaginatedTable()),

                  Expanded(
                    child: makul.isEmpty
                        ? Center(child: CircularProgressIndicator())
                        : ScrollableWidget(child: buildDataTable()),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final names =
                          selectedMakul.map((makul) => makul.name).join(',');
                      setState(() {
                        Get.offAllNamed(Routes.KONFIRMASI);
                      });
                    },
                    // child: Text("Ambil ${selectedMakul.length} Krs"),
                    child: Text(
                        "Ambil ${selectedMakul.fold(0, (previousValue, element) => previousValue + element.sks)} SKS"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: appPrimaryC,
                        minimumSize: Size.fromHeight(40)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  )
                ],
              ),
            ),
          ),
        ));
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(label: Text(column), onSort: onSort))
      .toList();

  List<DataRow> getRows(List<Makul> makul) => makul
      .map((Makul makul) => DataRow(
              selected: selectedMakul.contains(makul),
              onSelectChanged: (isSelected) => setState(() {
                    final isAdding = isSelected != null && isSelected;

                    isAdding
                        ? selectedMakul.add(makul)
                        : selectedMakul.remove(makul);
                  }),
              cells: [
                DataCell(
                  Text(makul.id),
                ),
                DataCell(
                  Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(makul.name)),
                ),
                DataCell(
                  Container(
                      width: MediaQuery.of(context).size.width * 0.02,
                      child: Text(makul.sks.toString())),
                ),
                DataCell(
                  Text(makul.semester.toString()),
                ),
              ]))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      makul.sort((a, b) => compareString(
          ascending, a.semester.toString(), b.semester.toString()));
    } else if (columnIndex == 1) {
      makul.sort((a, b) => compareString(
          ascending, a.semester.toString(), b.semester.toString()));
    } else if (columnIndex == 2) {
      makul.sort((a, b) => compareString(
          ascending, a.semester.toString(), b.semester.toString()));
    } else if (columnIndex == 3) {
      makul.sort((a, b) => compareString(
          ascending, a.semester.toString(), b.semester.toString()));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  Widget buildDataTable() {
    final columns = ["Kode", "Mata Kuliah", "SKS", "Semester"];

    return DataTable(
        showCheckboxColumn: true,
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => appPrimary2.withOpacity(0.08)),
        dataTextStyle: GoogleFonts.poppins(color: appPrimary2),
        headingTextStyle: GoogleFonts.poppins(
            color: appPrimaryC, fontWeight: FontWeight.bold),
        sortAscending: isAscending,
        sortColumnIndex: sortColumnIndex,
        onSelectAll: (isSelectedAll) {
          setState(() => selectedMakul = isSelectedAll! ? makul : []);
          Utils.showSnackBar(context, "All Selected: $isSelectedAll");
        },
        columns: getColumns(columns),
        rows: getRows(makul));
  }
}
