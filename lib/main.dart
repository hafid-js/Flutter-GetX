import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            OutlinedButton(
              onPressed: () => Get.to(() => CountPage()),
              child: Text("Next Page >>"),
            ),
          ],
        ),
      ),
    );
  }
}

class CountPage extends StatelessWidget {
  final count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Count Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${count}", style: TextStyle(fontSize: 25))),
            // OutlinedButton(onPressed: ()=> Get.to(() => CountPage()), child: Text("Next Page >>"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.putAsync<SharedPreferences>(() async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('counter', 99);

          count.value = prefs.getInt('counter')!.toInt();
          return prefs;
        }),
      ),
    );
  }
}
