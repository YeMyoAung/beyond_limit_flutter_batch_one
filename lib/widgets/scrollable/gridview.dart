import 'package:flutter/material.dart';
import 'package:flutter_batch_one/widgets/scrollable/singlechild.dart';

class GridViewExampleWidget extends StatelessWidget {
  const GridViewExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: custom(),
    );
  }

  Widget custom() {
    return GridView.custom(
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
      childrenDelegate: SliverChildBuilderDelegate(
          (context, i) => RandomContainer(i: i),
          childCount: 100),
    );
  }

  Widget builder() {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
        itemBuilder: (_, i) {
          return RandomContainer(i: i);
        });
  }

  Widget grid() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        // mainAxisExtent: 450,
        crossAxisSpacing: 20,
        childAspectRatio: 0.1,
      ),
      children: [
        for (int i = 0; i < 100; i++) RandomContainer(i: i),
      ],
    );
  }
}
