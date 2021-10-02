import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.arguments.runtimeType);
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('${Get.arguments}'),
            // Text('${Get.arguments.toString()}'),
            // Text('${Get.arguments['name']} : ${Get.arguments['age']}'),
            Text('${(Get.arguments as User).name} : ${(Get.arguments as User).age}'),
            RaisedButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
