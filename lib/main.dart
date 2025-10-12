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

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
    Get.snackbar(
      'Berhasil!',
      'Kamu menekan tombol sebanyak $count kali.',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(milliseconds: 800),
      backgroundColor: Colors.amber,
      backgroundGradient: LinearGradient(colors: [Colors.purple, Colors.green]),
      borderColor: Colors.red,
      borderWidth: 5,
      onTap: (_) {
      },
      icon: Icon(Icons.ac_unit, color: Colors.white,),
      shouldIconPulse: false,
      snackStyle: SnackStyle.GROUNDED
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(title: const Text('Counter App with GetX')),
      body: Center(
        child: Obx(
          () => Text(
            'You have pushed the button this many times:\n${controller.count}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
