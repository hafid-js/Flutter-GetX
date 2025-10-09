import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/page2.dart';
import 'package:flutter_getx/routes/route_name.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              Get.toNamed(RouteName.page_dua);
            }, child: Text("Next Page >>"),)
          ],
        ),
      ),
    );
  }
}