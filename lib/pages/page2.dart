import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/page3.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Dua"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                       ElevatedButton(onPressed: () {
                               Get.toNamed(RouteName.page_tiga);
            }, child: Text("Next Page >>")),
             ElevatedButton(onPressed: () {
         Get.back(result: "Ini Dari Page 2");
            }, child: Text("<< Back Page")),
          ],
        ),
      ),
    );
  }
}