import 'package:flutter_getx/bindings/countB.dart';
import 'package:flutter_getx/pages/count.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteName.home, page: () => HomePage()),
      GetPage(name: RouteName.count, page: () => CountPage(),
      binding: CountB()
      ),
  ];
}