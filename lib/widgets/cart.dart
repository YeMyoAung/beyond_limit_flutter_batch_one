import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card Example"),
        ),
        body: Center(
          child: Card(
            elevation: 0,
            child: SizedBox(
              width: 100,
              height: 100,
              child: Text("Hello World"),
            ),
          ),
        ),
      ),
    );
  }
}
