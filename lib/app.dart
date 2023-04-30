import 'package:first_flutter_application/view/area_of_circle.dart';
import 'package:first_flutter_application/view/arithmetic_screen.dart';
import 'package:first_flutter_application/view/binarysearch.dart';
import 'package:first_flutter_application/view/bmi.dart';
import 'package:first_flutter_application/view/changename.dart';
import 'package:first_flutter_application/view/column_view.dart';
import 'package:first_flutter_application/view/dashboard.dart';
import 'package:first_flutter_application/view/reversestring.dart';
import 'package:first_flutter_application/view/rich_text_view.dart';
import 'package:first_flutter_application/view/secondhighest.dart';
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
        '/richtextview': (context) => const RichTextView(),
        '/columnview': (context) => const ColumnView(),
        '/bmi': (context) => const BmiPage(),
        '/reverse': (context) => const ReverseStringPage(),
        '/secondhighest': (context) => const SecondHighestPage(),
        '/binarysearch': (context) => const BinarySearchPage(),
      },
    );
  }
}
