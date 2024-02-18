import 'package:carousel_slider/carousel_slider.dart';
import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../routes/app_pages.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.grey.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Obx(
                    ()=> controller.shimmerStatus==false
                        ?controller.getSliderlist.isNotEmpty
                        ?CarouselSlider.builder(
                        itemCount: controller.getSliderlist.length,
                         itemBuilder: (BuildContext context,  index, int pageViewIndex) =>
                          Image.network(controller.getSliderlist[index].photo.toString()), options: CarouselOptions(
                      height: 150.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16/9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                    )
                        :Shimmer.fromColors(
                      baseColor: AppColors.header_color.withOpacity(0.2),
                      highlightColor: AppColors.white,
                      child: Container(
                        height: Get.height/4,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    )
                        :Shimmer.fromColors(
                      baseColor: AppColors.header_color.withOpacity(0.2),
                      highlightColor: AppColors.white,
                      child: Container(
                        height: Get.height/4,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    )


            ),
            SizedBox(height: Get.height/55,),
            Obx(
                    ()=> controller.shimmerStatus==false
                    ?controller.getBannerlist.isNotEmpty
                    ?CarouselSlider.builder(
                     itemCount: controller.getBannerlist.length,
                     itemBuilder: (BuildContext context,  index, int pageViewIndex) =>
                      Image.network(controller.getBannerlist[index].photo.toString()), options: CarouselOptions(
                     height: Get.height/6,
                     enlargeCenterPage: true,
                     autoPlay: true,
                     autoPlayCurve: Curves.fastOutSlowIn,
                     enableInfiniteScroll: true,
                     autoPlayAnimationDuration: const Duration(milliseconds: 800),
                     viewportFraction: 0.7,
                ),
                )
                        :Shimmer.fromColors(
                      baseColor: AppColors.header_color.withOpacity(0.2),
                      highlightColor: AppColors.white,
                      child: Container(
                        height: Get.height/4,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    )
                    :Shimmer.fromColors(
                  baseColor: AppColors.header_color.withOpacity(0.2),
                  highlightColor: AppColors.white,
                  child: Container(
                    height: Get.height/4,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                )


            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.BRANDS);
                    },
                    child: Card(
                    elevation:1,
                    shadowColor: AppColors.black,
                      child: Container(
                        height: Get.height/12,
                        width: Get.width/2.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/brands.png", height: Get.height/35,),
                            const SizedBox(height: 5,),
                            Text("Brands", style: Utils.textMediumGray12sp(),)

                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation:1,
                    shadowColor: AppColors.black,
                    child: Container(
                      height: Get.height/12,
                      width: Get.width/2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/top_sellers.png", height: Get.height/35,),
                          const SizedBox(height: 5,),
                          Text("Brands", style: Utils.textMediumGray12sp(),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text("Featured Categories", style: Utils.text20SPBold(),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                ()=>controller.getCategoriyFeaturelist.isNotEmpty
                    ? GridView.builder(
                     shrinkWrap: true,
                     physics: const NeverScrollableScrollPhysics(),
                     itemCount: controller.getCategoriyFeaturelist.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      childAspectRatio: Get.width / Get.height / 0.5 * 2.5,
                      mainAxisSpacing: 0,
                    ),
                     itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: (){
                        Get.toNamed(Routes.SUBCATEGORY, arguments: controller.getCategoriyFeaturelist[index].id);
                      },
                      child: Card(
                      elevation:1,
                      shadowColor: AppColors.black,
                      child: Container(
                        height: Get.height/9,
                        width: Get.width/2.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.white
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(controller.getCategoriyFeaturelist[index].banner.toString(), height: Get.height/12,),
                            const SizedBox(width: 15,),
                            Expanded(child: Text(controller.getCategoriyFeaturelist[index].name.toString(), style: Utils.textbold14sp(),))

                          ],
                        ),
                      ),
                  ),
                    );
                },)
                    :SizedBox.shrink(),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: Get.height/4,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4),
                          BlendMode.dstATop),
                      image: const AssetImage(
                        'assets/background_1.png',
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Featured Products", style: Utils.textwhite20SPBold(),),
                ),
                Positioned(
                  height: Get.height/4,
                  left: Get.width/3,
                  child: const Center(
                    child: Text("No related Products", style: TextStyle(
                      color: AppColors.gray
                    ),),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.all( 8.0),
              child: Text("All Product", style: Utils.text20SPBold(),),
            ),
            Obx(
                  ()=> controller.getAllProductlist.isNotEmpty
                  ?GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: controller.getAllProductlist.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (ctx, i) {
                      return InkWell(
                        onTap: (){
                          Get.toNamed(Routes.PRODUCTDETAILS, arguments: controller.getAllProductlist[i].id);
                        },
                        child: Card(
                          child: Container(
                            height: Get.height/3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    controller.getAllProductlist[i].thumbnailImage.toString(),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                                  child: Text(
                                    controller.getAllProductlist[i].name.toString(),
                                    style: Utils.textmedium12dsp(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        controller.getAllProductlist[i].mainPrice.toString(),
                                        style: Utils.textbold12sp(),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },

                  )
                  :const SizedBox.shrink(),
            ),

          const SizedBox(height: 20,)

          ],
        ),
      ),
    );

  }
}
