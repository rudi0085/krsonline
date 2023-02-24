import 'package:get/get.dart';

import '../controllers/krs_controller.dart';

class KrsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KrsController>(
      () => KrsController(),
    );
  }
}
