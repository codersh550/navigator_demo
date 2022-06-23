import 'package:flutter/material.dart';
import 'package:navigator_demo/router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: GestureDetector(
          onTap: () {
            MyRouterDelegate.of(context).push(name: "/second", arguments: null);
          },
          child: Text('home'),
        ),
      ),
    );
  }
}
