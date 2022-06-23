import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator_demo/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyRouterDelegate delegate = MyRouterDelegate();

  // MyApp({Key? key}) : super(key: key) {
  //   // 初始化时添加第一个页面
  //   delegate.push(name: '/');
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: MyRouteParser(),
      routerDelegate: delegate,
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Router(
    //     routerDelegate: delegate,
    //   ),
    // );
  }
}
class MyRouteParser extends RouteInformationParser<String> {
  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) {
    return SynchronousFuture(routeInformation.location ?? "");
  }

  @override
  RouteInformation restoreRouteInformation(String configuration) {
    return RouteInformation(location: configuration);
  }
}
