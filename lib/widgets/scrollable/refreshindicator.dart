import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorExampleWidget extends StatelessWidget {
  const RefreshIndicatorExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        child: ListView.builder(
          itemBuilder: (_, i) {
            return ListTile(
              title: Text(i.toString()),
            );
          },
          itemCount: 100,
        ),
        onRefresh: () {
          return Future.delayed(Duration(seconds: 3));
        },
      ),
    );
  }
}
