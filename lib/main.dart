import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Counter with Snackbar',
      home: const HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Counter App with GetX')),
      body: Center(
        child: Text(
            'You have pushed the button this many times',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.dialog(
          //   Icon(Icons.ac_unit),
          //   name: "dialog khusus"
          //   // AlertDialog(
          //   //   title: Text("ini deialog"),
          //   //   content: Text("ini deskripsi"),
          //   // )
          // );

          // Get.generalDialog(pageBuilder: (context, _, _2) {
          //   return AlertDialog(
          //     title: Text("ini dialog"),
          //     content: Text("ini deskripsi"),
          //   );
          // });
          Get.defaultDialog(
            barrierDismissible: false,
            title: "Ini judul",
            middleText: "ini deskripsinya",
            textConfirm: "Ok Confirm",
            cancelTextColor: Colors.green,
            onConfirm: () {
              Get.back();
              Get.to(OtherPage());
            },
            confirmTextColor: Colors.red,
            cancel: ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text("Batalkan"))
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
