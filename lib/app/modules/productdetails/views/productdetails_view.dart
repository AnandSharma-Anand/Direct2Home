import 'package:carousel_slider/carousel_slider.dart';
import 'package:direct2home/common/Api/data/api_helper.dart';
import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../routes/app_pages.dart';
import '../controllers/productdetails_controller.dart';

class ProductdetailsView extends GetView<ProductdetailsController> {
  const ProductdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.offAllNamed(Routes.CATEGORYPRODUC);
          },
            child: const Icon(Icons.arrow_back, color: AppColors.black,)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.shopping_cart_outlined, color: AppColors.ligt_blck,size: 20,),
          ),
          SizedBox(width: 20,),
          Icon(Icons.share_outlined, color: AppColors.light_black,size: 20,),
          SizedBox(width: 20,),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite, color: AppColors.light_black,size: 20,),
          ),
        ],
      ),
      floatingActionButton:Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: Get.height/15,
              width: Get.width/2.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    color: AppColors.red
                ),
                color: AppColors.red,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Add to cart',
                    style: TextStyle(color: AppColors.white, fontSize:Get.height/50,fontFamily: "Poppins-Medium"),),
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Container(
              height: Get.height/15,
              width: Get.width/2.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    color: AppColors.yellow
                ),
                color: AppColors.yellow,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Buy Now',
                    style: TextStyle(color: AppColors.white, fontSize:Get.height/50,fontFamily: "Poppins-Medium"),),
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
            ()=> controller.shimmerStatus==false?
            controller.getproductbyIdList.isNotEmpty
                  ?CarouselSlider(
                    options: CarouselOptions(
                      height: Get.height/3,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16/9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                    items: List.generate(controller.getproductbyIdList.length, (index) => Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(controller.getproductbyIdList[index].thumbnailImage.toString()),
                        ),
                      ),
                    ))
                )
                :Shimmer.fromColors(
              baseColor: AppColors.lig_gray.withOpacity(0.2),
              highlightColor: AppColors.white,
              child: Container(
                height: Get.height/3,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            )
                :Shimmer.fromColors(
              baseColor: AppColors.lig_gray.withOpacity(0.2),
              highlightColor: AppColors.white,
              child: Container(
                height: Get.height/3,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            )

            ),
            Obx(
            ()=> controller.shimmerStatus==false
                ?controller.getproductbyIdList.isNotEmpty
                  ?ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.getproductbyIdList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(left: Get.width/35, top: Get.height/25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.getproductbyIdList[index].name.toString(),
                            style: Utils.textsemiBold14sp(),),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 12, color: AppColors.grey,),
                                const Icon(Icons.star, size: 12, color: AppColors.grey,),
                                const Icon(Icons.star, size: 12, color: AppColors.grey,),
                                const Icon(Icons.star, size: 12, color: AppColors.grey,),
                                const SizedBox(width: 10,),
                                Text("(${controller.getproductbyIdList[index].ratingCount})", style: Utils.textmedium12dsp(),),


                              ],
                            ),
                            const SizedBox(height: 10,),
                            Text("${controller.getproductbyIdList[index].mainPrice}/${controller.getproductbyIdList[index].unit}", style: TextStyle(
                                color: AppColors.red_text,
                                fontSize: Get.height / 45,
                                fontFamily: 'Poppins-Bold'),),
                            const SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Container(
                                height: Get.height/13,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.lig_gray
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Seller", style: Utils.textmedium10spGray_text(),),
                                          Text(controller.getproductbyIdList[index].shopName.toString(),style: Utils.textbold14sp()),
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                             color: AppColors.white
                                       ),
                                          child:  Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Image.asset("assets/chat.png" ,),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("Quantity:", style: Utils.gray_textmedium12sp(),),
                                const SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                    if(controller.quantity>1){
                                      controller.quantity-1;
                                    }
                                  },
                                  child: Container(
                                      height: Get.height/25,
                                      width: Get.width/12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                        color: Colors.grey.shade50,
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/minus.png",color:AppColors.black, height: 20, width: 10,fit: BoxFit.fill,),
                                      )),
                                ),
                                const SizedBox(width: 10,),
                                Obx(
                                 ()=> Text(controller.quantity.toString(), style: Utils.textbold14sp(),)),
                                const SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                    controller.quantity=controller.quantity+1;

                                  },
                                  child: Container(
                                      height: Get.height/25,
                                      width: Get.width/12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.grey.shade50,
                                      ),
                                      child:  Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset("assets/plus.png", color:AppColors.black, height: 20, width: 10,fit: BoxFit.fill,),
                                      )),
                                ),
                                const SizedBox(width: 10,),
                                Text("(${controller.getproductbyIdList[index].calculablePrice.toString()})", style: Utils.textbold14sp(),),


                              ],
                            ),
                            const SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Container(
                                height: Get.height/20,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.yellow.withOpacity(0.4)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                                  child: Row(
                                    children: [
                                      Text("Total price", style: Utils.textmedium10spGray_text(),),
                                      SizedBox(width: Get.width/8,),
                                      Text(controller.getproductbyIdList[index].currencySymbol.toString(),style: TextStyle(
                                          color: AppColors.red_text,
                                          fontSize: Get.height / 45,
                                          fontFamily: 'Poppins-Bold')),
                                      Text(controller.getproductbyIdList[index].calculablePrice.toString(),style: TextStyle(
                                          color: AppColors.red_text,
                                          fontSize: Get.height / 45,
                                          fontFamily: 'Poppins-Bold')),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Text("Description:",style: Utils.textbold14sp()),
                                const SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(controller.getproductbyIdList[index].description??"No description is available" ,style:  TextStyle(
                                            color: AppColors.ligt_blck,
                                            fontSize: Get.width>550?Get.height / 65:Get.height / 55,
                                            fontFamily: 'Poppins-Bold'),
                                            maxLines: 5,),
                                    ),
                                  ],
                                ),
                            const SizedBox(height: 30,),
                          ],
                        ),
                      );

                  },)
                :Shimmer.fromColors(
              baseColor: AppColors.lig_gray.withOpacity(0.2),
              highlightColor: AppColors.white,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(left: Get.width/35, top: Get.height/25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 150,
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                            ),

                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 20,
                          width: 160,
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                            height: Get.height/13,
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),

                            ),

                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 100,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade50,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,),
                                )),
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 1,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade50,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,),
                                )),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade50,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 100,),
                                )),

                          ],
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                            height: Get.height/20,
                            width: Get.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                            ),

                          ),
                        ),
                        const SizedBox(height: 30,),
                        Text("Description:",style: Utils.textbold14sp()),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 160,
                            ),
                            SizedBox(height: 20,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.shade50,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,),
                                )),
                          ],
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  );

                },),
            )
                :Shimmer.fromColors(
              baseColor: AppColors.lig_gray.withOpacity(0.2),
              highlightColor: AppColors.white,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(left: Get.width/35, top: Get.height/25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 150,
                          decoration: BoxDecoration(
                            color: AppColors.lig_gray,
                              borderRadius: BorderRadius.circular(5)
                          ),

                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.lig_gray,
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.lig_gray,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.lig_gray,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.lig_gray,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.lig_gray,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),

                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 20,
                          width: 160,
                          color: AppColors.lig_gray,
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                            height: Get.height/13,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: AppColors.lig_gray,
                                borderRadius: BorderRadius.circular(5),

                            ),

                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 100,
                              color: AppColors.lig_gray,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.lig_gray,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,
                                    color: AppColors.lig_gray,
                                  ),
                                )),
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 1,
                              color: AppColors.lig_gray,
                            ),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.lig_gray,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,
                                    color: AppColors.lig_gray,
                                  ),
                                )),
                            const SizedBox(width: 10,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.lig_gray,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.lig_gray,
                                    ),
                                  ),
                                )),

                          ],
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Container(
                            height: Get.height/20,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.lig_gray,
                            ),

                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.lig_gray,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.lig_gray,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.lig_gray,
                                    ),),
                                )),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.lig_gray,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                                height: Get.height/25,
                                width: Get.width/12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.lig_gray,
                                ),
                                child:  Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.lig_gray,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  );

                },),
            )

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Products you may also like",style: Utils.text20SPBold(),),
                ),
              ],
            ),

            Obx(
                  ()=> controller.getRelatedproductbyIdList.isNotEmpty
                  ?GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: controller.getRelatedproductbyIdList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (ctx, i) {
                  return InkWell(
                    onTap: (){
                      Get.offAllNamed(Routes.PRODUCTDETAILS, arguments: controller.getRelatedproductbyIdList[i].id);
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
                                controller.getRelatedproductbyIdList[i].thumbnailImage.toString(),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                              child: Text(
                                controller.getRelatedproductbyIdList[i].name.toString(),
                                style: Utils.textmedium12dsp(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    controller.getRelatedproductbyIdList[i].mainPrice.toString(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Top Selling Products",style: Utils.text20SPBold(),),
                ),
              ],
            ),
            Obx(
                  ()=>controller.getTopSellerproductbyIdList.isNotEmpty
                  ? Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() =>  ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.getTopSellerproductbyIdList.length,
                    itemBuilder: (_, i) {
                      return InkWell(
                        onTap: (){

                          Get.offAllNamed(Routes.PRODUCTDETAILS, arguments: controller.getTopSellerproductbyIdList[i].id);
                        },
                        child: Card(
                          child: Container(
                            height: Get.height/8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.network(
                                  controller.getTopSellerproductbyIdList[i].thumbnailImage.toString(),
                                  fit: BoxFit.fill,
                                ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:15,left: 8.0, bottom: 5),
                                    child: Text(
                                      controller.getTopSellerproductbyIdList[i].name.toString(),
                                      style: Utils.textmedium14sp(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          controller.getTopSellerproductbyIdList[i].mainPrice.toString(),
                                          style: TextStyle(
                                              color: AppColors.red,
                                              fontSize: Get.width>550?Get.height / 60:Get.height / 50,
                                              fontFamily: 'Poppins-Bold'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
                ),
              )
                  :SizedBox.shrink(),
            ),
            SizedBox(height: 60,)
          ],
        ),
      ),
    );
  }
}
