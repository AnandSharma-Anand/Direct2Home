import 'dart:io';

import 'package:direct2home/common/appcolors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../common/Api/Utils/utils.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        bottomNavigationBar: Container(
          height: Platform.isIOS ? Get.height / 8 : Get.height / 12,
          decoration: const BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.white,
                  blurRadius: 2,
                ),
              ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Obx(
                  () =>
                  BottomNavigationBar(
                    unselectedItemColor: AppColors.customlightgrey,
                    selectedItemColor: AppColors.red,
                    backgroundColor: AppColors.white,
                    onTap: controller.onTap,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: controller.changeindexvalue,
                    showSelectedLabels: true,
                    showUnselectedLabels: true,
                    selectedLabelStyle: Utils.headingBoldSecondStyle(),
                    unselectedLabelStyle: Utils.normalStyle(),
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_rounded,
                          size: Get.height / 35,
                          color: controller.changeindexvalue == 0
                              ? AppColors.red
                              : AppColors.customlightgrey,
                        ),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.dashboard_outlined,
                          size: Get.height / 35,
                          color: controller.changeindexvalue == 1
                              ? AppColors.red
                              : AppColors.customlightgrey,
                        ),
                        label: "Categories",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart_outlined,
                          size: Get.height / 35,
                          color: controller.changeindexvalue == 2
                              ? AppColors.red
                              : AppColors.customlightgrey,
                        ),
                        label: "Cart",
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline_outlined,
                          size: Get.height / 35,
                          color: controller.changeindexvalue == 3
                              ? AppColors.red
                              : AppColors.customlightgrey,
                        ),
                        label: "Settings",
                      ),
                    ],
                  ),
            ),
          ),
        ),

        // drawer: controller.drawer(),
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Obx(
                () =>
                IndexedStack(
                    index: controller.changeindexvalue,
                    children: controller.body

                ),
          ),
        )
    );
  }
}