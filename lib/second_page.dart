import 'package:flutter/material.dart';
import 'package:navigator_demo/router.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: GestureDetector(
          onTap: () {
            MyRouterDelegate.of(context).popRoute();
          },
          child: Text('secong'),
        ),
      ),
    );
  }

}