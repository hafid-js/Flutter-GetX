import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/authC.dart';
import 'package:flutter_getx/controllers/loginC.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/login.dart';
import 'package:flutter_getx/routes/app_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginC = Get.put(LoginC());
  final authC = Get.put(AuthC());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authC.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          authC.autoLogin();
          return Obx(
            () => GetMaterialApp(
              home: authC.isAuth.isTrue ? HomePage() : LoginPage(),
              getPages: AppPage.pages,
            ),
          );
        }
        return MaterialApp(
          home: Scaffold(body: Center(child: CircularProgressIndicator())),
        );
      },
    );
  }
}
