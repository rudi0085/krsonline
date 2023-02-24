import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:krsonline/app/constant/color.dart';
import 'package:krsonline/app/modules/home/widgets/home.dart';
import 'package:krsonline/app/modules/informasi/views/informasi_view.dart';
import 'package:krsonline/app/modules/profil/views/profil_view.dart';
import 'package:krsonline/app/modules/riwayat/views/riwayat_view.dart';

import '../controllers/home_controller.dart';

// class HomeView extends GetView<HomeController> {
//   //pagecontroller

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(
//           () => controller.myWidget.elementAt(controller.indexWidget.value)),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value) => controller.changeIndexButtonNav(value),
//         type: BottomNavigationBarType.fixed,
//         unselectedItemColor: appGrey,
//         selectedItemColor: appYellow,
//         iconSize: 30,
//         // onTap: (index) => setState(() => currentIndex = index),
//         items: [
//           BottomNavigationBarItem(
//             label: 'Home',
//             icon: Icon(Icons.home_outlined),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info_outline),
//             label: 'Info',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history_outlined),
//             label: 'Riwayat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle_outlined),
//             label: 'Profil',
//           )
//         ],
//       ),
//     );
//   }
// }

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  void onTapBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> myWidget = [
    HomeWidget(),
    InformasiView(),
    RiwayatView(),
    ProfilView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: myWidget.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapBar,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: appPrimaryC,
        selectedItemColor: appPrimary4,
        iconSize: 30,
        // onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profil',
          )
        ],
      ),
    );
  }
}
