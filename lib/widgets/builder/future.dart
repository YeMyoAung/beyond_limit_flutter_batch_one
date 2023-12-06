import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<int> getRandomData() {
  return Future.delayed(
      Duration(seconds: 3), () => Random.secure().nextInt(999));
  // throw "hello";
}

class FutureBuilderWidgetExample extends StatelessWidget {
  const FutureBuilderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: Center(
        child: FutureBuilder(
          // future: getRandomData(),
          future: getRandomData(),
          initialData: 1,
          builder: (_, snapshot) {
            print(snapshot.connectionState);
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();

            return Text(snapshot.data?.toString() ?? "h");
          },
        ),
      ),
    );
  }
}
