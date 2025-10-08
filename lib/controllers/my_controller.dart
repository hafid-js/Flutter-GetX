import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0.obs;

  void change() => count++; 

  void reset() => count.value = 0;

  @override
  void onInit() {
    print("on init");

    // ever(count, (_) => print("dijalankan"));

    // everAll([count], (_) => print("dijalankan"));

    // once(count, (_) => print("dijalankan"));

    // debounce(count,(_) => print("dijalankan"), time: Duration(seconds: 3));


    interval(count,(_) => print("dijalankan"), time: Duration(seconds: 3));
    super.onInit();
  }

}