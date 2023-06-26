import 'package:get/get.dart';
import 'package:getx_navigation_bar/controllers/navigation_bar_controller.dart';
import 'package:getx_navigation_bar/controllers/shimmer_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationBarController());
    Get.lazyPut(() => ShimmerController());
  }
}
