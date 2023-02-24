import 'package:get/get.dart';

import '../controllers/nilai_controller.dart';

class NilaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NilaiController>(
      () => NilaiController(),
    );
  }
}
