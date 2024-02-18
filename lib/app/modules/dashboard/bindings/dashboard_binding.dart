import 'package:direct2home/app/modules/cart/controllers/cart_controller.dart';
import 'package:direct2home/app/modules/categories/controllers/categories_controller.dart';
import 'package:direct2home/app/modules/homepage/controllers/homepage_controller.dart';
import 'package:get/get.dart';
import '../../settings/controllers/settings_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomepageController>(
          () => HomepageController(),
    );

    Get.lazyPut<CategoriesController>(
          () => CategoriesController(),
    );
    Get.lazyPut<CartController>(
          () => CartController(),
    );
    Get.lazyPut<SettingsController>(
          () => SettingsController(),
    );
  }
}
