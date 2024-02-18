import 'package:direct2home/common/Api/Utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../common/appcolors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/categoryproduc_controller.dart';

class CategoryproducView extends GetView<CategoryproducController> {
  const CategoryproducView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBody: true,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: AppColors.light_grey.withOpacity(0.2),
              child: Stack(
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
                    top: Get.height/15,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.back();
                          },
                            child: Icon(Icons.arrow_back, color: AppColors.white, size: Get.height/30,)),
                      Icon(Icons.search, color: AppColors.white, size: Get.height/30,)
                    ],),
                  ),
                  Obx(
                  ()=> controller.shimmerStatus==false
                      ?controller.getProduct.isNotEmpty
                        ?Padding(
                         padding: EdgeInsets.only(top: Get.height/6),
                          child: SizedBox(
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              itemCount: controller.getProduct.length,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                              ),
                              itemBuilder: (ctx, i) {
                                return InkWell(
                                  onTap: (){
                                    Get.toNamed(Routes.PRODUCTDETAILS, arguments: controller.getProduct[i].id);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                            controller.getProduct[i].thumbnailImage.toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                                          child: Text(
                                            controller.getProduct[i].name.toString(),
                                            style: Utils.textmedium12dsp(),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                controller.getProduct[i].mainPrice.toString(),
                                                style: Utils.textbold12sp(),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },

                            ),
                          ),
                        )
                        :Padding(
                          padding: EdgeInsets.only(top: Get.height/6),
                          child: Shimmer.fromColors(
                    baseColor: AppColors.lig_gray,
                    highlightColor: AppColors.white,
                    child: SizedBox(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          itemCount: 8,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (ctx, i) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: Get.height/4,
                                        width: Get.width/5,
                                        decoration: BoxDecoration(
                                            color: AppColors.lig_gray
                                        ),
                                      )
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                                      child: Container(
                                        height: 12,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: AppColors.lig_gray
                                        ),
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: AppColors.lig_gray
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },

                      ),
                    ),
                  ),
                        )
                      :Padding(
                    padding: EdgeInsets.only(top: Get.height/6),
                    child: Shimmer.fromColors(
                      baseColor: AppColors.lig_gray,
                      highlightColor: AppColors.white,
                      child: SizedBox(
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          itemCount: 8,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemBuilder: (ctx, i) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: Get.height/4,
                                        width: Get.width/5,
                                        decoration: BoxDecoration(
                                            color: AppColors.lig_gray
                                        ),
                                      )
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                                      child: Container(
                                        height: 12,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: AppColors.lig_gray
                                        ),
                                      )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 12,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: AppColors.lig_gray
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          },

                        ),
                      ),
                    ),
                  )
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      )


    );
  }
}
