import 'package:get/get.dart';

class Homecontroller extends GetxController {
  var initialCount = 1.obs;

  void increment() {
    initialCount++;
  }

  void decrement() {
    if (initialCount >= 2) {
      initialCount--;
    }
  }

  var initialCount1 = 1.obs;

  void increment1() {
    initialCount1++;
  }

  void decrement1() {
    if (initialCount1 >= 2) {
      initialCount1--;
    }
  }
}
