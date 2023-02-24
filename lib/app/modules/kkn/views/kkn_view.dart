import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kkn_controller.dart';

class KknView extends GetView<KknController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KknView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'KknView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
