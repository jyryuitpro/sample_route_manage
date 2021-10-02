import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  // find를 해줄 필요가 없다.
  // CountControllerWithGetX _controllerWithGetX = Get.put(CountControllerWithGetX());

  const WithGetX({Key? key}) : super(key: key);

  // Widget _button(String id) {
  Widget _button() {
    return RaisedButton(
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      onPressed: () {
        // _controllerWithGetX.increase(id);
        // Get.find<CountControllerWithGetX>().increase(id);
        Get.find<CountControllerWithGetX>().increase();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // GetX instance 여기서도 가능
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
            // id: 'first',
            builder: (controller) {
              print('UPDATE!!!');
              return Text(
                '${controller.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            // id: 'second',
            builder: (controller) {
              print('UPDATE!!!');
              return Text(
                '${controller.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          // _button('first'),
          // _button('second'),
          _button(),
          RaisedButton(
            child: Text(
              '5로 변경',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            onPressed: () {
              // _controllerWithGetX.increase(id);
              // Get.find<CountControllerWithGetX>().increase(id);
              Get.find<CountControllerWithGetX>().putNumber(5);
            },
          )
        ],
      ),
    );
  }
}
