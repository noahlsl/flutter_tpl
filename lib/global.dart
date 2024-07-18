import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import '/common/index.dart';

class Global {
  static Future init() async {
    // NativeSplash 设备启动图
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    // 先执行Flutter原生初始化
    WidgetsFlutterBinding.ensureInitialized();
    // 样式自适配
    setSystemUi();

    // 在执行程序的配置初始化
    Get.put<ConfigService>(ConfigService());
    // 初始化本地缓存服务
    await Storage().init();
    // // 初始化网络服务
    // Get.put<NetworkHttpService>(NetworkHttpService());
    // // 初始化用户服务
    // Get.put<UserService>(UserService());
    // // 初始化消息服务
    // Get.put<MsgService>(MsgService());
    // // loading
    // Loading();
  }

  // 系统样式
  static void setSystemUi() {
    if (GetPlatform.isMobile) {
      // 屏幕方向 竖直上
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      // 透明状态栏
      // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //   statusBarColor: Colors.transparent, // transparent status bar
      // ));
    }

    if (GetPlatform.isAndroid) {
      // 去除顶部系统下拉和底部系统按键
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
      // 去掉底部系统按键
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      //     overlays: [SystemUiOverlay.bottom]);

      // 自定义样式
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        // 顶部状态栏颜色
        statusBarColor: Colors.transparent,
        // 该属性仅用于 iOS 设备顶部状态栏亮度
        // statusBarBrightness: Brightness.light,
        // 顶部状态栏图标的亮度
        // statusBarIconBrightness: Brightness.light,

        // 底部状态栏与主内容分割线颜色
        systemNavigationBarDividerColor: Colors.transparent,
        // 底部状态栏颜色
        systemNavigationBarColor: Colors.white,
        // 底部状态栏图标样式
        systemNavigationBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}
