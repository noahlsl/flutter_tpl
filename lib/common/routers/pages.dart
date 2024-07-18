import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/pages/index.dart';
import '/common/index.dart';

class RoutePages {
  // 路由监视
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  // 路由列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RouteNames.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteNames.register,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteNames.bookshelf,
      page: () => const BookshelfPage(),
    ),
    GetPage(
      name: RouteNames.category,
      page: () => const CategoryPage(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteNames.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
