import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/brandCategoryResponse.dart';

class BrandproductController extends GetxController {
  //TODO: Implement BrandproductController

  final TextEditingController searchController = TextEditingController();
  RxList<BrandCategoryData> getProduct = <BrandCategoryData>[].obs;

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
    brandProductApiPost();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void brandProductApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  KbrandProduct,queryParamerter: "/${Get.arguments}").then((value) {
      BrandCategoryResponse responseModel=BrandCategoryResponse.fromJson(value);
      print(responseModel.data!.length);
      getProduct.addAll(responseModel.data!);
      getProduct.refresh();
      shimmerStatus=false;
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
}
