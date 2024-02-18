import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/constant/prefers.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController
  final RxBool _passShowhide = true.obs;
  bool get passShowhide => _passShowhide.value;
  set passShowhide(bool v) => _passShowhide.value = v;
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  final RxString _email = ''.obs;
  String get email => _email.value;
  set email (String v) => _email.value = v;
  final RxBool _checkbox = false.obs;
  bool get checkbox => _checkbox.value;
  set checkbox(bool v) => _checkbox.value = v;

  final RxBool _rememberme = false.obs;
  bool get rememberme => _rememberme.value;
  set rememberme(bool v) => _rememberme.value = v;

  final RxString _password = ''.obs;
  String get password => _password.value;
  set password(String v) => _password.value = v;
  final RxString _firebase_device_token = ''.obs;
  String get firebase_device_token => _firebase_device_token.value;
  set firebase_device_token(String v) => _firebase_device_token.value = v;
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


}
