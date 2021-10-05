import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  static CountControllerWithGetX get to => Get.find();

  // int count = 0;

  RxInt count = 0.obs;

  void increase() {
    count++;
    update();
  }

  // void increase(String id) {
  //   count++;
  //   update([id]);
  // }

  // void putNumber(int value) {
  //   count = value;
  //   update();
  // }

  void putNumber(int value) {
    count(value);
  }
}