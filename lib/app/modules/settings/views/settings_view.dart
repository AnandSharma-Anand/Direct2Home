import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../routes/app_pages.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        // appBar: Utils.commonDrawAppBar('More Details'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Get.height/4,
                  width: Get.width,
                  color: AppColors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height / 55,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/dp.jpg',
                              height: Get.width>550?150:80,
                              width: Get.width>550?150:80,
                              fit: BoxFit.cover,
                            )),

                        SizedBox(
                          height: Get.height / 55,
                        ),
                        Text(
                          "Name: Vijay",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: Get.height / 45,
                              fontFamily: 'Poppins-Regular'),
                        ),
                        const SizedBox(height: 10,),

                        Text(
                          'Email: Vijay@gmail.com',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: Get.height / 45,
                              fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                  ),
                ),
                /*----------------Edit Profile & Switch User-------------------*/


                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Get.height / 55,
                        bottom: Get.height / 55,
                        left: Get.width / 25,
                        right: Get.width / 25),
                    child: Container(
                      color: AppColors.custombluelily,
                      height: 1,
                    )
                       ),
                  ),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 0.0,
                        bottom: Get.height / 55,
                        left: Get.width / 25,
                        right: Get.width / 25),
                    child:  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.home_rounded, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "Home",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                        Container(
                          color: AppColors.custombluelily,
                          height: 1,
                        ),
                      ],
                    )
                        ),
                  ),


                //Privacy Policy----------->>
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Utils.showinappWebviewDialog(
                              'https://alts.aasoka.com/privacy-policy');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.shop, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "My Orders",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                //Notifications----------->>
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.toNamed(Routes.NOTIFICATION);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.account_circle_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "My Account",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                //Support Ticket----------->>
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.WISH_LIST);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.favorite_border_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "My favourite",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                         // Get.toNamed(Routes.NOTEPAD);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.settings_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "Setting",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.SIGNUP);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.support_agent_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "Support",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                //About Us----------->>
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Utils.showinappWebviewDialog(
                              'https://aasoka.com/app-about-us');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.info_outline, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "About",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                //Click Here To share----------->>
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          //Share.share('https://play.google.com/store/apps/details?id=com.erp_school');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.share_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "Share",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                //============Logout---------------------//
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.0,
                      bottom: Get.height / 55,
                      left: Get.width / 25,
                      right: Get.width / 25),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                          Utils.commonLogoutPopup(Image.asset("images/logoutpanda.png",
                              height: 240), "Logout", "Are you attempting to logout?",
                                  () {
                                // Get.find<Prefs>().accessToken.val = "";
                                // Get.back();
                                // controller.delete();
                                // Get.offAllNamed(Routes.LOGIN_SCREEN,
                               // );
                              },
                                  () {
                                Get.back();
                              }
                          );

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: Row(
                                children: [
                                  Icon(Icons.logout_outlined, size: Get.height / 45, color: AppColors.red,),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "Logout",
                                    style: Utils.normalBoldLiteBlackStyle(),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.ligt_blck,
                              size: Get.height / 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: AppColors.custombluelily,
                        height: 1,
                      ),
                    ],
                  ),
                ),

                // //============NOTEPAD============//
                //   InkWell(
                //     onTap: (){
                //       Get.toNamed(Routes.NOTEPAD);
                //     },
                //       child: Text("Notepad")),

                SizedBox(
                  height: Get.height / 55,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/splash.png',
                    height: Get.height/20,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: Get.height / 55,
                ),
                Text('Copyright by Direct2Home',
                  style: TextStyle(
                      color: AppColors.newdark_gray,
                      fontSize: Get.height / 60,
                      fontFamily: "Poppins-Regular"),
                ),
                SizedBox(
                  height: 2.0,
                ),
                InkWell(
                  onTap: () {
                    //controller.makePhoneCall('1800 572 2233');
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Toll Free Number : ',
                      style: TextStyle(
                          color: AppColors.newdark_gray,
                          fontSize: Get.height / 60,
                          fontFamily: "Poppins-Regular"),
                      children: <TextSpan>[
                        TextSpan(
                            text: '1800 572 2233',
                            style: TextStyle(
                                color: AppColors.sky_blue,
                                fontSize: Get.height / 60,
                                fontFamily: "Poppins-Regular")),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 55,
                ),
              ],
            ),
          ),
        ));
  }
}
