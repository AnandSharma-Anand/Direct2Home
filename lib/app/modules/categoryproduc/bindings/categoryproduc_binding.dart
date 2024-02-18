import 'package:get/get.dart';

import '../controllers/categoryproduc_controller.dart';

class CategoryproducBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryproducController>(
      () => CategoryproducController(),
    );
  }
}
