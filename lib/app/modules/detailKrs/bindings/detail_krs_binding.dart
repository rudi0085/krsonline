import 'package:get/get.dart';

import '../controllers/detail_krs_controller.dart';

class DetailKrsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailKrsController>(
      () => DetailKrsController(),
    );
  }
}
