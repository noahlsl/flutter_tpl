import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'index.dart';

/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    // 系统主题
    // colorScheme: lightColorScheme,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: true,
    // 默认字体设置(若使用系统字体则不设置)
    fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark, // appBar 暗色 , 和主题色相反
    ),
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    // 系统主题
    // colorScheme: darkColorScheme,
    // 默认字体设置(若使用系统字体则不设置)
    fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light, // appBar 亮色 , 和主题色相反
    ),
  );
}
