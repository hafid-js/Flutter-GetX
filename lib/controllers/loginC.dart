import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginC extends GetxController {
  var hidden = true.obs;
  var rememberMe = false.obs;
  late TextEditingController emailC;
  late TextEditingController passC;

  @override
  void onInit() async {
    emailC = TextEditingController();
    passC = TextEditingController();
     await GetStorage.init();
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      Map<String, dynamic> dataUser = box.read("dataUser");
      emailC.text = dataUser['email'];
      passC.text = dataUser['password'];
      rememberMe.value = dataUser['rememberMe'];
    }
    super.onInit();
  }

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
