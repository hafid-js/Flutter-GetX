import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final c = Get.lazyPut(() => MyController(), tag: 'tag-text', fenix: true);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => CountPage()),
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      body: Center(child: Text("Home Page", style: TextStyle(fontSize: 50))),
    );
  }
}

class CountPage extends StatelessWidget {
  final c = Get.put(MyController(), permanent: true, tag: 'tag-count' );
  // final c = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(() => TextPage()),
            icon: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      body: Center(
        child: Obx(() => Text("${c.count}", style: TextStyle(fontSize: 50))),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => c.add()),
    );
  }
}

class TextPage extends StatelessWidget {
  // final c = Get.put(MyController(), permanent: false, tag: 'tag-text');
  final c = Get.find<MyController>(tag: 'tag-text');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: TextField(
            controller: c.textC,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  var textC = TextEditingController();

  void add() => count++;
}
