import 'package:get/get.dart';

import '../controllers/kerjapraktik_controller.dart';

class KerjapraktikBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KerjapraktikController>(
      () => KerjapraktikController(),
    );
  }
}
