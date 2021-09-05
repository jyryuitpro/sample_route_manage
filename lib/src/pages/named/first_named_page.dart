import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('다음페이지 이동'),
              onPressed: () {
                // Get.toNamed('/second');

                // 현재 페이지(FirstNamedPage) 를 없애버리고, 다음 페이지(SecondNamedPage) 로 넘어간다.
                // 다음 페이지(SecondNamedPage) 에서 뒤로 가면 현재 페이지(FirstNamedPage) 가 나오지 않는다.
               Get.offNamed('/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
