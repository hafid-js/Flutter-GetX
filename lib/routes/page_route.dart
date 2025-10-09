import 'package:flutter_getx/pages/page1.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/pages/page4.dart';
import 'package:flutter_getx/pages/page5.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class AppPage {
  static final pages = [
    GetPage(name: RouteName.page_satu, page: () => PageSatu()),
    GetPage(name: RouteName.page_dua, page: () => PageDua()),
    GetPage(name: RouteName.page_tiga, page: () => PageTiga()),
    GetPage(name: RouteName.page_empat, page: () => PageEmpat()),
    GetPage(name: RouteName.page_lima, page: () => PageLima()),
  ];
}
