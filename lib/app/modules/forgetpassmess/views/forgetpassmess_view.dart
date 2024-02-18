import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appcolors.dart';
import '../../../../common/widgets/widgets.dart';
import '../../../routes/app_pages.dart';
import '../controllers/forgetpassmess_controller.dart';

class ForgetpassmessView extends GetView<ForgetpassmessController> {
  const ForgetpassmessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline,size: 80,
                    color: AppColors.green,),
                  SizedBox(height: Get.height/40,),
                  Text('Password Reset Email Sent',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.ligt_blck,
                        fontSize: Get.height/45,
                        fontFamily: 'Poppins-Bold'
                    ),),
                  SizedBox(height: Get.height/40,),
                  Text(controller.message,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.ligt_blck,
                        fontSize: 20
                    ),),
                  SizedBox(height: 20,),
                  Text('Follow the directions in the email to reset your password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.ligt_blck,
                        fontSize: Get.height/65,
                        fontFamily: 'Poppins-Regular'
                    ),),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0,right: 25,left: 25),
            child:CustomTextButtonWidget(
              onPressed: (){
                Get.offAllNamed(Routes.SIGNIN);
              },
              buttonColor: AppColors.white,
              border: Border.all(
                  color: AppColors.button_color,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(50),
              height:Get.height/17,
              iconcontainerheight: Get.height/16,
              iconcontainerweight: Get.height/16,
              iconheight: Get.height/33,
              iconweight: Get.height/33,
              textFontSize:Get.height/45,
              title: "Done",
              textColor:AppColors.button_text_color ,
              fontfamily: "Poppins-Bold",
              icon: "images/ic_login_arrow.png",
            ),
          ),
        ],
      ),
    );
  }
}
