import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/skripsi_controller.dart';

class SkripsiView extends GetView<SkripsiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SkripsiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SkripsiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
