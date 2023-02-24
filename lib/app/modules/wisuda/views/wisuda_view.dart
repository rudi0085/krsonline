import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wisuda_controller.dart';

class WisudaView extends GetView<WisudaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WisudaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WisudaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
