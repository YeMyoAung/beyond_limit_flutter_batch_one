import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  // color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.notifications,
                  size: 30,
                  // color: Colors.red,
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  width: 20,
                  height: 20,
                  child: const Text(
                    "2",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          color: Colors.white,
          child: Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Positioned(
                top: 50,
                right: 40,
                child: Container(
                  width: 20,
                  height: 20,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
