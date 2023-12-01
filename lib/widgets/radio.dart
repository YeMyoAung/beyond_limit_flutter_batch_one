import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  const RadioButtonExample({super.key});

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  final List<String> groupValue = ["student", "teacher", "parent"];

  String? value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio Example"),
        ),
        body: Row(
          children: groupValue
              .map(
                (e) => Radio(
                  toggleable: false,
                  value: e,
                  groupValue: '1',
                  onChanged: (v) {
                    print(v);
                    // if (v == null) return;
                    // setState(() {
                    //   value = v;
                    // });
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
