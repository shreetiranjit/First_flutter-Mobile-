import 'package:flutter/material.dart';

import '../model/binarysearch_logic.dart';

class BinarySearchPage extends StatefulWidget {
  const BinarySearchPage({Key? key}) : super(key: key);

  @override
  _BinarySearchPageState createState() => _BinarySearchPageState();
}

class _BinarySearchPageState extends State<BinarySearchPage> {
  final TextEditingController _inputController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
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

  void _searchNumber() {
    int? searchNumber = int.tryParse(_searchController.text);
    if (searchNumber != null) {
      setState(() {
        _result = BinarySearchLogic.binarySearch(_numbers, searchNumber);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binary Search'),
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
              TextField(
                controller: _searchController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter number to search',
                ),
              ),
              ElevatedButton(
                onPressed: _searchNumber,
                child: const Text('Search'),
              ),
              Text(_result),
            ],
          ),
        ),
      ),
    );
  }
}
