import 'package:direct2home/common/Api/data/api_helper.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgetpasswordController extends GetxController {
  //TODO: Implement ForgetpasswordController

  var id;
  final RxString _email = ''.obs;
  String get email => _email.value;
  set email (String v) => _email.value = v;
  final ApiHelper _apiHelper = Get.find();
  final _body = <String, dynamic>{};
  @override
  void onReady() {
    super.onReady();
  }
/*  void firebase_FORGOT_PASSWORD() async{
    await FirebaseAnalytics.instance.logEvent(
      name: "Fir_FORGOT_PASSWORD",
      parameters: {
        "EMAIL_ID": email,
      },
    );
  }*/

  void forgotApiPost() {
    _body['email'] = email;

    printInfo(info: 'body: $_body');
    /*_apiHelper.forgot(FormData(_body)).futureValue(
            (v) {
          printInfo(info:v.message!);
          //  firebase_FORGOT_PASSWORD();
          if (v.message != null) {
            Get.offAllNamed(Routes.FORGETPASSMESS,arguments: v.message.toString());
            printInfo(info:v.message.toString());
          }

        }
    );*/
  }
}
