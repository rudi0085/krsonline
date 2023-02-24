import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/btq_controller.dart';

class BtqView extends GetView<BtqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BtqView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BtqView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
