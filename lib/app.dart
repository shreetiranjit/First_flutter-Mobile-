import 'package:first_flutter_application/view/arithmetic_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Interest"),
          centerTitle: true,
          elevation: 0,
        ),
        body: const SimpleInterestView(),
      ),
    );
  }
}
