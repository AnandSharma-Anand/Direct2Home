import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../../common/appcolors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/brands_controller.dart';

class BrandsView extends GetView<BrandsController> {
  const BrandsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading:  InkWell(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back, color: AppColors.light_black, size: Get.height/30,)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: AppColors.white
          ),
        ),
        title: TextField(
          controller: controller.searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search, color: Colors.grey,)
          ),
          onChanged: (value) {
            // Perform search functionality here
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
            ()=>controller.shimmerStatus==false
                ?controller.getBrandlist.isNotEmpty
                ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: controller.getBrandlist.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: (){
                            Get.toNamed(Routes.BRANDPRODUCT, arguments: controller.getBrandlist[index].id);
                          },
                        child: Padding(
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
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  controller.getBrandlist[index].logo!.isNotEmpty?Image.network(controller.getBrandlist[index].logo.toString(), fit: BoxFit.cover, height: Get.height/12,):Image.asset("assets/placeholder.png",fit: BoxFit.cover, height: Get.height/12),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(controller.getBrandlist[index].name.toString() ,style: Utils.textmedium12dsp(),

                                  ),
                                    )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );

                    }, gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: Get.width / Get.height / 1 * 2.5,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0

                  ),
                  ),
              ),
                )
                :Shimmer.fromColors(
              baseColor: AppColors.header_color.withOpacity(0.2),
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
                      height: 200,
                      width: 300,
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

                }, gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: Get.width / Get.height / 1 * 2.5,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0

              ),
              ),
            )
                :Shimmer.fromColors(
              baseColor: AppColors.header_color.withOpacity(0.2),
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
                      height: 200,
                      width: 300,
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

                }, gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: Get.width / Get.height / 1 * 2.5,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0

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
