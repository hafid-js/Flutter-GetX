import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/routes/app_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage(),
    getPages:
      AppPages.pages);
  }
}