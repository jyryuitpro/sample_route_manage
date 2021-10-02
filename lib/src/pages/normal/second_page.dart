import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
            RaisedButton(
              child: Text('홈 이동'),
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (_) => Home(),
                //     ),
                //     (route) => false);

                // Get.to(Home());
                // 회원가입 || Splash || 돌아갈 필요가 없는 페이지
                Get.offAll(Home());
              },
            )
          ],
        ),
      ),
    );
  }
}
