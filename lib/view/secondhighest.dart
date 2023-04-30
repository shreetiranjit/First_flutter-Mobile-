import 'package:first_flutter_application/model/secondhighest.dart';
import 'package:flutter/material.dart';

class SecondHighestPage extends StatefulWidget {
  const SecondHighestPage({Key? key}) : super(key: key);

  @override
  _SecondHighestPageState createState() => _SecondHighestPageState();
}

class _SecondHighestPageState extends State<SecondHighestPage> {
  final TextEditingController _inputController = TextEditingController();
  final List<int> _numbers = [];
  String _result = '';

  void _addNumber() {
    int? number = int.tryParse(_inputController.text);
    if (number != null) {
      setState(() {
        _numbers.add(number);
      });
    }
  }

  void _findSecondHighest() {
    setState(() {
      _result = SecondHighestLogic.secondHighest(_numbers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Highest'),
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
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter number',
                ),
              ),
              ElevatedButton(
                onPressed: _addNumber,
                child: const Text('Add Number'),
              ),
              ElevatedButton(
                onPressed: _findSecondHighest,
                child: const Text('Find Second Highest'),
              ),
              Text(_result),
            ],
          ),
        ),
      ),
    );
  }
}
