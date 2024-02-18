import 'package:get/get.dart';

import '../controllers/forgetpassmess_controller.dart';

class ForgetpassmessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetpassmessController>(
      () => ForgetpassmessController(),
    );
  }
}
