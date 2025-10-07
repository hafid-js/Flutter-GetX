import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final countC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    print("build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetBuilder<CounterController>(
            // init: CounterController(),
            builder: (controller) => Text(
            "Angka ${controller.count}",
            style: TextStyle(
              fontSize: 35
            ),
          ),)
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          countC.increment();
        }),
      ),
    );
  }
}