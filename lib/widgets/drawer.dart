import 'dart:math';

import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool checkValue = false;

  final FocusNode focusNode = FocusNode();

  ///Global Key => Widget State
  ///1. Create Key
  ///2. Setup
  final GlobalKey<_MyWidgetState> key = GlobalKey();

  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      setState(() {});
    });
    return MaterialApp(
      home: Scaffold(
        body: scaffoldBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            key.currentState?.random();
          },
        ),
      ),
    );
  }

  Widget scaffoldBody() {
    return Scaffold(
      key: globalKey,
      endDrawer: drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openEndDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: body(),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }

  double value = 1;

  Widget drawer() {
    return Container(
      width: 200,
      height: MediaQuery.of(context).size.height,
      color: Colors.red,
    );
  }

  Widget body() {
    return Container(
      child: TextField(
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(maxWidth: 100),
          suffixIcon: Container(
            color: Colors.green,
            // child: Text('fads'),
          ),
          hintText: "hello",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

abstract class RandomCount extends StatefulWidget {
  final int max;
  const RandomCount({super.key, required this.max});
}

class MyWidget extends RandomCount {
  const MyWidget({super.key, super.max = 20});

  @override
  State createState() => _MyWidgetState();
}

class MyWidget2 extends RandomCount {
  MyWidget2({super.key, super.max = 100});

  @override
  State createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RandomCount> {
  double count = 1;

  void random() {
    count = Random.secure().nextInt(widget.max).toDouble();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$count')),
    );
  }
}
