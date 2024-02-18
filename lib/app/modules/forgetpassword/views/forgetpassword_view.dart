import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../../common/appcolors.dart';
import '../../../../common/widgets/widgets.dart';
import '../controllers/forgetpassword_controller.dart';

class ForgetpasswordView extends GetView<ForgetpasswordController> {
  const ForgetpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height / 7),
              child: Container(
                child: Image.asset(
                  "images/forgot.png",
                  height: Get.height/6,
                  width: Get.height/6,
                ),
              ),
            ),
            SizedBox(
              height: Get.height/40,
            ),
            Column(
              children: [
                Text(
                  "Forgot Your Password?",
                  style: TextStyle(
                    fontSize: Get.height/40,
                    fontFamily: "Poppins-Bold",
                    color: AppColors.ligt_blck,
                  ),
                ),
                SizedBox(
                  height: Get.height/40,
                ),
                Text(
                  "Enter your email address below to get a \npassword recovery link",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: Get.height/60, color: AppColors.ligt_blck),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.only(left:Get.width/15,right: Get.width/15),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: Get.height/40,),
                    TextField(
                      onChanged: (v) {
                        controller.email = v;
                      },
                      //controller: _userNameController,
                      style: TextStyle(fontSize: Get.height/60),
                      cursorColor: AppColors.button_color,
                      decoration: InputDecoration(
                          labelText: 'Enter Email',
                          labelStyle: TextStyle(fontFamily: "Poppins-Regular",fontSize: Get.height/65,color: AppColors.text_color,
                          ),
                          border: UnderlineInputBorder(
                              borderSide:BorderSide(color: AppColors.button_color)),
                          errorBorder: UnderlineInputBorder(
                              borderSide:BorderSide(color: AppColors.button_color)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:BorderSide(color: AppColors.button_color)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:BorderSide(color: AppColors.button_color))),
                    ),
                    SizedBox(height: Get.height/40,),
                    SizedBox(height: 30,),
                    CustomTextButtonWidget(
                      onPressed: () {
                        if(controller.email.isNotEmpty){
                          controller.forgotApiPost();
                        }else{
                          Utils.shortToast("Email is required!");
                        }

                      },
                      buttonColor: AppColors.white,
                      border: Border.all(color: AppColors.button_color, width: 2),
                      borderRadius: BorderRadius.circular(50),
                      height:Get.height/17,
                      iconcontainerheight: Get.height/16,
                      iconcontainerweight: Get.height/16,
                      iconheight: Get.height/33,
                      iconweight: Get.height/33,
                      textFontSize:Get.height/45, title: "Send",
                      textColor: AppColors.button_text_color,
                      fontfamily: "Poppins-Bold",
                      icon: "images/ic_forgot_arrow.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
