import 'package:direct2home/common/Api/data/api_helper.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/appcolors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: (){
                    Get.offAllNamed(Routes.DASHBOARD);
                  },
                  child: Icon(Icons.arrow_back, color: AppColors.black, size: Get.height/30,)),
              const SizedBox(width: 10,),

            ],),
        ),
        title: Text("Cart View", style: TextStyle(
       color: AppColors.black,
       fontSize: Get.height / 45,
      fontFamily: 'Poppins-Medium'
      ),
        )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.light_grey.withOpacity(0.2)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/placeholder.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Name", style: Utils.text16SPBold(),),
                            SizedBox(height: 10,),
                            Text("Price", style: Utils.text16SPBold(),),
                          ],
                        ),
                        Row(
                          children: [
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
                           Obx(()=> Text(controller.quantity.toString(), style: Utils.textbold14sp(),)),
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
                          ],
                        ),
                        Container(
                            height: Get.height/25,
                            width: Get.width/12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.red.withOpacity(0.2),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/delete.png", color:AppColors.white, height: 20, width: 10,fit: BoxFit.fill,),
                            )),
                        const SizedBox(width: 5,),
                      ],
                    ),
                  ),
                );


            },),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lig_gray
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total item:", style: Utils.text16SPBold(),),
                          SizedBox(width: 10,),
                          Text("8", style: Utils.textRed16SPBold(),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub total:", style: Utils.text16SPBold(),),

                          Text("000", style: Utils.textRed16SPBold(),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left:Get.width/20,top: Get.height/30, right: Get.width/20),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.red,
                  borderRadius: BorderRadius.circular(10)
                ),

                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  Text(
                    'Order Place ',
                    style: Utils.textwhite20SPBold(),
                  ),
                ),
              ),
            ),



          ],
        ),
      )
    );
  }
}
