import 'package:get/get.dart';

import '../controllers/brandproduct_controller.dart';

class BrandproductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrandproductController>(
      () => BrandproductController(),
    );
  }
}
