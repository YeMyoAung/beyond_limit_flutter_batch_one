import 'dart:math';

import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {
  String? value;

  Widget builder(String data) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromRGBO(Random.secure().nextInt(255),
            Random.secure().nextInt(255), Random.secure().nextInt(255), 1),
      ),
      child: Text(data),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DropDown Example"),
        ),
        body: Center(
          child: DropdownButton(
            onTap: () {
              print("Hello");
            },
            selectedItemBuilder: (ctx) {
              return List.generate(10, (index) => index)
                  .map((e) => builder(e.toString()))
                  .toList();
            },
            value: value,
            items: List.generate(10, (index) => index)
                .map(
                  (e) => DropdownMenuItem(
                    value: "F_$e",
                    child: Text(e.toString()),
                  ),
                )
                .toList(),
            onChanged: (va) {
              value = va;
              setState(() {});
            },
            hint: Text("Hello"),
            disabledHint: Text("Disable Hello"),
            underline: SizedBox(),
            icon: Icon(Icons.favorite),
            itemHeight: 100,
            dropdownColor: Colors.green,
            // menuMaxHeight: 50,
          ),
        ),
      ),
    );
  }
}
