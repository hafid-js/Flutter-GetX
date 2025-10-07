import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final countC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              id: "hafid",
              builder: (_) {
              return Text("Angka ${countC.count}", style: TextStyle(fontSize: 35));
            }),
            GetBuilder<CounterController>(builder: (_) {
              return Text("Angka ${countC.count}", style: TextStyle(fontSize: 35));
            })
          ],
        )),
        floatingActionButton: FloatingActionButton(onPressed: () => countC.add()),
      ),
    );
  }
}

class CounterController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update(['hafid']);
  }
}
