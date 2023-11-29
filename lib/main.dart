import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContainerExample());
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

class ContainerExample extends StatefulWidget {
  const ContainerExample({super.key});

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Example"),
        ),
        body: Container(
          width: 100,
          height: 100,
          alignment: Alignment.bottomRight,
          // margin: EdgeInsets.only(right: 350),
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.green,
//               background-color: #4158D0;
// background-image: linear-gradient(43deg, #4158D0 0%, #C850C0 46%, #FFCC70 100%);
            // image: DecorationImage(
            //   image: NetworkImage(
            //     "https://cdn.discordapp.com/attachments/1032886971749630033/1177515908139335760/IMG_6343.jpg?ex=6572ca25&is=65605525&hm=a43419eee79b00e83a6681df9d84d8828cb4e93c677289dad6a6220df3249fb4&",
            //   ),
            //   opacity: 0.1,
            //   fit: BoxFit.cover,
            // ),
            border: Border.all(),
            // gradient: LinearGradient(
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            //   colors: [
            //     Color.fromRGBO(65, 88, 208, 1),
            //     Color.fromRGBO(200, 80, 192, 1),
            //     Color.fromRGBO(255, 204, 112, 1),
            //   ],
            //   stops: [
            //     0,
            //     0.46,
            //     1,
            //   ],
            // )
            // shape: BoxShape.rectangle,
          ),
          child: Text("Hello"),
        ),
      ),
    );
  }
}
