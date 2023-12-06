import 'package:flutter/material.dart';

Stream<double> download() async* {
  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1), () {});
    yield i.toDouble();
  }
}

class StreamBuilderWidgetExample extends StatelessWidget {
  const StreamBuilderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        initialData: 0.0,
        stream: download(),
        builder: (_, snap) {
          print(snap.connectionState);
          return Slider(
            max: 100,
            min: 0,
            value: snap.data ?? 0,
            onChanged: null,
          );
        },
      ),
    );
  }
}
