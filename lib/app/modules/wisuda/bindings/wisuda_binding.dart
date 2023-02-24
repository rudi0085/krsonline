import 'package:get/get.dart';

import '../controllers/wisuda_controller.dart';

class WisudaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WisudaController>(
      () => WisudaController(),
    );
  }
}
