import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '/common/index.dart';

class ConfigService extends GetxService {
  // 这是一个单例写法

  static ConfigService get to => Get.find();

  /// 代码版本相关
  // 版本信息
  PackageInfo? _platform;

  String get version => _platform?.version ?? '-';

  Locale locale = PlatformDispatcher.instance.locale;

  // 获取版本信息
  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  /// I18N多语言相关
  // 初始语言
  void initLocale() {
    var langCode = Storage().getString(Constants.storageLanguageCode);
    if (langCode.isEmpty) return;
    var index = Translation.supportedLocales.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = Translation.supportedLocales[index];
  }

  // 更改语言
  void onLocaleUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }

  /// 主题相关
  // 主题
  final RxBool _isDarkModel = Get.isDarkMode.obs;
  bool get isDarkModel => _isDarkModel.value;

  // 切换 theme
  Future<void> switchThemeModel() async {
    _isDarkModel.value = !_isDarkModel.value;
    Get.changeThemeMode(isDarkModel? ThemeMode.dark : ThemeMode.light);
    await Storage().setString(Constants.storageThemeCode,
        _isDarkModel.value == true ? "dark" : "light");
  }

  // 初始 theme
  void initTheme() {
    var themeCode = Storage().getString(Constants.storageThemeCode);
    _isDarkModel.value = themeCode == "dark" ? true : false;
    Get.changeThemeMode(isDarkModel? ThemeMode.dark : ThemeMode.light);
  }

  // 是否首次打开
  bool get isAlreadyOpen => Storage().getBool(Constants.storageAlreadyOpen);
// 标记已打开app
  void setAlreadyOpen() {
    Storage().setBool(Constants.storageAlreadyOpen, false);
  }

  @override
  void onReady() {
    super.onReady();
    // 初始化服务
    getPlatform();
    // 初始化本地缓存
    initLocale();
    // 初始化主题色
    // initTheme();
  }
}
