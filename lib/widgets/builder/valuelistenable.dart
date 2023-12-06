import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueListenableWidgetExample extends StatefulWidget {
  const ValueListenableWidgetExample({super.key});

  @override
  State<ValueListenableWidgetExample> createState() =>
      _ValueListenableWidgetExampleState();
}

class _ValueListenableWidgetExampleState
    extends State<ValueListenableWidgetExample> {
  final ValueNotifier<int> notifier = ValueNotifier(0);

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: notifier,
            builder: (_, value, child) {
              print("Build Builder");
              return Column(
                children: [
                  Text(value.toString()),
                  child!,
                ],
              );
            },
            child: Child(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            notifier.value = notifier.value + 1;
          },
        ));
  }
}

class Child extends StatelessWidget {
  const Child({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(Random.secure().nextInt(255),
          Random.secure().nextInt(255), Random.secure().nextInt(255), 1),
      width: 100,
      height: 100,
    );
  }
}
