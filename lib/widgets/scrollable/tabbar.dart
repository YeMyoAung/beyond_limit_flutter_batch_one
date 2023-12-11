import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_one/widgets/scrollable/singlechild.dart';

class TabBarExampleWidget extends StatefulWidget {
  const TabBarExampleWidget({super.key});

  @override
  State<TabBarExampleWidget> createState() => _TabBarExampleWidgetState();
}

class _TabBarExampleWidgetState extends State<TabBarExampleWidget>
    with SingleTickerProviderStateMixin {
  late final TabController controller =
      TabController(initialIndex: 4, length: 10, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        isScrollable: true,
        controller: controller,
        tabs: [
          for (int i = 0; i < 10; i++)
            Tab(
              text: "Hello",
              icon: Icon(Icons.favorite),
            )
        ],
        indicatorColor: Colors.red,
      ),
      body: TabBarView(
        viewportFraction: 1,
        controller: controller,
        children: [for (int i = 0; i < 10; i++) RandomContainer(i: i)],
      ),
    );
  }
}
