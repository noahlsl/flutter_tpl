import 'package:flutter/material.dart';

/// 主题
class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    // 默认字体设置(若使用系统字体则不设置)
    // fontFamily: "Montserrat",
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0.0,
    ),
    // 系统主题
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF3CA9FC),
      onPrimary: Colors.white,
      secondary: const Color(0xFFA8C1D2).withOpacity(0.25),
      tertiary: const Color(0xFFEE4667),
      inversePrimary: Colors.grey.shade600,
      inverseSurface: Colors.grey.shade200,
      onInverseSurface: Colors.grey.shade100,
      surfaceContainer: Colors.grey.shade300,
    ),
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    // 默认字体设置(若使用系统字体则不设置)
    // fontFamily: "Montserrat",
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0.0,
    ),
    // 系统主题
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFF3CA9FC),
      onPrimary: Colors.white,
      secondary: const Color(0xFFA8C1D2).withOpacity(0.25),
      tertiary: const Color(0xFFEE4667),
      inversePrimary: Colors.grey.shade600,
      inverseSurface: Colors.black87,
      onInverseSurface: Colors.black26,
      surfaceContainer: Colors.grey.shade300,
    ),
  );
}
