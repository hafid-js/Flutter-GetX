import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/my_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  final myC = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        actions: [
          IconButton(onPressed: () => myC.reset(), icon: Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Terjadi sesuatu : ${myC.count} x",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                onChanged: (value) => myC.change(),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
