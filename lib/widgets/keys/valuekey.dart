import 'package:flutter/material.dart';

class ValueKeyExampleWidget extends StatefulWidget {
  const ValueKeyExampleWidget({super.key});

  @override
  State<ValueKeyExampleWidget> createState() => _ValueKeyExampleWidgetState();
}

class _ValueKeyExampleWidgetState extends State<ValueKeyExampleWidget> {
  // List<Widget> list = List.generate(2, (index) => index)
  //     .map(
  //       (e) => e == 0
  //           ? KeyContainer(
  //               value: e.toString(),
  //             )
  //           : KeyContainer2(value: e.toString()),
  //     )
  //     .toList();

  final List values = [...List.generate(100, (index) => index)];

  @override
  Widget build(BuildContext context) {
    //  ReorderableListView(
    //     padding: const EdgeInsets.symmetric(horizontal: 40),
    //     children: <Widget>[
    //       for (int index = 0; index < _items.length; index += 1)
    //         ListTile(
    //           key: Key('$index'),
    //           // tileColor: _items[index].isOdd ? oddItemColor : evenItemColor,
    //           title: Text('Item ${_items[index]}'),
    //         ),
    //     ],
    //     onReorder: (int oldIndex, int newIndex) {
    //       setState(() {
    //         ///oldIndex = 4
    //         ///newIndex = 3
    //         if (oldIndex < newIndex) {
    //           newIndex -= 1;
    //           ///2
    //         }
    //         final int item = _items.removeAt(oldIndex);

    //         _items.insert(newIndex, item);
    //       });
    //     },
    //   )
    return Scaffold(
      body: ListView.builder(
        itemCount: values.length,
        itemBuilder: (_, i) {
          print("i $i");
          return KeyContainer(
            value: values[i].toString(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        values.add(values.removeAt(0));
        print(values);
        setState(() {});
      }),
      // body: SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: list,
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     list.add(list.removeAt(0));
      //     setState(() {});
      //   },
      // ),
    );
  }
}

class KeyContainer extends StatelessWidget {
  final String value;
  final Color? color;
  const KeyContainer({
    super.key,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    print("Rebuild");
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: int.parse(value) % 2 == 0 ? Colors.red : Colors.green,
      // color: color ??
      //     Color.fromRGBO(
      //         Random.secure().nextInt(255),
      //         Random.secure().nextInt(255),
      //         Random.secure().nextInt(255),
      //         Random.secure().nextDouble()),
      child: Text(value),
    );
  }
}

// class KeyContainer2 extends StatelessWidget {
//   final String value;
//   final Color? color;
//   const KeyContainer2({
//     super.key,
//     required this.value,
//     this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     print("Rebuild");
//     return Container(
//       width: 100,
//       height: 100,
//       alignment: Alignment.center,
//       color: Colors.red,
//       // color: color ??
//       //     Color.fromRGBO(
//       //         Random.secure().nextInt(255),
//       //         Random.secure().nextInt(255),
//       //         Random.secure().nextInt(255),
//       //         Random.secure().nextDouble()),
//       child: Text(value),
//     );
//   }
// }
