import 'dart:math';

import 'package:flutter/material.dart';

class KeysExampleWidget extends StatefulWidget {
  const KeysExampleWidget({super.key});

  @override
  State<KeysExampleWidget> createState() => _KeysExampleWidgetState();
}

class _KeysExampleWidgetState extends State<KeysExampleWidget> {
  final List<Widget> children = [
    ValueContainer(
      // key: ValueKey(1),
      key: UniqueKey(),
    ),
    ValueContainer(
      // key: ValueKey(2),
      key: UniqueKey(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Original $children");
          final removed = children.removeLast();
          print("Removed $children");

          children.insert(0, removed);
          print("Insert $children");

          setState(() {});
        },
      ),
      body: Column(
        children: children,
      ),
    );
  }
}

class ValueContainer extends StatefulWidget {
  const ValueContainer({super.key});

  @override
  State<ValueContainer> createState() => _ValueContainerState();
}

class _ValueContainerState extends State<ValueContainer> {
  late Color color;

  @override
  void initState() {
    super.initState();
    print("init");
    color = Color.fromRGBO(
        Random.secure().nextInt(255),
        Random.secure().nextInt(255),
        Random.secure().nextInt(255),
        Random.secure().nextDouble());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
