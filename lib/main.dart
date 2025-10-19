import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => SecondPage(),
            arguments: "Argument from Home Page");
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${Get.arguments}"),
            Text("${Get.rawRoute}", textAlign: TextAlign.center),
            Text("${Get.routing.args}", textAlign: TextAlign.center),
            ElevatedButton(
          onPressed: () {
            Get.to(() => OtherPage());
          },
          child: Text('Go to Other Page'),
        ),
          ],
        )
      ),
    );
  }
}

class OtherPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Center(
        child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Other Page"),
            Text("${Get.previousRoute}", textAlign: TextAlign.center),
             Text("${Get.isSnackbarOpen}", textAlign: TextAlign.center),
             Text(GetPlatform.isAndroid ? "INI Android" : "INI Bukan Android", textAlign: TextAlign.center),
             Text("Height : ${Get.height}", textAlign: TextAlign.center)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // print("Snackbar Status Open: ${Get.isSnackbarOpen}");
        // Get.snackbar("ini judul", "ini deskripsi snackbar");
        //      print("Snackbar Status Open: ${Get.isSnackbarOpen}");
        // Get.removeRoute(Get.rawRoute!);
        Get.until((route) => Get.currentRoute == '/');
      }),
    );
  }
}