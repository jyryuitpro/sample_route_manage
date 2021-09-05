import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  // find를 해줄 필요가 없다.
  // CountControllerWithGetX _controllerWithGetX = Get.put(CountControllerWithGetX());

  const WithGetX({Key? key}) : super(key: key);

  Widget _button(String id) {
    return RaisedButton(
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      onPressed: () {
        Get.find<CountControllerWithGetX>().increase(id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get.put(CountControllerWithGetX());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GetX',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'first',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'second',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          _button('first'),
          _button('second'),
        ],
      ),
    );
  }
}
