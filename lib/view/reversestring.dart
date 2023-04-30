import 'package:first_flutter_application/model/reverse_logic.dart';
import 'package:flutter/material.dart';

class ReverseStringPage extends StatefulWidget {
  const ReverseStringPage({Key? key}) : super(key: key);

  @override
  _ReverseStringPageState createState() => _ReverseStringPageState();
}

class _ReverseStringPageState extends State<ReverseStringPage> {
  final TextEditingController _inputController = TextEditingController();
  String _result = '';

  void _reverseString() {
    setState(() {
      _result = ReverseStringLogic.reverse(_inputController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse String'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _inputController,
                decoration: const InputDecoration(
                  labelText: 'Input String',
                ),
              ),
              ElevatedButton(
                onPressed: _reverseString,
                child: const Text('Reverse String'),
              ),
              Text(_result),
            ],
          ),
        ),
      ),
    );
  }
}
