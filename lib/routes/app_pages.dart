import 'package:flutter_getx/pages/detail.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/product.dart';
import 'package:flutter_getx/routes/routes_name.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
        GetPage(name: RoutesName.home, page: () => HomePage()),
        GetPage(name: RoutesName.product, page: () => ProductPage()),
        GetPage(name: RoutesName.product + '/:id?', page: () => DetailPage()),
      ];
}