import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  int count = 0;

  void increase() {
    count++;
    update();
  }

  // void increase(String id) {
  //   count++;
  //   update([id]);
  // }

  void putNumber(int value) {
    count = value;
    update();
  }
}