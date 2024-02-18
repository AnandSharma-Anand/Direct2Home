import 'package:direct2home/app/data/models/singupResponse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../routes/app_pages.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmpasswordcontroller=TextEditingController();
  final RxString _email = ''.obs;
  String get email => _email.value;
  set email (String v) => _email.value = v;
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

  void singupApiPost() {
    Map map ={
      "name": namecontroller.text.toString().trim(),
      "register_by":"email",
      "email_or_phone" : emailcontroller.text.toString().trim(),
      "password": passwordcontroller.text.toString().trim(),
      "password_confirmation": confirmpasswordcontroller.text.toString().trim()
    };
    ApiHelperImpl().postHitAPI(Get.overlayContext!,  KSignUp,map).then((value) {
      SingupResponse responseModel=SingupResponse.fromJson(value);
      Get.toNamed(Routes.DASHBOARD);
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
}
