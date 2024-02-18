import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:direct2home/app/routes/app_pages.dart';
import 'package:direct2home/common/Api/Utils/utils.dart';
import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: Get.width,
          height: Get.height/4,
          decoration: BoxDecoration(
            color: AppColors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
              opacity: 1,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
                  BlendMode.srcOver),
              image:  const AssetImage(

                'assets/background_1.png',

              ),
            ),
          ),
        ),
        Positioned(
          top: Get.height/18,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (){
                    Get.offAllNamed(Routes.DASHBOARD);
                  },
                  child: Icon(Icons.arrow_back, color: AppColors.white, size: Get.height/30,)),
              const SizedBox(width: 10,),
              Text("Categories", style: TextStyle(
                  color: AppColors.white,
                  fontSize: Get.height / 45,
                  fontFamily: 'Poppins-Medium'
              ),)
            ],),
        ),
          Obx(
          ()=>controller.getCategoriy.isNotEmpty
              ? Padding(
            padding: EdgeInsets.only(top: Get.height/9),
                child: SizedBox(
                child: GridView.builder(
                  physics: const PageScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: controller.getCategoriy.length,
                  itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Get.toNamed(Routes.SUBCATEGORY,arguments: controller.getCategoriy[index].id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: Get.width/3,
                      height: Get.height,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(
                              color: AppColors.border_color
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding:  const EdgeInsets.only(left: 7,top: 7,bottom: 7,right: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(controller.getCategoriy[index].banner.toString(), fit: BoxFit.cover, height: 60,width: 120,),
                            SizedBox(height: Get.height/75,),
                            Text(controller.getCategoriy[index].name.toString() ,style: Utils.textmedium12dsp(),)
                          ],
                        ),
                      ),
                    ),
                  ),
                );

            },
            ),
          ),
              )
              :Text("No Data"),
          ),
        ],
      ),
    );
  }
}
