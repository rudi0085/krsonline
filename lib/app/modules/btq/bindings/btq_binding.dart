import 'package:get/get.dart';

import '../controllers/btq_controller.dart';

class BtqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BtqController>(
      () => BtqController(),
    );
  }
}
