// import 'package:evalaton/cust_buttons.dart';
import 'package:evalaton/stuff.dart';

import 'package:flutter/material.dart';
// import 'dart:math';

class Thing extends StatelessWidget {
  const Thing({super.key});

  @override
  Widget build(BuildContext context) {
    var score = 5;
    return Scaffold(
      // body: some Function that returns all that is below,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 119, 255),
            Color.fromARGB(255, 115, 0, 255),
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Score: $score",
                style: const TextStyle(fontSize: 20),
              ),
              const CustomButt(value: 0),
            ],
          ),
        ),
      ),
    );
  }
}
