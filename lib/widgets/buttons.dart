import 'package:flutter/material.dart';

class FlutterExampleApp extends StatefulWidget {
  FlutterExampleApp({super.key});

  @override
  State<FlutterExampleApp> createState() => _FlutterExampleAppState();
}

class _FlutterExampleAppState extends State<FlutterExampleApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    print("_FlutterExampleAppState Rebuild");
    return MaterialApp(
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   tooltip: "TO Add",
        //   onPressed: () {
        //     setState(() {
        //       number++;
        //     });
        //     print("New Number is $number");
        //   },
        //   child: Text("Add"),
        //   elevation: 0,
        //   // splashColor: Colors.green,
        //   highlightElevation: 10,
        //   shape: RoundedRectangleBorder(
        //       side: BorderSide(
        //         color: Colors.green,
        //         width: 10,
        //         style: BorderStyle.solid,
        //         strokeAlign: 1,
        //       ),
        //       borderRadius: BorderRadius.all(Radius.circular(20))),
        // ),
        // floatingActionButton:
        // SizedBox(
        // width: 100,
        // height: 100,
        // child:
        //     ElevatedButton(
        //   onLongPress: () {
        //     setState(() {
        //       number++;
        //     });
        //   },
        //   onPressed: () {
        //     setState(() {
        //       number--;
        //     });
        //   },
        //   style: ButtonStyle(
        //     overlayColor: MaterialStateProperty.all(Colors.green),
        //     padding: MaterialStateProperty.all(EdgeInsets.zero),
        //     minimumSize: MaterialStateProperty.all(Size(70, 100)),
        //     maximumSize: MaterialStateProperty.all(Size(100, 100)),
        //     shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
        //     alignment: Alignment.bottomRight,
        //   ),
        //   child: Text("Remove"),
        // ),
        // ),
        // floatingActionButton: IconButton(
        //   isSelected: true,
        //   selectedIcon: Icon(
        //     Icons.house,
        //     color: Colors.green,
        //   ),
        //   constraints: BoxConstraints(
        //     minWidth: 100,
        //     maxHeight: 200,
        //   ),
        //   splashRadius: 80,
        //   // highlightColor: Colors.green,
        //   // splashColor: Colors.red,
        //   onPressed: () {},
        //   icon: Icon(Icons.house_outlined),
        // ),
        floatingActionButton: TextButton(
          onPressed: () {},
          child: Text("Hello"),
        ),
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back),
          // shape: RoundedRectangleBorder(
          //   side: BorderSide.none,
          //   // borderRadius: BorderRadius.all(Radius.circular(10)),
          //   // borderRadius: BorderRadius.horizontal(
          //   //   left: Radius.circular(80),
          //   // ),
          //   // borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
          //   borderRadius: BorderRadius.only(),
          // ),
          // elevation: 10,
          // shadowColor: Colors.green,
          // backgroundColor: Colors.black,
          // foregroundColor: Colors.blue,
          // leading: Icon(Icons.numbers),
          centerTitle: true,
          title: Text(
            "Counter Application",
            style: TextStyle(
                // inherit: false,
                // fontSize: 18,
                ),
          ),
          // actions: [
          //   Icon(Icons.add),
          //   Icon(Icons.remove),
          // ],
        ),
        body: Center(
          child: Text("Number is $number"),
        ),
      ),
    );
  }
}
