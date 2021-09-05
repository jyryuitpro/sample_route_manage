import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/home.dart';
import 'package:sample_route_manage/src/pages/named/first_named_page.dart';
import 'package:sample_route_manage/src/pages/named/second_named_page.dart';
import 'package:sample_route_manage/src/pages/next_page.dart';
import 'package:sample_route_manage/src/pages/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: Home(),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/first': (context) => FirstNamedPage(),
      //   '/second': (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/first',
          page: () => FirstNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/second',
          page: () => SecondNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/next',
          page: () => NextPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/user/:uid',
          page: () => UserPage(),
          transition: Transition.zoom,
        ),
      ],
    );
  }
}
