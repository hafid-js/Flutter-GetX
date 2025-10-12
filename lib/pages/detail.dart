import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product ID ${Get.parameters}")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product ID ${Get.parameters['name']}"),
            Text("Ukuran ${Get.parameters['ukuran']}")
          ],
        ),
      ),
    );
  }
}
