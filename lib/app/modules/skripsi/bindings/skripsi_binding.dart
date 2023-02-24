import 'package:get/get.dart';

import '../controllers/skripsi_controller.dart';

class SkripsiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SkripsiController>(
      () => SkripsiController(),
    );
  }
}
