import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            dense: true,
            style: ListTileStyle.list,
            onTap: () {},
            selected: true,
            selectedTileColor: Colors.amber,
            leading: Icon(Icons.abc),
            title: Text("hellofasdfasfas"),
            subtitle:
                Text("fjasklfasdfaskfjaskjdfkasjdfkjsdkfjasdfklasjklfjkasd"),
            trailing: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
