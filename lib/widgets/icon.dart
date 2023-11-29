import 'package:flutter/material.dart';

class IconWidgetExample extends StatelessWidget {
  const IconWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Icon(
            Icons.home,
            // size: 50,
            // fill: 0.1,
            // opticalSize: 0.1,
            // weight: 0.1,
            // grade: 0.1,
            // color: Colors.green,
          ),
        ),
      ),
    );
  }
}
