import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_with_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Provider',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          // Text(
          //   '${Provider.of<CountControllerWithProvider>(context).count}',
          //   style: TextStyle(
          //     fontSize: 50,
          //   ),
          // ),
          Consumer<CountControllerWithProvider>(
            builder: (_, snapshot, child) {
              return Text(
                '${snapshot.count}',
                style: TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          // StatefulWidget으로 바꿔주거나, context를 넘겨줘야한다.
          RaisedButton(
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            onPressed: () {
              // listen: true을 하게 되면 전체가 build 되며, consumer가 필요가 없다.
              // listen: false일 경우는 Consumer쪽만 새로 build가 된다.
              Provider.of<CountControllerWithProvider>(context, listen: false,).increase();
            },
          ),
        ],
      ),
    );
  }
}
