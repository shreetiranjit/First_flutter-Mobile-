import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            color: const Color.fromARGB(255, 132, 30, 4),
            child: Center(
              child: TextButton(
                child: const Text("Column 1"),
                onPressed: () {},
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: TextButton(
                      child: const Text("Row 1"),
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Center(
                    child: TextButton(
                      child: const Text("Row 2"),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.black,
                  child: Center(
                    child: TextButton(
                      child: const Text("Column2"),
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.black38,
                child: Center(
                  child: TextButton(
                    child: const Text("Column 3"),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
