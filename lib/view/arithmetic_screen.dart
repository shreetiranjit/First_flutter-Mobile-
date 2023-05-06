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
  final principlecontroller = TextEditingController();
  final ratecontroller = TextEditingController();
  final timecontroller = TextEditingController();
  double result = 0;
  SimpleInterest si = SimpleInterest();

  void simpleLogic() {
    setState(
      () {
        result = si.si(
            double.parse(principlecontroller.text),
            double.parse(ratecontroller.text),
            double.parse(timecontroller.text));
      },
    );
    Navigator.pushNamed(context, '/outputview', arguments: result);
  }

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: key,
              child: Column(
                children: [
                  gap,
                  TextFormField(
                    controller: principlecontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter Principle',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the principal";
                      }
                      return null;
                    },
                  ),
                  gap,
                  TextFormField(
                    controller: ratecontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter Rate',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the rate";
                      }
                      return null;
                    },
                  ),
                  gap,
                  TextFormField(
                    controller: timecontroller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Enter Time',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 10.0),
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the time";
                      }
                      return null;
                    },
                  ),
                  gap,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          simpleLogic();
                        }
                      },
                      child: const Text(" Calculate "),
                    ),
                  ),
                  // const SizedBox(height: 8),
                  // Text("Result :  $result"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    principlecontroller.dispose();
    ratecontroller.dispose();
    timecontroller.dispose();
  }
}
