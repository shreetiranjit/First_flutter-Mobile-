import 'package:first_flutter_application/model/change_name_logic.dart';
import 'package:flutter/material.dart';

class ChangeNameLoopView extends StatefulWidget {
  const ChangeNameLoopView({
    super.key,
  });

  @override
  State<ChangeNameLoopView> createState() => _ChangeNameLoopViewState();
}

class _ChangeNameLoopViewState extends State<ChangeNameLoopView> {
  var gap = const SizedBox(height: 8);
  PrintNameLoop loop = PrintNameLoop();
  String name = 'ClickMe';

  void changenamelogic() {
    setState(() {
      name = loop.nextname(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Name"),
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
                ElevatedButton(
                  onPressed: () {
                    changenamelogic();
                  },
                  child: Text(name),
                ),
                gap,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
