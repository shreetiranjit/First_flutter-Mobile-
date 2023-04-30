import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Responsive Design"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simpleinterest');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Simple Interest"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/areaofcircle');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Area of Circle"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/change');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Change Name"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/richtextview');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Rich Text"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/columnview');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Column View"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bmi');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("BMI"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reverse');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Reverse a string"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondhighest');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Second highest"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/binarysearch');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 30),
              ),
              child: const Text("Binary Search"),
            ),
          ],
        ),
      ),
    );
  }
}
