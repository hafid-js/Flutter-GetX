import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/page4.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tiga"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                                           ElevatedButton(onPressed: () {
                                Get.toNamed(RouteName.page_empat);
            }, child: Text("Next Page >>")),
             ElevatedButton(onPressed: () {
         Get.back();
            }, child: Text("<< Back Page")),
          ],
        ),
      ),
    );
  }
}