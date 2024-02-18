import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/categoriesResponse.dart';

class CategoriesController extends GetxController {
  //TODO: Implement CategoriesController
  RxList<CategoriesDataList> getCategoriy = <CategoriesDataList>[].obs;

  RxBool _shimmerStatus  = true.obs;
  bool get shimmerStatus => _shimmerStatus.value;
  set shimmerStatus(bool v) => _shimmerStatus.value = v;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    categoryFeatureApiPost();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void categoryFeatureApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Kcategories).then((value) {
      categoriesResponse responseModel=categoriesResponse.fromJson(value);
      print(responseModel.data!.length);
      getCategoriy.addAll(responseModel.data!);
      getCategoriy.refresh();
    },onError: (error,stackTrace){print(error);
      print(stackTrace);
    });

  }
}
