import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<CountControllerWithGetX>(
            builder: (controller) {
              return Text(
                controller.count.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              );
            },
          ),
          Obx(() => Text(
                controller.count.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              )
          ),
          RaisedButton(
            onPressed: () {
              // Get.find<CountControllerWithGetX>().increase();
              // CountControllerWithGetX.to.increase();
              controller.increase();
            },
          ),
        ],
      ),
    );
  }
}
