import 'package:evalaton/color_generator.dart';
import 'package:flutter/material.dart';
// import 'dart:math';

class Thing extends StatelessWidget {
  const Thing({super.key});

  @override
  Widget build(BuildContext context) {
    cols = getColors();
    return Scaffold(
      body: ListView.builder(
          // itemCount: (double.infinity).toInt(),
          itemBuilder: (_, data) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: cols[data % (cols.length - 1)],
          ),
          width: double.infinity,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
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
    );
  }
}
