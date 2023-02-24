import 'package:get/get.dart';

import '../controllers/kkn_controller.dart';

class KknBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KknController>(
      () => KknController(),
    );
  }
}
