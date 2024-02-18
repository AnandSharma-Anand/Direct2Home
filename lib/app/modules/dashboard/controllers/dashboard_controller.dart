import 'package:direct2home/app/modules/cart/controllers/cart_controller.dart';
import 'package:direct2home/app/modules/cart/views/cart_view.dart';
import 'package:direct2home/app/modules/categories/controllers/categories_controller.dart';
import 'package:direct2home/app/modules/categories/views/categories_view.dart';
import 'package:direct2home/app/modules/homepage/controllers/homepage_controller.dart';
import 'package:direct2home/app/modules/homepage/views/homepage_view.dart';

import 'package:direct2home/app/modules/settings/controllers/settings_controller.dart';
import 'package:direct2home/app/modules/settings/views/settings_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DashboardController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  final RxInt _changeindexvalue = 0.obs;
  int get changeindexvalue => _changeindexvalue.value;
  set changeindexvalue(int v) => _changeindexvalue.value = v;

  final _body = <String, dynamic>{};
  final _body2 = <String, dynamic>{};
  final _body3 = <String, dynamic>{};
  final _body4= <String, dynamic>{};
  final _body5= <String, dynamic>{};
  final _body6= <String, dynamic>{};

  String? name;



  final RxString _token = ''.obs;
  String get token => _token.value;
  set token(String v) => _token.value = v;

  final RxString _profilepic = ''.obs;
  String get profilepic => _profilepic.value;
  set profilepic(String v) => _profilepic.value = v;

  final RxString _emailuser = ''.obs;
  String get emailuser => _emailuser.value;
  set emailuser(String v) => _emailuser.value = v;

  final RxString _username = ''.obs;
  String get username => _username.value;
  set username(String v) => _username.value = v;

  final RxInt _count = 0.obs;
  int get count => _count.value;
  set count(int v) => _count.value = v;

  final RxInt _countindex = (0).obs;
  int get countindex => _countindex.value;
  set countindex(int v) => _countindex.value = v;

  Map<String, dynamic> data = {};



  final RxString _prefProfileImage = 'http://10.0.8.245/erp/images/userphoto/no_img.jpg'.obs;
  String get prefProfileImage => _prefProfileImage.value;
  set prefProfileImage(String v) => _prefProfileImage.value = v;


  RxBool _status = false.obs;
  bool get status => _status.value;
  set status(bool v) => _status.value = v;

  final RxString _firebase_device_token = ''.obs;
  String get firebase_device_token => _firebase_device_token.value;
  set firebase_device_token(String v) => _firebase_device_token.value = v;



  final RxBool _isOnline = true.obs;
  bool get isOnline => _isOnline.value;
  set isOnline(bool v) => _isOnline.value = v;

  var iosDeviceInfos;
  var password;
  var email;
  var androidDeviceInfos;
  //PackageInfo? packageInfo;
  @override
  void onReady() async{
    super.onReady();

    //  checkLoginStatusApiPost(email,password,"","");
    // firebase_Dashboard();
    //packageInfo = await PackageInfo.fromPlatform();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

  }

  final body = [
     HomepageView(),
     CategoriesView(),
     CartView(),
     SettingsView(),
  ];


  void onTap(index) {
    if(index==0){
      Get.find<DashboardController>().onInit();
      Get.find<DashboardController>().onReady();
      if(Get.isRegistered<HomepageController>()){
        // Get.find<HomeController>().onReady();
        // Get.find<HomeController>().onInit();
      }
    }
    else if(index==1){
      if(Get.isRegistered<CategoriesController>()){

        Get.find<CategoriesController>().onReady();
        Get.find<CategoriesController>().onInit();
      }



    }
    else if(index==2){
      if(Get.isRegistered<CartController>()){
        Get.find<CartController>().onReady();
        Get.find<CartController>().onInit();
      }
    }
    else if(index==3){
      if(Get.isRegistered<SettingsController>()){
        Get.find<SettingsController>().onInit();
        Get.find<SettingsController>().onReady();
        // Get.find<HomeController>().onInit();
      }
    }
    changeindexvalue = index;
    print(changeindexvalue.toString(),
    );
  }



  // Widget drawer() {
  //   return Container(
  //     color: AppColors.white,
  //     width: Get.width / 1.5,
  //     height: Get.height,
  //     child: SingleChildScrollView(
  //       child: Obx(
  //             () => Column(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.only(top: 30),
  //               child: Row(
  //                 children: [
  //                   Expanded(
  //                     child: Container(
  //                       width: Get.width,
  //                       height: logindata!.roleCode=="TEACHER"?Get.height /5:Get.height / 3.5,
  //                       child: Padding(
  //                         padding: const EdgeInsets.only(top: 30.0, left: 10),
  //                         child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.start,
  //                           children: [
  //                             logindata!.branchLogo!.isEmpty
  //                                 ? Image.asset(
  //                               'images/dp.png',
  //                               height: Get.height / 30,
  //                             )
  //                                 : ClipRRect(
  //                               borderRadius: BorderRadius.circular(50),
  //                               child: Image.network(
  //                                 logindata?.branchLogo ?? "",
  //                                 height: Get.height / 15,
  //                                 width: 90,
  //                               ),
  //                             ),
  //                             SizedBox(
  //                               height: 10,
  //                             ),
  //                             Text(
  //                                 logindata!.name.toString().toUpperCase(),
  //                                 style: Utils.mainHeadingStyle()
  //                             ),
  //                             logindata?.className == null
  //                                 ? SizedBox.shrink()
  //                                 : SizedBox(
  //                               height: 10,
  //                             ),
  //                             logindata?.className == null
  //                                 ? SizedBox.shrink()
  //                                 : Text(
  //                                 (logindata!.className.toString()) +
  //                                     " | " +
  //                                     (logindata!.sectionName.toString()),
  //                                 style: Utils.normalStyle()
  //                             ),
  //                             SizedBox(
  //                               height: 10,
  //                             ),
  //                             /*========Session=======*/
  //                             Obx(
  //                                   () => logindata?.roleCode == "STUDENT"
  //                                   ? Container(
  //                                 width: Get.width / 4.5,
  //                                 height: Get.height / 30,
  //                                 decoration: BoxDecoration(
  //                                     color: AppColors.ligt_blck,
  //                                     borderRadius: BorderRadius.circular(50)),
  //                                 child: Center(
  //                                   child: Text(
  //                                     logindata?.sessionsName ?? "",
  //                                     style: TextStyle(
  //                                       color: AppColors.white,
  //                                       fontSize:  Get.height / 65,
  //                                       fontFamily: "Poppins-Regular",
  //                                     ),
  //                                   ),
  //                                 ),
  //                               )
  //                                   : Row(
  //                                 children: [
  //                                   Expanded(
  //                                     child: Container(
  //
  //                                       child: Center(
  //                                         child: Text(
  //                                           logindata!.schoolName! ,
  //                                           textAlign: TextAlign.center,style: TextStyle(
  //                                           color: AppColors.light_black,
  //                                           fontSize:  Get.height / 65,
  //                                           fontFamily: "Poppins-Regular",
  //                                         ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.only(left: 17.0, right: 17),
  //               child: Container(
  //                 width: Get.width,
  //                 color: AppColors.ligt_blck,
  //                 height: 1,
  //               ),
  //             ),
  //             Container(
  //               child: Column(
  //                 children: [
  //
  //
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                     child: InkWell(
  //                       onTap: () {
  //                         Get.back();
  //                         changeindexvalue = 0;
  //                       },
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Image.asset(
  //                                 'images/ic_home.png',
  //                                 height: Get.height / 50,
  //                                 color: AppColors.ligt_blck,
  //                               ),
  //                               SizedBox(
  //                                 width: 10,
  //                               ),
  //                               Text(
  //                                   'Home',
  //                                   style: Utils.sideMenusStyle()
  //                               ),
  //                             ],
  //                           ),
  //                           Icon(
  //                             Icons.arrow_forward_ios,
  //                             color: AppColors.ligt_blck,
  //                             size: Get.height / 50,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   // Todo offline data
  //
  //                   Obx(
  //                         () => logindata?.roleCode == "TEACHER"
  //                         ? Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15.0, right: 15),
  //                       child: Container(
  //                         width: Get.width,
  //                         color: AppColors.button_color,
  //                         height: 1,
  //                       ),
  //                     )
  //                         : SizedBox.shrink(),
  //                   ),
  //
  //                   Obx(
  //                         () => logindata?.roleCode == "TEACHER"
  //                         ? Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                       child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                           /*Get.toNamed(
  //                               Routes.HOMEWORKCREATEDLISTTEACHER);*/
  //                         },
  //                         child: Row(
  //                           mainAxisAlignment:
  //                           MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Row(
  //                               children: [
  //                                 Icon(
  //                                   Icons.library_books,
  //                                   color: AppColors.ligt_blck,
  //                                   size:  Get.height / 50,
  //                                 ),
  //
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                     'Homework',
  //                                     style: Utils.sideMenusStyle()
  //                                 ),
  //                               ],
  //                             ),
  //                             Icon(
  //                               Icons.arrow_forward_ios,
  //                               color: AppColors.ligt_blck,
  //                               size:  Get.height / 50,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     )
  //                         : SizedBox.shrink(),
  //                   ),
  //                   Obx(
  //                         ()=>logindata?.roleCode == "TEACHER"
  //                         ?  Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15.0, right: 15),
  //                       child: Container(
  //                         width: Get.width,
  //                         color: AppColors.button_color,
  //                         height: 1,
  //                       ),
  //                     )
  //                         : SizedBox.shrink(),
  //                   ),
  //                   Obx(
  //                         () => logindata?.roleCode == "TEACHER"
  //                         ? Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                       child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                           Get.toNamed(
  //                               Routes.ASSIGNMENT);
  //                         },
  //                         child: Row(
  //                           mainAxisAlignment:
  //                           MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Row(
  //                               children: [
  //                                 Icon(
  //                                   Icons.library_books,
  //                                   color: AppColors.ligt_blck,
  //                                   size:  Get.height / 50,
  //                                 ),
  //
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                     'Assignment',
  //                                     style: Utils.sideMenusStyle()
  //                                 ),
  //                               ],
  //                             ),
  //                             Icon(
  //                               Icons.arrow_forward_ios,
  //                               color: AppColors.ligt_blck,
  //                               size:  Get.height / 50,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     )
  //                         : SizedBox.shrink(),
  //                   ),
  //                   Obx(
  //                         () => logindata?.roleCode == "TEACHER"
  //                         ? Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15.0, right: 15),
  //                       child: Container(
  //                         width: Get.width,
  //                         color: AppColors.button_color,
  //                         height: 1,
  //                       ),
  //                     )
  //                         : SizedBox.shrink(),
  //                   ),
  //                   Obx(
  //                         ()=>
  //                     logindata?.roleCode != "PARENT"
  //                         ?Padding(
  //                       padding:
  //                       EdgeInsets.only(left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                       child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                           Get.toNamed(Routes.BOOKMARK);
  //                           //changeindexvalue = 2;
  //                         },
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Row(
  //                               children: [
  //                                 Image.asset(
  //                                   "images/bookmark.png",
  //                                   height: Get.height / 50,
  //                                   color: AppColors.ligt_blck,
  //                                 ),
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                     'Bookmarks',
  //                                     style: Utils.sideMenusStyle()
  //                                 ),
  //                               ],
  //                             ),
  //                             Icon(
  //                               Icons.arrow_forward_ios,
  //                               color: AppColors.ligt_blck,
  //                               size:  Get.height / 50,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     )
  //                         :SizedBox.shrink(),
  //                   ),
  //
  //                   Obx(
  //                         ()=>logindata?.roleCode != "PARENT"
  //                         ?Padding(
  //                       padding: EdgeInsets.only(
  //                           left: 15.0, right: 15),
  //                       child: Container(
  //                         width: Get.width,
  //                         color: AppColors.button_color,
  //                         height: 1,
  //                       ),
  //                     )
  //                         :SizedBox.shrink(),
  //                   ),
  //                   Padding(
  //                     padding:
  //                     EdgeInsets.only(left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                     child: InkWell(
  //                       onTap: () {
  //                         Get.back();
  //                         changeindexvalue = 2;
  //                       },
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Image.asset(
  //                                 'images/ic_setting.png',
  //                                 height:  Get.height / 50,
  //                                 color: AppColors.ligt_blck,
  //                               ),
  //                               SizedBox(
  //                                 width: 10,
  //                               ),
  //                               Text(
  //                                   'Settings',
  //                                   style: Utils.sideMenusStyle()
  //                               ),
  //                             ],
  //                           ),
  //                           Icon(
  //                             Icons.arrow_forward_ios,
  //                             color: AppColors.ligt_blck,
  //                             size:  Get.height / 50,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //
  //                   /*Padding(
  //                     padding: EdgeInsets.only(
  //                         top: Get.height / 45, left: 15.0, right: 15),
  //                     child: Container(
  //                       width: Get.width,
  //                       color: AppColors.button_color,
  //                       height: 1,
  //                     ),
  //                   ),
  //                   Padding(
  //                       padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
  //                       child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                           Get.toNamed(Routes.CLASS);
  //                           //changeindexvalue = ;
  //                         },
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Row(
  //                               children: [
  //                                 Image.asset(
  //                                   'images/classnotice.png',
  //                                   height:  Get.height / 50,
  //                                   color: AppColors.ligt_blck,
  //                                 ),
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                     'Class Notice',
  //                                     style: Utils.sideMenusStyle()
  //                                 ),
  //                               ],
  //                             ),
  //                             Icon(
  //                               Icons.arrow_forward_ios,
  //                               color: AppColors.ligt_blck,
  //                               size:  Get.height / 50,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),
  //                   Padding(
  //                     padding: EdgeInsets.only(
  //                         top: Get.height / 45, left: 15.0, right: 15),
  //                     child: Container(
  //                       width: Get.width,
  //                       color: AppColors.button_color,
  //                       height: 1,
  //                     ),
  //                   ),
  //                   Padding(
  //                       padding:
  //                       const EdgeInsets.only(left: 15, top: 25, right: 15),
  //                       child: InkWell(
  //                         onTap: () {
  //                           Get.back();
  //                           if(logindata?.roleCode=="PARENT"){
  //                             Get.toNamed(
  //                                 Routes.PARENTATTENDANCE,arguments: "school_gallery");
  //                           }else{
  //
  //                             Get.toNamed(
  //                                 Routes.SCHOOLGALLERY);
  //                           }
  //
  //                           //changeindexvalue = ;
  //                         },
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                           children: [
  //                             Row(
  //                               children: [
  //                                 Image.asset(
  //                                   'images/gallery.png',
  //                                   height:  Get.height / 50,
  //                                   color: AppColors.ligt_blck,
  //                                 ),
  //                                 SizedBox(
  //                                   width: 10,
  //                                 ),
  //                                 Text(
  //                                     'School Gallery',
  //                                     style: Utils.sideMenusStyle()
  //                                 ),
  //                               ],
  //                             ),
  //                             Icon(
  //                               Icons.arrow_forward_ios,
  //                               color: AppColors.ligt_blck,
  //                               size:  Get.height / 50,
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ),*/
  //
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 15.0, right: 15),
  //                     child: Container(
  //                       width: Get.width,
  //                       color: AppColors.button_color,
  //                       height: 1,
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                     child: InkWell(
  //                       onTap: () {
  //                         Share.share('https://play.google.com/store/apps/details?id=com.erp_school');
  //
  //                       },
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Icon(Icons.share,color: AppColors.ligt_blck,size:  Get.height / 50,),
  //                               SizedBox(width: 10,),
  //                               Text('Share',
  //                                   style: Utils.sideMenusStyle()
  //                               ),
  //
  //                             ],
  //                           ),
  //                           Icon(
  //                             Icons.arrow_forward_ios,
  //                             color: AppColors.ligt_blck,
  //                             size: Get.height / 50,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding: EdgeInsets.only(left: 15.0,right: 15),
  //                     child: Container(
  //                       width: Get.width,
  //                       color: AppColors.button_color,
  //                       height: 1,
  //                     ),
  //                   ),
  //                   Padding(
  //                     padding:
  //                     EdgeInsets.only(left: 15, top:Get.height/45,bottom:Get.height/45 , right: 15),
  //                     child: InkWell(
  //                       onTap: () {
  //                         Get.back();
  //                         Get.dialog(Container(
  //                           child: Center(
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(
  //                                   left: 50.0, right: 50),
  //                               child: ClipRRect(
  //                                 borderRadius: BorderRadius.circular(15),
  //                                 child: Material(
  //                                   child: Container(
  //                                     width: Get.width,
  //                                     height: Get.height / 5,
  //                                     child: Column(
  //                                       children: [
  //                                         SizedBox(
  //                                           height: Get.height / 75,
  //                                         ),
  //                                         /*Text("Logout",
  //                                                 style: TextStyle(
  //                                                     color: AppColors.black,
  //                                                     fontFamily: "Poppins-Bold",
  //                                                     fontSize: 17
  //                                                 ),),*/
  //                                         Image.asset(
  //                                           'images/ic_alert.png',
  //                                           height: Get.height / 20,
  //                                         ),
  //                                         SizedBox(
  //                                           height: Get.height / 75,
  //                                         ),
  //                                         Text(
  //                                             "Do you want to exit?",
  //                                             style: Utils.popupnormalStyle()
  //                                         ),
  //                                         SizedBox(
  //                                           height: Get.height / 55,
  //                                         ),
  //                                         Padding(
  //                                           padding: EdgeInsets.only(
  //                                             left: Get.width / 5,
  //                                             right: Get.width / 5,
  //                                           ),
  //                                           child: Row(
  //                                             children: [
  //                                               Expanded(
  //                                                 child: InkWell(
  //                                                   onTap: () {
  //                                                     Get.find<Prefs>()
  //                                                         .accessToken
  //                                                         .val = "";
  //                                                     Get.back();
  //                                                     delete();
  //                                                     Get.offAllNamed(
  //                                                       Routes.LOGIN_SCREEN,
  //                                                     );
  //                                                   },
  //                                                   child: Container(
  //                                                     height: Get.height/25,
  //                                                     width: Get.width/85,
  //                                                     decoration: BoxDecoration(
  //                                                         color: AppColors
  //                                                             .custgreen,
  //                                                         borderRadius:
  //                                                         BorderRadius
  //                                                             .circular(5)),
  //                                                     child: Center(
  //                                                       child: Text(
  //                                                           "Yes",
  //                                                           style: Utils.popupSemiBoldStyle(AppColors.white)
  //                                                       ),
  //                                                     ),
  //                                                   ),
  //                                                 ),
  //                                               ),
  //                                               SizedBox(
  //                                                 width: Get.width/25,
  //                                               ),
  //                                               Expanded(
  //                                                 child: InkWell(
  //                                                   onTap: () {
  //                                                     Get.back();
  //                                                   },
  //                                                   child: Container(
  //                                                     height: Get.height/25,
  //                                                     width: Get.width/85,
  //                                                     decoration: BoxDecoration(
  //                                                         color: AppColors
  //                                                             .customred,
  //                                                         borderRadius:
  //                                                         BorderRadius
  //                                                             .circular(5)),
  //                                                     child: Center(
  //                                                       child: Text(
  //                                                           "No",
  //                                                           style: Utils.popupSemiBoldStyle(AppColors.white)
  //                                                       ),
  //                                                     ),
  //                                                   ),
  //                                                 ),
  //                                               ),
  //                                             ],
  //                                           ),
  //                                         )
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                         ));
  //                       },
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                         children: [
  //                           Row(
  //                             children: [
  //                               Image.asset(
  //                                 'images/ic_logout.png',
  //                                 height: Get.height / 50,
  //                                 color: AppColors.ligt_blck,
  //                               ),
  //                               SizedBox(
  //                                 width: 10,
  //                               ),
  //                               Text(
  //                                   'Logout',
  //
  //                                   style: Utils.sideMenusStyle()
  //                               ),
  //                             ],
  //                           ),
  //                           Icon(
  //                             Icons.arrow_forward_ios,
  //                             color: AppColors.ligt_blck,
  //                             size:  Get.height / 50,
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height:Get.height/45,
  //                   ),
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(100),
  //                     child: Image.asset(
  //                       "images/frontlogo.jpg",
  //                       height:Get.height/20,
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: Get.height/55,
  //                   ),
  //                   Text(
  //                     '© Copyright by Aasoka',
  //                     textAlign: TextAlign.center,
  //                     style: TextStyle(
  //                       color: AppColors.ligt_blck,
  //                       fontSize: 12,
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 5,
  //                   ),
  //
  //                   InkWell(
  //                     onTap: (){
  //                       makePhoneCall("1800 572 2233");
  //                     },
  //                     child: Text(
  //                       'Toll free number : 1800 572 2233',
  //                       textAlign: TextAlign.center,
  //                       style: TextStyle(
  //                         color: AppColors.ligt_blck,
  //                         fontSize: 12,
  //                       ),
  //                     ),
  //                   ),
  //                   /*  SizedBox(
  //                     height: 10,
  //                   ),
  //
  //                   Text(
  //                     'App Version : ' +  packageInfo!.version.toString(),
  //                     textAlign: TextAlign.center,
  //                     style: TextStyle(
  //                       color: AppColors.ligt_blck,
  //                       fontSize: 12,
  //                     ),
  //                   ),*/
  //                   SizedBox(
  //                     height: Get.height/55,
  //                   ),
  //
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  // Future<void> makePhoneCall(String phoneNumber) async {
  //   final Uri launchUri = Uri(
  //     scheme: 'tel',
  //     path: phoneNumber,
  //   );
  //   await launchUrl(launchUri);
  // }
  //
  // void getId() async {
  //   var deviceInfo = DeviceInfoPlugin();
  //   if (Platform.isIOS) { // import 'dart:io'
  //     var iosDeviceInfo = await deviceInfo.iosInfo;
  //     iosDeviceInfos=iosDeviceInfo.identifierForVendor; // unique ID on iOS
  //   } else {
  //     var androidDeviceInfo = await deviceInfo.androidInfo;
  //     print("Device ID "+androidDeviceInfo.id.toString());
  //     androidDeviceInfos=androidDeviceInfo.id;// unique ID on Android
  //   }
  // }
  //
  // void loginApiPost(email,password) {
  //   _body3['email'] = email;
  //   _body3['password'] = password;
  //   _body3['device_token'] = firebase_device_token;
  //   _body3['device_id'] = Platform.isIOS?iosDeviceInfos:androidDeviceInfos;
  //   _body3['device_type'] = Platform.isIOS?"IOS":"Android";
  //   _body3['ssid'] = /*_wifiObject!.ssid.toString()*/"";
  //
  //   printInfo(info: 'body: $_body3');
  //   _apiHelper.Login(FormData(_body3)).futureValue(
  //           (v) {
  //
  //
  //         printInfo(info:v.message!);
  //         if (v.data != null) {
  //           Get.find<Prefs>().clearDM();
  //           dynamicmoduleApiPost(v.data!.id!);
  //           Get.find<Prefs>().accessToken.val="";
  //           Storage.clearStorage();
  //           Storage.saveValue(Constants.USER_DATA, v);
  //           Get.find<Prefs>().accessToken.val=v.accessToken??"";
  //           Get.find<Prefs>().profileImage.val="";
  //           Get.find<Prefs>().password.val=password;
  //           Get.find<Prefs>().profileImage.val=v.data!.profilePic??"";
  //           Storage.saveValue(Constants.USER_DATA_LIST, v.data);
  //           if(v.parentData!=null){
  //             Storage.saveValue(Constants.PARENT_DATA_LIST, v.parentData);
  //           }
  //           printInfo(info:Get.find<Prefs>().accessToken.val.toString());
  //         }
  //       }
  //   );
  // }
  //
  // void delete() async {
  //   // Assuming that the number of rows is the id for the last row.
  //   final id = await dbHelper.queryRowCount();
  //   final rowsDeleted = await dbHelper.delete(id!);
  //   await dbHelper.deleteSubject();
  //   await dbHelper.deleteChapter();
  //   await dbHelper.deleteTopic();
  //   await dbHelper.deleteDownload();
  //   print('deleted $rowsDeleted row(s): row $id');
  // }
  //
  // void updatedb(LoginResponse loginResponse) async {
  //   // Assuming that the number of rows is the id for the last row.
  //   Map<String, dynamic> row = {
  //     DatabaseHelper.columnUserId : loginResponse.data!.userId,
  //     DatabaseHelper.columnUserName  : loginResponse.data!.name,
  //     DatabaseHelper.columnUserEmail  :  loginResponse.data!.email,
  //     DatabaseHelper.columnUserPassword  : Get.find<Prefs>().password.val,
  //     DatabaseHelper.columnUserProfilepic  : loginResponse.data!.profilePic
  //   };
  //   final id  = await dbHelper.update(row);
  //   print('inserted row id: $id');
  // }
  // void dynamicmoduleApiPost(int id) {
  //   _body4['user_id']=id;
  //   _apiHelper.DynamicModule(_body4).futureValue((v) {
  //     printInfo(info: v.message!);
  //     Storage.saveValue(Constants.DYAMICMODULE_Response, v);
  //     printInfo(info: "SP Dynamic Login Module" +Get.find<Prefs>().dynamicModule.val.data.toString());
  //     Get.offAllNamed(Routes.DASHBOARD,arguments: data);
  //   },
  //   );
  // }
  // void offlineApiPost() {
  //   _body6['user_id']=logindata!.userId;
  //   printInfo(info: 'body: $_body6');
  //   _apiHelper.getOffLineDataApi(_body6).futureValue((v) {
  //     printInfo(info: v.toString());
  //     offlineDataList=v.data??[];
  //     isOnline=false;
  //     Get.find<Prefs>().onlineMode.val='false';
  //     Storage.saveValue(Constants.OFFLINEDATA_RESPONSE, v);
  //     printInfo(info: "SP OFFLINEDATA_RESPONSE" + Storage.OffLineDataResponse!.data.toString());
  //     if(Get.isRegistered<HomeController>()){
  //       Get.find<HomeController>().onInit();
  //
  //     }
  //     // if( Storage.OffLineDataResponse!.data!.isNotEmpty){
  //     //   Get.toNamed(Routes.OFFLINE_CONTENT);
  //     // }
  //     // Get.offAllNamed(Routes.DASHBOARD,arguments: data);
  //   },
  //   );
  // }

/*  void firebase_Dashboard() async{
    await FirebaseAnalytics.instance.logEvent(
      name: "Fir_DASHBOARD",
      parameters: {
        "USER_ID": logindata?.id ?? "",
        "ROLE": logindata?.roleCode ??"",
      },
    );
  }*/

}
