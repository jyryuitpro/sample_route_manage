import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // GetX instance
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text('반응형상태관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GetX',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            // GetX(
            //   builder: (controller) {
            //     return Text(
            //       '${Get.find<CountControllerWithReactive>().count.value}',
            //       style: TextStyle(
            //         fontSize: 50,
            //       ),
            //     );
            //   },
            // ),
            Obx(() {
              // print('UPDATE!!!');
              return Text(
                '${Get.find<CountControllerWithReactive>().count.value}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            }),
            RaisedButton(
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
            ),
            RaisedButton(
              child: Text(
                '5로 변경',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
            ),
          ],
        ),
      ),
    );
  }
}
