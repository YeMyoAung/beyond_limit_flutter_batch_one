import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hello world",
            style: TextStyle(
              inherit: true,
            ),
          ),
        ),
        body: Center(
          child: Container(
            // color: Colors.grey,
            // width: 2000,
            // height: 30,
            child: Text(
              "Hello world fkjasdkfjklasdjfklasdjfkasdjfklsdjfjhasdjkfjasklfjasdkfjasdklfj fjaskdfjksldfjklsdjfkl",
              maxLines: 2,
              // textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.red,
                // backgroundColor: Colors.green,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.normal,
                // letterSpacing: 1,
                // wordSpacing: 20,
                // textBaseline: TextBaseline.alphabetic,
                // height: 20,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(2, -1),
                    blurRadius: 2,
                  ),
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(-2, 0),
                    blurRadius: 2,
                  ),
                ],
                decoration: TextDecoration.underline,
                decorationColor: Colors.green,
                fontFamily: 'Schyler',
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Lib > main,widgets > scaffold