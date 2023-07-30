import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:evalaton/quiz_app/state.dart';

const String txt = "100 110 010 011 001 101";

const Map<String, List<num>> txts = {
  "r": [1, 1, 0, 0, 0, 1],
  "g": [0, 1, 1, 1, 0, 0],
  "b": [0, 0, 0, 1, 1, 1]
};

var cols = [
  Color.fromARGB(255, 255, 196, 0),
];

var r = 255, g = 0, b = 0;
var x = 0;

void colsGenerator() {
  while (x < txts["r"]!.length) {
    for (int i = 0; i < 3; i++) {}

    x++;
  }
}

void main() {
  runApp(Scaffold(
    body: ListView.builder(itemBuilder: (_, data) {
      return Container(
        child: const Text("asd"),
      );
    }),
    // body: some Function that returns all that is below,
    // body: Center(
    //   child: SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Row(
    //           children: cols.map((col) {
    //             return const Text("col");
    //           }).toList(),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  ));
}
