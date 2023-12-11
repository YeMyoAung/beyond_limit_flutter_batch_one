import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_one/widgets/scrollable/singlechild.dart';

class PageViewExampleWidget extends StatelessWidget {
  const PageViewExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          for (int i = 0; i < 100; i++) RandomContainer(i: i),
        ],
      ),
    );
  }
}
