import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kerjapraktik_controller.dart';

class KerjapraktikView extends GetView<KerjapraktikController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KerjapraktikView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KerjapraktikView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
