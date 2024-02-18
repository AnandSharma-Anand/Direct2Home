import 'package:direct2home/common/appcolors.dart';
import 'package:direct2home/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/Api/Utils/validators.dart';
import '../../../../common/constant/prefers.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding:  EdgeInsets.only(top: 20,bottom: 10,left: Get.width/15,right: Get.width/15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello !",
                        style: TextStyle(
                            fontSize: Get.height/40,
                            fontFamily: "Poppins-Bold",
                            color: AppColors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sign In to Continue ",
                        style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          fontSize: Get.height/45,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: Get.width/15,right: Get.width/15,top: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      cursorColor: AppColors.white,
                      controller: controller.emailcontroller,
                      onChanged: (v){
                        controller.email=v;
                      },
                      style: TextStyle(
                          fontSize: Get.height/50
                      ),
                      decoration: InputDecoration(
                        labelText: "Email",
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
                    Obx(
                          () => TextFormField(
                           onChanged: (v){
                           controller.password=v;
                           },
                        controller: controller.passwordcontroller,
                        obscureText: controller.passShowhide,
                        cursorColor: AppColors.white,
                        validator:  Validators.validatePassword,
                        style: TextStyle(
                            fontSize: Get.height/50
                        ),
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                controller.passShowhide =
                                !controller.passShowhide;
                              },
                              child: controller.passShowhide
                                  ? const Icon(Icons.visibility_off,
                                color: AppColors.white,
                              )
                                  : const Icon(Icons.visibility,
                                color: AppColors.white,
                              ),
                            ),
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
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height/40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                              ()=> Checkbox(
                              shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(width: 1.0, color: AppColors.white),
                              ),

                              checkColor:AppColors.white,

                              activeColor: AppColors.red,
                              value: controller.rememberme,
                              onChanged: (val) {
                                controller.rememberme=val!;
                                /*Get.find<Prefs>().password.val=controller.emailcontroller.text;
                                Get.find<Prefs>().email.val=controller.passwordcontroller.text;
                                if(val==false){
                                  Get.find<Prefs>().password.val="";
                                  Get.find<Prefs>().email.val="";
                                  Get.find<Prefs>().remember.val=false;
                                  print("controller.rememberme"+controller.rememberme.toString());
                                }*/
                              }
                          ),
                        ),
                        Text("Remember me",
                          style: TextStyle(
                              color: AppColors.white.withOpacity(0.6),
                              fontSize: Get.height/55,
                              fontFamily: 'Poppins-Regular'
                          ),)
                      ],
                    ),
                    const SizedBox(
                      height:0,
                    ),
                    SizedBox(height: Get.height/40,),
                    CustomTextButtonWidget(
                      onPressed: (){
                        Get.toNamed(Routes.DASHBOARD);
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
                      title: "Login",
                      textColor:AppColors.red ,

                      fontfamily: "Poppins-Bold",

                      icon: "assets/ic_login_arrow.png",


                    ),
                    SizedBox(height: Get.height/40,),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.FORGETPASSWORD);
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: Get.height/55,
                              color: AppColors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height/40,),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Don't have account?",
                          style: TextStyle(
                              fontFamily: "Poppins-Regular",
                              fontSize: Get.height/55,
                              color: AppColors.white),
                        ),
                      ),
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
