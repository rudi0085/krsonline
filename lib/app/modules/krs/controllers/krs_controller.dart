import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/color.dart';
import '../../../constant/makul.dart';

class KrsController extends GetxController {
  //TODO: Implement KrsController

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

class Menu2 extends StatefulWidget {
  const Menu2({super.key});

  @override
  State<Menu2> createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  List<String> semester = [
    "Semester 2",
    "Semester 4",
    "Semester 6",
    "Semester 8",
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 32,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: semester.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(
                  () {
                    current == index;
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 15,
                    right: index == semester.length - 1 ? 25 : 0),
                height: 32,
                decoration: BoxDecoration(
                    color: current == index ? appPrimary2 : appPrimary9,
                    borderRadius: BorderRadius.circular(8),
                    border: current == index
                        ? null
                        : Border.all(
                            color: appPrimary3,
                            width: 1,
                          )),
                child: Text(
                  semester[index],
                  style: TextStyle(
                      fontFamily: "Popins",
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ));
        },
      ),
    );
  }
}

// class SelectedData extends StatefulWidget {
//   const SelectedData({super.key});

//   @override
//   State<SelectedData> createState() => _SelectedDataState();
// }

// class _SelectedDataState extends State<SelectedData> {
//   List<Makul> makul = Makul.getMakul();
//   List<Makul> selectedMakul = [];
//   int selectedIndex = -1;
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         child: DataTable(
//             onSelectAll: (value) {
//               selectedIndex = -1;
//             },
//             horizontalMargin: 5,
//             columns: [
//               DataColumn(
//                 label: Text("Id"),
//               ),
//               DataColumn(
//                 label: Text("Mata Kuliah"),
//               ),
//               DataColumn(
//                 label: Text("SKS"),
//               ),
//               DataColumn(
//                 label: Text("SEMESTER"),
//               ),
//             ],
//             rows:
//             makul
//                 .map((e) => DataRow(
//                         selected: selectedMakul.contains(makul),
//                         onSelectChanged: (isSelected) => setState(() {
//                               final isAdding = isSelected != null && isSelected;

//                               isAdding
//                                   ? selectedMakul.add(makul)
//                                   : selectedMakul.remove(makul);
//                             }),
//                         cells: [
//                           DataCell(Text(e.id ?? "")),
//                           DataCell(Text(e.name ?? '')),
//                           DataCell(Text(e.sks.toString())),
//                           DataCell(Text(e.semester.toString())),
//                         ]))
//                 .toList()),
//       ),
//     );
//   }
// }

// class SelectedData extends StatefulWidget {
//   const SelectedData({
//     super.key,
//   });

//   @override
//   State<SelectedData> createState() => _SelectedDataState();
// }

// class _SelectedDataState extends State<SelectedData> {
//   Color? color;
//   int selectedIndex = -1;
//   String? selectedValue;

//   int sortIndex = 0;
//   bool isAscending = true;
//   // bool isAdding = true;

//   List<Makul> makul = [
//     Makul(id: "KPT250321", name: "AIK 2", sks: 3, semester: 2),
//     Makul(id: "KPT253214", name: "Metode Penelitian", sks: 2, semester: 6),
//     Makul(id: "KPT391253", name: "Bahasa Inggris", sks: 4, semester: 2),
//     Makul(id: "KPT271421", name: "Algoritma", sks: 6, semester: 4),
//     Makul(id: "KPT955321", name: "Mobile Programing", sks: 6, semester: 6),
//     Makul(id: "KPT212341", name: "Numerical Method", sks: 4, semester: 4),
//     Makul(id: "KPT250321", name: "Data Science", sks: 3, semester: 6),
//     Makul(id: "KPT250456", name: "HCI", sks: 2, semester: 4),
//     Makul(id: "KPT256789", name: "AIK 4", sks: 3, semester: 4),
//     Makul(id: "KPT251231", name: "Skripsi", sks: 6, semester: 6),
//     Makul(id: "KPT212321", name: "KKN", sks: 3, semester: 4),
//   ];

//   sortData() {
//     if (sortIndex == 0) {
//       makul.sort(
//         (a, b) {
//           if (isAscending) {
//             return a.semester.toString().compareTo(b.semester.toString());
//           } else {
//             return b.semester.toString().compareTo(a.semester.toString());
//           }
//         },
//       );
//     }
//   }

//   // onSelectedRow(bool selected, Makul makul) async {
//   //   setState(() {
//   //     if (selected) {
//   //       selectedMakul.add(makul);
//   //     } else {
//   //       selectedMakul.remove(makul);
//   //     }
//   //   });
//   // }

// //   List<Makul> selectedMakul = [];

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           DataTable(
//             sortColumnIndex: sortIndex,
//             sortAscending: isAscending,
//             showBottomBorder: true,
//             headingRowHeight: 40,
//             columnSpacing: 10,
//             dataRowHeight: 60,
//             onSelectAll: (isSelectedAll) => isSelectedAll! ? makul : [],
//             columns: <DataColumn>[
//               DataColumn(
//                   onSort: ((columnIndex, ascending) {
//                     sortIndex = columnIndex;
//                     isAscending = ascending;
//                     sortData();
//                     setState(() {});
//                   }),
//                   label: Text("ID")),
//               DataColumn(
//                 label: Expanded(
//                   child: Text("Mata Kuliah"),
//                 ),
//               ),
//               DataColumn(label: Text("SKS")),
//               DataColumn(label: Text("Semester"))
//             ],
//             rows: makul
//                 .map(
//                   (e) => DataRow(
//                     onSelectChanged: (b) {
//                       print("OnSelect");
//                     },
//                     cells: [
//                       DataCell(Text(e.id ?? '')),
//                       DataCell(Text(e.name ?? '')),
//                       DataCell(Text(e.sks.toString())),
//                       DataCell(Text(e.semester.toString())),
//                     ],
//                   ),
//                 )
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

class PaginatedTable extends StatefulWidget {
  const PaginatedTable({super.key});

  @override
  State<PaginatedTable> createState() => _PaginatedTableState();
}

class _PaginatedTableState extends State<PaginatedTable> {
  var dts = DTS();
  int? _rowPerPage = PaginatedDataTable.defaultRowsPerPage;
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

  int sortIndex = 0;
  bool isAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: PaginatedDataTable(
          columns: [
            DataColumn(label: Text("ID")),
            DataColumn(
              label: Text("Mata Kuliah"),
            ),
            DataColumn(label: Text("SKS")),
            DataColumn(label: Text("Semester"))
          ],
          source: dts,
          showCheckboxColumn: true,
          onRowsPerPageChanged: (r) {
            setState(() {
              _rowPerPage = r;
            });
            rowsPerPage:
            _rowPerPage;
          },
        ),
      )),
    );
  }
}

class DTS extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text("#cell$index")),
      DataCell(Text("#cel2$index")),
      DataCell(Text("#cel3$index")),
      DataCell(Text("#cel4$index")),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 10;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
