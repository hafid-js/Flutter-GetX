import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.to(() => TextPage()), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Text("HOME PAGE"),
      ),
    );
    
  }
}

class TextPage extends StatefulWidget {
  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  final textC = Get.put(TextController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEXT PAGE"),
      ),
      body: TextField(
        controller: textC.myC,
      ),
    );
  }
}

class TextController extends GetxController {
  final myC = TextEditingController();
}
