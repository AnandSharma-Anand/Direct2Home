import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appcolors.dart';
import '../../../../common/widgets/custom_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,

      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: Get.width/15,right: Get.width/15,top: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      height: Get.height/3,
                      width: Get.width,
                      child: Image.asset(
                        "assets/splash.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: AppColors.white,
                    controller: controller.namecontroller,
                    style: TextStyle(
                        fontSize: Get.height/50
                    ),
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontFamily: "Poppins-Regular",
                        fontSize: Get.height/60,
                        color: AppColors.white,
                      ),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/40,
                  ),
                  TextFormField(
                    cursorColor: AppColors.white,
                    controller: controller.emailcontroller,
                    style: TextStyle(
                        fontSize: Get.height/50
                    ),
                    decoration: InputDecoration(
                      labelText: "Email or Phone",
                      labelStyle: TextStyle(
                        fontFamily: "Poppins-Regular",
                        fontSize: Get.height/60,
                        color: AppColors.white,
                      ),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/40,
                  ),
                  TextFormField(
                    cursorColor: AppColors.white,
                    controller: controller.passwordcontroller,
                    style: TextStyle(
                        fontSize: Get.height/50
                    ),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontFamily: "Poppins-Regular",
                        fontSize: Get.height/60,
                        color: AppColors.white,
                      ),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/40,
                  ),
                  TextFormField(
                    cursorColor: AppColors.white,
                    controller: controller.confirmpasswordcontroller,
                    style: TextStyle(
                        fontSize: Get.height/50
                    ),
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        fontFamily: "Poppins-Regular",
                        fontSize: Get.height/60,
                        color: AppColors.white,
                      ),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.white
                          )
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.white
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height/40,
                  ),
                  CustomTextButtonWidget(
                    onPressed: (){
                      controller.singupApiPost();

                      // controller.clearCache();
                      //controller.loginApiPost();
                    },
                    buttonColor: AppColors.white,
                    border: Border.all(
                      color: AppColors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    height:Get.height/17,
                    iconColor: AppColors.red,
                    iconcontainerheight: Get.height/16,
                    iconcontainerweight: Get.height/16,
                    iconheight: Get.height/33,
                    iconweight: Get.height/33,
                    textFontSize:Get.height/45,
                    title: "SingUp",
                    textColor:AppColors.red ,

                    fontfamily: "Poppins-Bold",

                    icon: "assets/ic_login_arrow.png",


                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {

                      Get.toNamed(Routes.SIGNIN);
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "I have already account",
                        style: TextStyle(
                            fontFamily: "Poppins-Regular",
                            fontSize: Get.height/55,
                            color: AppColors.white),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
