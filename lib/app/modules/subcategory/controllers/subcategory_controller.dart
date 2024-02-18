import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/categoriesResponse.dart';
import '../../../data/models/subCategoreisResponse.dart';

class SubcategoryController extends GetxController {
  //TODO: Implement SubcategoryController
  RxList<SubCategoriesListData> getsubCategoriy = <SubCategoriesListData>[].obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    subCategoryFeatureApiPost();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void subCategoryFeatureApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Ksubcategories,queryParamerter: "/${Get.arguments}").then((value) {
      SubCategoriesResponse responseModel=SubCategoriesResponse.fromJson(value);
      print(responseModel.data!.length);
      getsubCategoriy.addAll(responseModel.data!);
      getsubCategoriy.refresh();
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
}
