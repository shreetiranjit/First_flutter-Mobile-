import 'package:flutter/material.dart';
import '../model/simple_interest_logic.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({
    super.key,
  });

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  var gap = const SizedBox(height: 8);
  double principle = 1;
  double rate = 1;
  double time = 1;
  double result = 0;
  SimpleInterest si = SimpleInterest();

  void simpleLogic() {
    setState(() {
      var result = si.si(principle, rate, time);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          gap,
          TextFormField(
            onChanged: (value) {
              principle = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter Principle',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          gap,
          TextFormField(
            onChanged: (value) {
              rate = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter Rate',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          gap,
          TextFormField(
            onChanged: (value) {
              time = double.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter Time',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          gap,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                simpleLogic();
              },
              child: const Text(" Calculate "),
            ),
          ),
          const SizedBox(height: 8),
          Text("Result : $result"),
        ],
      ),
    );
  }
}
