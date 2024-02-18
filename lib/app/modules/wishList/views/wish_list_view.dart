import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../../../../common/appcolors.dart';
import '../controllers/wish_list_controller.dart';

class WishListView extends GetView<WishListController> {
  const WishListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.commonAppBar("title"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Card(
                    elevation:1,
                    shadowColor: AppColors.black,
                    child: Container(
                      height: Get.height/9,
                      width: Get.width/2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Image.asset("assets/banner1.jpg", height: Get.height/8,fit: BoxFit.fill,),
                            const SizedBox(width: 15,),
                            Padding(
                              padding:  EdgeInsets.only(top:Get.height/25.0, right: Get.width/4),
                              child: Column(
                                children: [
                                  Expanded(child: Text("Name", style: Utils.textbold14sp(),)),
                                  Expanded(child: Text("Price", style: Utils.textbold14sp(),)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(color: AppColors.grey)
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset("assets/trash.png", height: Get.height/40,fit: BoxFit.fill,),
                                )),

                          ],
                        ),
                      ),
                    ),
                  );

              },),
            )
          ],
        ),
      ),
    );
  }
}
