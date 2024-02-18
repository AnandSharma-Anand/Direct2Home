import 'package:get/get.dart';

class ForgetpassmessController extends GetxController {
  //TODO: Implement ForgetpassmessController

  final RxString _message = ''.obs;
  String get message => _message.value;
  set message (String v) => _message.value = v;
  @override
  void onReady() {
    super.onReady();
    if(Get.arguments!=null){
      message=Get.arguments;
    }
  }
}