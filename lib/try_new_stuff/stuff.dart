import 'package:flutter/material.dart';

// Stateful class to work around

class CustomButt extends StatefulWidget {
  const CustomButt({super.key});

  @override
  State<CustomButt> createState() {
    return _CustomButt();
  }
}

class _CustomButt extends State<CustomButt> {
  @override
  Widget build(BuildContext context) {
    return const Text("some text");
  }
}
