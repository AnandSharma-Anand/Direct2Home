import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../../common/appcolors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/brandproduct_controller.dart';

class BrandproductView extends GetView<BrandproductController> {
  const BrandproductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.commonAppBar("title"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
                  ()=> controller.shimmerStatus==false
                      ?controller.getProduct.isNotEmpty
                  ?SizedBox(
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
                  )
                      :Shimmer.fromColors(
                    baseColor: AppColors.light_grey.withOpacity(0.2),
                    highlightColor: AppColors.white,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      padding: EdgeInsets.zero,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.grey
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15)
                            ),

                          ),
                        );

                      },
                    ),
                  )
                      :Shimmer.fromColors(
                    baseColor: AppColors.light_grey.withOpacity(0.2),
                    highlightColor: AppColors.white,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.border_color
                                ),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15)
                            ),

                          ),
                        );

                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    ),
                  )
            ),
          ],
        ),
      ),
    );
  }
}
