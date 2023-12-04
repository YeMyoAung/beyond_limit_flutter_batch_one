import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget input(String hint) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.only(
            // top: MediaQuery.of(context).size.height * 0.2,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://img.freepik.com/premium-photo/phone-wallpapers-that-are-out-this-world_899894-4266.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                // child: Row(
                //   children: [
                //     Expanded(child: TextField()),
                //     Expanded(child: TextField()),
                //   ],
                // ),
                child: SizedBox(),
              ),
              // Expanded(
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           color: Colors.green,
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           color: Colors.red,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Text(
                "Create",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 40),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              input("Your Name"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: input("Your Email"),
              ),
              input("Your Password"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: input("Confirm Password"),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Back to",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
