import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_batch_one/widgets/builder/future.dart';
import 'package:flutter_batch_one/widgets/builder/stream.dart';
import 'package:flutter_batch_one/widgets/builder/valuelistenable.dart';
import 'package:flutter_batch_one/widgets/images/networking_image.dart';
import 'package:flutter_batch_one/widgets/keys/page.dart';
import 'package:flutter_batch_one/widgets/keys/valuekey.dart';
import 'package:flutter_batch_one/widgets/listtile.dart';
import 'package:flutter_batch_one/widgets/scrollable/gridview.dart';
import 'package:flutter_batch_one/widgets/scrollable/pageview.dart';
import 'package:flutter_batch_one/widgets/scrollable/refreshindicator.dart';
import 'package:flutter_batch_one/widgets/scrollable/singlechild.dart';
import 'package:flutter_batch_one/widgets/scrollable/tabbar.dart';
import 'package:flutter_batch_one/widgets/state/state.dart';
import 'package:flutter_batch_one/widgets/wrap.dart';

void main() {
  runApp(const MaterialApp(
    home: PageStorageKeyExampleWidget(),
  ));
}

/// Widget
///
/// App (Material, Cupertino)
///
/// StatelessWidget
/// StatefulWidget
///
/// Widget
/// List<Widget>

// class StateExample extends StatefulWidget {
//   const StateExample({super.key});

//   @override
//   State<StateExample> createState() => _StateExampleState();
// }

// class _StateExampleState extends State<StateExample> {
//   void boot() {
//     // boot();

//     // Future.delayed(Duration(milliseconds: 1), () {
//     //   setState(() {});
//     //   boot();
//     // });
//     ///business logic

//     setState(() {
//       ///business logic
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     boot();
//     return MaterialApp(
//       key: UniqueKey(),
//       showPerformanceOverlay: true,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("State Example ${DateTime.now()}"),
//         ),
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(
//                   "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

/// Column > Flex 1,4 = 5,
/// 1/5,4/5
/// Column > Flex 2,2,2 = 6

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool checkValue = false;

  final FocusNode focusNode = FocusNode();

  ///Global Key => Widget State
  ///1. Create Key
  ///2. Setup
  final GlobalKey<_MyWidgetState> key = GlobalKey();

  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      setState(() {});
    });
    return MaterialApp(
      home: Scaffold(
        body: scaffoldBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            key.currentState?.random();
          },
        ),
      ),
    );
  }

  Widget scaffoldBody() {
    return Scaffold(
      key: globalKey,
      drawer: drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: body(),
      ),
      backgroundColor: Colors.grey.shade100,
    );
  }

  double value = 1;

  Widget drawer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: const Column(
        children: [],
      ),
    );
  }

  Widget body() {
    return Container(
      child: TextField(
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(maxWidth: 100),
          suffixIcon: Container(
            color: Colors.green,
            // child: Text('fads'),
          ),
          hintText: "hello",
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

abstract class RandomCount extends StatefulWidget {
  final int max;
  const RandomCount({super.key, required this.max});
}

class MyWidget extends RandomCount {
  const MyWidget({super.key, super.max = 20});

  @override
  State createState() => _MyWidgetState();
}

class MyWidget2 extends RandomCount {
  const MyWidget2({super.key, super.max = 100});

  @override
  State createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RandomCount> {
  double count = 1;

  void random() {
    count = Random.secure().nextInt(widget.max).toDouble();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$count')),
    );
  }
}
