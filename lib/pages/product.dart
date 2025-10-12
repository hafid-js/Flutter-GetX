import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routes_name.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Product")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed(RoutesName.product+ '/1?name=jaket&ukuran=xl'),
              child: Text("Products >> 1"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RoutesName.product+ '/product/2?name=kaos kaki'),
              child: Text("Products >> 2"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RoutesName.product+ '/product/3/sendal'),
              child: Text("Products >> 3"),
            ),
          ],
        ),
      ),
    );
  }
}
