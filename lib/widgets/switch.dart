import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: value,
          onChanged: (value) {
            this.value = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
