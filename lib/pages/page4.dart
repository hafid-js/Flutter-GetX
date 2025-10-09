import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/page5.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Empat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                                   ElevatedButton(onPressed: () {
                                Get.toNamed(RouteName.page_lima);
            }, child: Text("Next Page >>")),
             ElevatedButton(onPressed: () {
         Get.back();
            }, child: Text("<< Back Page")),
          ]
        ),
      ),
    );
  }
}