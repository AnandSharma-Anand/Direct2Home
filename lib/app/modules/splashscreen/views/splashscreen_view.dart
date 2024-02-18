import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {

        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.red,
        body: Center(
          child: SizedBox(
              height: Get.height/3,
              width: Get.width/2,
              child: Obx(
                    ()=> controller.loading?Image.asset('assets/splash.png',fit: BoxFit.fill,):Image.asset('assets/splash.png',fit: BoxFit.fill,),
              )
          ),
        ),
      ),
    );
  }
}
