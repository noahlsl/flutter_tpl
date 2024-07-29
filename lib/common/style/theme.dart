import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    // 系统主题
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
    // 默认字体设置(若使用系统字体则不设置)
    // fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark, // appBar 暗色 , 和主题色相反
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
    ),
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    // 系统主题
    colorScheme: const ColorScheme.dark(
      primary: Colors.deepPurple, // 设置暗色主题的主颜色为深紫色
      secondary: Colors.amber, // 设置暗色主题的次要颜色为琥珀色
    ),
    // 默认字体设置(若使用系统字体则不设置)
    // fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light, // appBar 亮色 , 和主题色相反
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.white54,
    ),
  );
}
