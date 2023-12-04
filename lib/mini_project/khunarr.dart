import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: _loginWidget(context),
        backgroundColor: Colors.grey.shade100,
      ),
    );
  }

  Widget textField() {
    return Row(
      children: [
        Text("jkfdjas"),
        SizedBox(width: 100, child: TextField()),
        Text(":jdfask")
      ],
    );
  }

  Widget _loginWidget(BuildContext context) {
    return Center(
      child: Container(
        // padding: const EdgeInsets.all(20),
        width: 300,
        height: 350,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xff000f24), Color.fromARGB(93, 104, 113, 100)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.black87,
                alignment: Alignment.center,
                child: Text(
                  'Customer Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: TextFormField(
                        focusNode: focusNode,
                        controller: _emailController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: focusNode.hasFocus ? Colors.white : null,
                            ),
                            labelText: 'Email ID',
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: checkValue,
                                onChanged: (value) {
                                  checkValue = value == true;
                                  setState(() {});
                                },
                                activeColor: Colors.green,
                                fillColor:
                                    MaterialStatePropertyAll(Colors.black),
                                checkColor: Colors.white,
                              ),
                              const Text(
                                'Remember Me',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(200, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
