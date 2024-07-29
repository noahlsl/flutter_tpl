import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../common/index.dart';
import '../index.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  // 主视图
  // 主视图
  Widget _buildView() {
    DateTime? _lastPressedAt;
    return WillPopScope(
      // 防止连续点击两次退出
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) >
                const Duration(seconds: 1)) {
          _lastPressedAt = DateTime.now();
          Loading.toast('Press again to exit');
          return false;
        }
        await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return true;
      },
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        // 导航栏
        bottomNavigationBar: GetBuilder<MainController>(
          id: 'navigation',
          builder: (controller) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: LocaleKeys.tabBarHome.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.widgets),
                  label: LocaleKeys.tabBarCategory.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.menu_book),
                  label: LocaleKeys.tabBarBookshelf.tr,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: LocaleKeys.tabBarProfile.tr,
                ),
              ],
              onTap: controller.onJumpToPage,
            );
          },
        ),
        // 内容页
        body: PageView(
          physics: const NeverScrollableScrollPhysics(), // 不响应用户的滚动
          controller: controller.pageController,
          onPageChanged: controller.onIndexChanged,
          children: const [
            HomePage(),
            CategoryPage(),
            BookshelfPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      id: "main",
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
