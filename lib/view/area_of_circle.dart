import 'package:first_flutter_application/model/area_circle_logic.dart';
import 'package:flutter/material.dart';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({
    super.key,
  });

  @override
  State<AreaOfCircleView> createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  var gap = const SizedBox(height: 8);
  double radius = 1;

  double result = 0;
  AreaCircle circle = AreaCircle();

  void circleLogic() {
    setState(() {
      result = circle.scircle(radius);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                gap,
                TextFormField(
                  onChanged: (value) {
                    radius = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter radius',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      circleLogic();
                    },
                    child: const Text(" Calculate "),
                  ),
                ),
                const SizedBox(height: 8),
                Text("Result : $result"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
