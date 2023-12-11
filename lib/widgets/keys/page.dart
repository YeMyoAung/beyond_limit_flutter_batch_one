import 'package:flutter/material.dart';

final bucket = PageStorageBucket();
final bucket1 = PageStorageBucket();

class PageStorageKeyExampleWidget extends StatefulWidget {
  const PageStorageKeyExampleWidget({super.key});

  @override
  State<PageStorageKeyExampleWidget> createState() =>
      _PageStorageKeyExampleWidgetState();
}

class _PageStorageKeyExampleWidgetState
    extends State<PageStorageKeyExampleWidget> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        ListView.builder(
          key: PageStorageKey(bucket),
          itemBuilder: (_, i) {
            return ListTile(
              title: Text(i.toString()),
            );
          },
          itemCount: 100,
        ),
        ListView.builder(
          key: PageStorageKey(bucket1),
          itemBuilder: (_, i) {
            return ListTile(
              title: Text(i.toString()),
            );
          },
          itemCount: 100,
        )
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          index = i;
          setState(() {});
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            activeIcon: Icon(Icons.favorite),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_outlined,
            ),
            activeIcon: Icon(Icons.article),
            label: 'Article',
          )
        ],
      ),
    );
  }
}
