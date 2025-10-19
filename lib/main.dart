import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
        }),
      ),
    );
  }
}
