import 'package:get/get.dart';

class CartController extends GetxController {
  //TODO: Implement CartController
  RxInt quantity = 1.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
