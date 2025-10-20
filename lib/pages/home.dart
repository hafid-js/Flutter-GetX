import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/myC.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class HomePage extends GetView<MyC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: controller.obx(
          (state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('User Data:', style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Text('ID: ${state!['id']}'),
              Text('Name: ${state['first_name']} ${state['last_name']}'),
              Text('Email: ${state['email']}'),
              Image.network("${state['avatar']}")
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getData();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
