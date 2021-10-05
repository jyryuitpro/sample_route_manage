import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/dependencys/dependency_manage_page.dart';
import 'package:sample_route_manage/src/pages/normal/first_page.dart';
import 'package:sample_route_manage/src/pages/reactive_state_manage_page.dart';
import 'package:sample_route_manage/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('일반적인 라우트'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => FirstPage(),
                // ));
                Get.to(FirstPage());
              },
            ),
            RaisedButton(
              child: Text('Named 라우트'),
              onPressed: () {
                // Navigator.of(context).pushNamed('/first');
                Get.toNamed('/first');
              },
            ),
            RaisedButton(
              child: Text('Arguments 전달'),
              onPressed: () {
                // Get.to(FirstPage(), arguments: '류지영');

                // Get.toNamed('/next', arguments: '류지영');
                // Get.toNamed('/next', arguments: 3);
                // Get.toNamed('/next', arguments: {'name': '류지영', 'age': 33});
                Get.toNamed('/next', arguments: User(name: 'jyryuitpro', age: 33,));
              },
            ),
            RaisedButton(
              child: Text('동적 url'),
              onPressed: () {
                // Get.toNamed('/user/28357');
                Get.toNamed('/user/28357?name=류지영&age=32');
              },
            ),
            RaisedButton(
              child: Text('단순상태관리'),
              onPressed: () {
                Get.to(SimpleStateManagePage());
              },
            ),
            RaisedButton(
              child: Text('반응형상태관리'),
              onPressed: () {
                Get.to(ReactiveStateManagePage());
              },
            ),
            RaisedButton(
              child: Text('의존성 관리'),
              onPressed: () {
                Get.to(DependencyManagePage());
              },
            ),
            RaisedButton(
              child: Text('바인딩 관리'),
              onPressed: () {
                Get.toNamed('/binding');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
