import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
      theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(),
    ));
  }
}

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
          "Angka ${c.counter}",
          style: TextStyle(
            fontSize: 25
          ),),) 
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => c.changeTheme()),
    );
  }
}