import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  Widget createRoundedCircle({
    required Widget child,
    BoxBorder? border,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: border ?? Border.all(color: Colors.red),
      ),
      child: child,
    );
  }

  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Text("Counter App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: number.isOdd ? Colors.green : Colors.grey,
                  width: 2,
                ),
                shape: BoxShape.circle,
              ),
              child: Text(
                "$number",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: number > 0 ? Colors.green : Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createRoundedCircle(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        number--;
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.red,
                      size: 45,
                    ),
                  ),
                ),
                createRoundedCircle(
                  border: Border.all(color: Colors.grey),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    icon: Icon(
                      Icons.replay,
                      color: Colors.grey,
                      size: 45,
                    ),
                  ),
                ),
                createRoundedCircle(
                  border: Border.all(color: Colors.green),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 45,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
