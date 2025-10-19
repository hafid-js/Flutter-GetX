import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: () => Get.toNamed(RouteName.count),
        child: Text("Next >>")),
      ),
    );
  }
}