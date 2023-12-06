import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_one/widgets/state/state.dart';

class WrapWidgetExample extends StatefulWidget {
  const WrapWidgetExample({super.key});

  @override
  State<WrapWidgetExample> createState() => _WrapWidgetExampleState();
}

class _WrapWidgetExampleState extends State<WrapWidgetExample> {
  final List<String> videoLists = [
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
  ];

  int index = 0;

  late final List<GlobalKey<_ContainerWidgetWithStateState>> states;

  @override
  void initState() {
    super.initState();
    states = List.generate(
        2, (index) => GlobalKey<_ContainerWidgetWithStateState>());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Wrap(
          // direction: Axis.vertical,
          alignment: WrapAlignment.center,
          // spacing: 10,
          runAlignment: WrapAlignment.center,
          // runSpacing: 10,
          // verticalDirection: VerticalDirection.up,
          children: [
            for (int i = 0; i < 4; i++)
              const ContainerWidget(
                i: 1,
              ),
            for (int i = 0; i < states.length; i++)
              ContainerWidgetWithState(
                key: states[i],
                name: "id:$i",
                dateTime: index,
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        index += 1;
        print("index $index");
        if (index > 9) {
          if (index == 10) {
            states[1].currentState?.update();
          }
          if (index > 99) {
            ///id:0,1 reubild
            for (var i in states) {
              i.currentState?.update();
            }
            return;
          }

          ///id:0 rebuild
          states[0].currentState?.update();
        } else {
          ///id:1 rebuild
          states[1].currentState?.update();
        }
      }),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final int i;
  // int i;
  const ContainerWidget({
    super.key,
    // required this.i,
    required this.i,
  });

  int get colorCode => Random.secure().nextInt(255);

  @override
  Widget build(BuildContext context) {
    print("Build ContainerWidget");
    return Container(
      width: 100,
      height: 100,
      color: Color.fromRGBO(colorCode, colorCode, colorCode, 1),
      // child: Text(i.toString()),
      alignment: Alignment.center,
    );
  }
}

class ContainerWidgetWithState extends StatefulWidget {
  final int dateTime;
  final String name;
  const ContainerWidgetWithState({
    super.key,
    required this.dateTime,
    required this.name,
  });

  @override
  State<ContainerWidgetWithState> createState() =>
      _ContainerWidgetWithStateState();
}

class _ContainerWidgetWithStateState extends State<ContainerWidgetWithState> {
  int get colorCode => Random.secure().nextInt(255);

  late int number;

  @override
  void initState() {
    super.initState();
    number = widget.dateTime;
  }

  void update() {
    number += 1;
    if (number > 9) {
      number = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("Build ${widget.name}");
    return Container(
      width: 100,
      height: 100,
      color: Color.fromRGBO(colorCode, colorCode, colorCode, 1),
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        width: 50,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          "${number}",
        ),
      ),
    );
  }
}
