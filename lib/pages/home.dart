import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/authC.dart';
import 'package:flutter_getx/controllers/loginC.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final auth = Get.find<AuthC>();
  final login = Get.find<LoginC>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => auth.logout(login.rememberMe.value),
        child: Icon(Icons.logout),
      ),
    );
  }
}
