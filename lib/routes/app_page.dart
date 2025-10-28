import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/login.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
    ),
  ];
}