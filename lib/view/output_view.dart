import 'package:flutter/material.dart';

class OutputView extends StatefulWidget {
  const OutputView({super.key});

  @override
  State<OutputView> createState() => _OutputViewState();
}

class _OutputViewState extends State<OutputView> {
  double? result;
  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as double;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output View'),
      ),
      body: Center(
        child: Text(
          'Result is: $result',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
