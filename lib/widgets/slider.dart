import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool checkValue = false;

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(() {
      setState(() {});
    });
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: slider(),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
    );
  }

  double value = 1;

  Widget slider() {
    return Slider(
      value: value,
      secondaryTrackValue: 80,
      inactiveColor: Colors.blue,
      secondaryActiveColor: Colors.red,
      divisions: 5,
      label: 'vajk',
      min: 1,
      // thumbColor: Colors.green,
      max: 100,
      onChanged: (value) {
        this.value = value;
        setState(() {});
      },
      onChangeStart: (value) {
        print("Start  $value");
      },
      onChangeEnd: (value) {
        print("End  $value");
      },
    );
  }
}
