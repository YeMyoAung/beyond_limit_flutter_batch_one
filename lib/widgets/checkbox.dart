import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox Example"),
        ),
        body: Center(
          child: Checkbox(
            tristate: false,
            value: value,
            onChanged: (value) {
              // print(value);
              this.value = value == true;
              setState(() {});
            },
            activeColor: Colors.green,
            fillColor: MaterialStatePropertyAll(Colors.red),
            checkColor: Colors.black,
            overlayColor: MaterialStateProperty.all(Colors.pink),
            // splashRadius: 200,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80),
            ),
          ),
        ),
      ),
    );
  }
}
