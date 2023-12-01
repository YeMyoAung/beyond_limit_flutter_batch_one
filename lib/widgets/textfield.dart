import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    final FocusNode focusNode = FocusNode();
    final FocusNode focusNode1 = FocusNode();
    final FocusNode focusNode2 = FocusNode();
    void doIt() {
      // print("Listener : ${controller.text}");
      print("FocusNode: ${focusNode.hasFocus}");
    }

    // focusNode.addListener(doIt);
    // controller.addListener(doIt);

    ///! close
    // controller.dispose();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: true,
              onTap: () {
                print("OnTap");
              },
              onTapOutside: (event) {
                focusNode1.unfocus();
              },
              selectionControls: CupertinoTextSelectionControls(),
              // enabled: false,
              cursorWidth: 10,
              onChanged: (value) {
                print(value);
              },
              onEditingComplete: () {
                print("Submit");
              },
              onSubmitted: (value) {
                print("Submit $value");
              },
              // maxLength: 50,
              // maxLines: 2,
              // keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                // filled: false,
                // fillColor: Colors.red,
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                // label: Text("hello"),
                // labelText: "Hello",
                // floatingLabelAlignment: FloatingLabelAlignment.center,
                // hintText: "fasdf",
                // helperText: "fadsfasfasd",
                // icon: Icon(Icons.email),
                prefix: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                // prefixIconConstraints: BoxConstraints(
                //   maxHeight: 20,
                // )

                // constraints: BoxConstraints()
                // prefixIcon: Icon(Icons.email),
                // suffix: Icon(Icons.password),
                // suffixIcon: Icon(Icons.password),
              ),
              focusNode: focusNode1,
              controller: controller,
            ),
            // TextField(
            //   focusNode: focusNode,
            //   controller: controller,
            // ),
            // TextField(
            //   focusNode: focusNode2,
            //   controller: controller,
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       focusNode1.requestFocus();
            //       // focusNode.unfocus();
            //       // print(focusNode.hasFocus);s

            //       // print(controller.text);
            //       // controller.clear();

            //       // controller.removeListener(doIt);

            //       // controller.text = '';
            //       // controller.value = TextEditingValue(
            //       //     text: "My name is ``.",
            //       //     selection:
            //       //         TextSelection.fromPosition(TextPosition(offset: 12)));

            //       // controller.selection =
            //       //     TextSelection.fromPosition(TextPosition(offset: 2));
            //     },
            //     child: Text("Focus 1")),
            // ElevatedButton(
            //     onPressed: () {
            //       // focusNode.requestFocus();
            //       // focusNode.unfocus();
            //       // print(focusNode.hasFocus);
            //       focusNode.requestFocus();

            //       // print(controller.text);
            //       // controller.clear();

            //       // controller.removeListener(doIt);

            //       // controller.text = '';
            //       // controller.value = TextEditingValue(
            //       //     text: "My name is ``.",
            //       //     selection:
            //       //         TextSelection.fromPosition(TextPosition(offset: 12)));

            //       // controller.selection =
            //       //     TextSelection.fromPosition(TextPosition(offset: 2));
            //     },
            //     child: Text("Focus 2")),
            // ElevatedButton(
            // onPressed: () {
            //   focusNode2.requestFocus();
            // focusNode.requestFocus();
            // focusNode.unfocus();
            // print(focusNode.hasFocus);

            // print(controller.text);
            // controller.clear();

            // controller.removeListener(doIt);

            // controller.text = '';
            // controller.value = TextEditingValue(
            //     text: "My name is ``.",
            //     selection:
            //         TextSelection.fromPosition(TextPosition(offset: 12)));

            // controller.selection =
            //     TextSelection.fromPosition(TextPosition(offset: 2));
            // },
            // child: Text("Foucs 3")),
          ],
        ),
      ),
    );
  }
}
