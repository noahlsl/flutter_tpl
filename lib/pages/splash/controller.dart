import 'package:get/get.dart';

import '../../common/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    update(["splash"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
    // 欢迎页 1秒后跳转首页
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(RouteNames.main);
    });
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
