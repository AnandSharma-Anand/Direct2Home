import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/brandResponse.dart';

class BrandsController extends GetxController {
  //TODO: Implement BrandsController
  final TextEditingController searchController = TextEditingController();
  RxList<BrandDataList> getBrandlist = <BrandDataList>[].obs;
  RxBool _shimmerStatus  = true.obs;
  bool get shimmerStatus => _shimmerStatus.value;
  set shimmerStatus(bool v) => _shimmerStatus.value = v;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    brandListApiPost();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void brandListApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Kbrand).then((value) {
      BrandResponse brandModel=BrandResponse.fromJson(value);
      print("banner : ${brandModel.data!.length}");
      getBrandlist.addAll(brandModel.data!);
      getBrandlist.refresh();
      shimmerStatus=false;
    },
        onError: (error,stackTrace)
        {
          print(error);print(stackTrace
    );});

  }
}
