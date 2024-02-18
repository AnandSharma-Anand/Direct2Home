import 'dart:async';

import 'package:direct2home/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final RxBool _loading = false.obs;


  bool get loading => _loading.value;
  set loading(bool v) => _loading.value = v;
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 8),
            ()=>Get.toNamed(Routes.DASHBOARD));

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
