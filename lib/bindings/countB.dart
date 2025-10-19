import 'package:flutter_getx/controllers/countC.dart';
import 'package:get/get.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    Get.put(CountC());
  }
}