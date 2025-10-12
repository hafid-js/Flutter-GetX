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
          Get.bottomSheet(
            isScrollControlled: true,
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                color: Colors.amber,
                child: Center(
                  child: ListView(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tulis sesuatu...',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(onPressed: (){}, child: Text("Save"))
                    ],
                  ),
                ),
              ),
            ),
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
    return Scaffold(appBar: AppBar());
  }
}
