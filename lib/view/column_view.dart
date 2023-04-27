import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column View'),
      ),
      body: Container(
        color: Colors.deepOrange,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.star,
              color: Colors.cyanAccent,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.yellowAccent,
              size: 50,
            ),
            Spacer(flex: 2),
            Icon(
              Icons.star,
              color: Colors.cyanAccent,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.limeAccent,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
