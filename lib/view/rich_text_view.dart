import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rich Text"),
      ),
      body: RichText(
        text: const TextSpan(
          text: 'My',
          style: TextStyle(
            color: Color.fromARGB(255, 222, 4, 4),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          children: [
            TextSpan(
              text: " Name is",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: ' Shreeti Ranjit',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 81, 73, 4),
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
