import 'package:first_flutter_application/view/area_of_circle.dart';
import 'package:first_flutter_application/view/arithmetic_screen.dart';
import 'package:first_flutter_application/view/changename.dart';
import 'package:first_flutter_application/view/dashboard.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/simpleinterest': (context) => const SimpleInterestView(),
        '/areaofcircle': (context) => const AreaOfCircleView(),
        '/change': (context) => const ChangeNameLoopView(),
      },
    );
  }
}
