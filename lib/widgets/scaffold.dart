import 'package:flutter/material.dart';

/// 1.AppBar
/// leading ,title, action
class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        floatingActionButton: Text("Hello World"),
        appBar: AppBar(
          leading: Text("Leading *"),
          title: Text("title"),
          actions: [
            Text("H"),
            Text("E"),
            Text("L"),
            Text("L"),
            Text("O"),
          ],
        ),
        body: Text("Body"),
        drawer: Text("Hello"),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Text("A"), label: 'a'),
            BottomNavigationBarItem(icon: Text("B"), label: 'b'),
            BottomNavigationBarItem(icon: Text("C"), label: 'c'),
          ],
        ),
      ),
    );
  }
}
