import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthC extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin',
  };

  void dialogError(String msg) {
    Get.defaultDialog(title: 'Terjadi Kesalahan', middleText: msg);
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      login(data['email'], data['password'], data['rememberMe']);
    }
  }

  void login(String email, String pass, bool rememberMe) async {
    if (email != '' && pass != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && pass == _dataUser['password']) {
          if (rememberMe) {
            // simpan di storage menggunakan getstorage
            final box = GetStorage();
            box.write('dataUser', {
              'email': email,
              'password': pass,
              "rememberMe": rememberMe,
            });
          } else {
            final box = GetStorage();
            if (box.read("dataUser") != null) {
              box.erase();
            }
          }
          isAuth.value = true;
        } else {
          dialogError("Email atau password salah.");
        }
      }
    } else {
      dialogError("Semua data input harus diisi.");
    }
  }

  void logout(bool rememberMe) {
    if (rememberMe == false) {
      final box = GetStorage();
      if (box.read("dataUser") != null) {
        box.erase();
      }
    }

    isAuth.value = false;
  }
}
