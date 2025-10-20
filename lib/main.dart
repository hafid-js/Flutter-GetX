import 'package:flutter/material.dart';
import 'package:flutter_getx/bindings/myB.dart';
import 'package:flutter_getx/controllers/myC.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      initialBinding: MyB(),
    );
  }
}
