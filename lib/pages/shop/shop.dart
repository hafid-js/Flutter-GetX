import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/shopC.dart';
import 'package:flutter_getx/pages/shop/widgets/shop_item.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  final shopC = Get.put(ShopC(), tag: 'total');
  final quantityC = Get.create(()=> ShopC());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop Page")),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => ShopItem(),
        ),
      ),
      floatingActionButton: CircleAvatar(child: Obx(() => Text("${shopC.total}")),),
    );
  }
}