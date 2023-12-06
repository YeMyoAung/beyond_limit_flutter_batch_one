import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final data = [
  for (int i = 0; i < 100; i++) RandomContainer(i: i),
];

// final s = {};

// final b = {
//   s,
// };

///[],{},{}
///

class SingleChidScrollWidgetExample extends StatefulWidget {
  const SingleChidScrollWidgetExample({super.key});

  @override
  State<SingleChidScrollWidgetExample> createState() =>
      _SingleChidScrollWidgetExampleState();
}

class _SingleChidScrollWidgetExampleState
    extends State<SingleChidScrollWidgetExample> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print("SCroll ${controller.offset}");
    });

    // Future.delayed(Duration(seconds: 3), () {
    //   controller.animateTo(100,
    //       duration: Duration(seconds: 2), curve: Curves.linear);
    // });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget single() {
    return SingleChildScrollView(
      child: Column(
        children: data,
      ),
    );
  }

  final List<int> i = [1];
  final List<int> b = [2, 3];

  @override
  Widget build(BuildContext context) {
    final List<int> c = [
      ...b,
      ...i,
    ];
    c.addAll(i);
    c.addAll(b);

    print(c);

    ///SingleChidScrollView
    ///ListView
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.height,
        child: ListView(
          // itemExtent: 100,
          physics: PageScrollPhysics(),
          controller: controller,
          reverse: true,
          children: [
            ListView(
              children: data,
            ),

            ///...
            ...data
          ],
        ),
      ),
    );
  }
}

class RandomContainer extends StatelessWidget {
  final int i;
  const RandomContainer({super.key, required this.i});

  double get random {
    final result = Random.secure().nextDouble();
    return result == 0 ? 1 : result;
  }

  @override
  Widget build(BuildContext context) {
    print("Build Widget $i");
    return Container(
      width: random * 200,
      height: random * 300,
      color: Colors.green,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(i.toString()),
    );
  }
}
