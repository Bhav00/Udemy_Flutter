import 'package:flutter/material.dart';

Widget something =
    const Stack(alignment: AlignmentDirectional.center, children: [
  Text(
    "0",
    style: TextStyle(
      fontSize: 25,
      color: Color.fromARGB(255, 0, 208, 255),
    ),
  )
]);
Widget notSomething = Stack(
  alignment: AlignmentDirectional.center,
  children: [
    const Text(
      "0",
      // textAlign: TextAlign.right,
      style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 255, 7, 7)),
    ),
    Positioned(
      child: Container(
        padding: EdgeInsets.zero,
        child: Image.asset(
          'assets/images/close2.png',
          color: const Color.fromARGB(128, 255, 0, 0),
        ),
      ),
    )
  ],
);

class CustomButt extends StatefulWidget {
  const CustomButt({super.key, required this.value});

  final int value;

  @override
  State<CustomButt> createState() {
    return _CustomButt();
  }
}

class _CustomButt extends State<CustomButt> {
  bool clicked = false;
  // int? val;
  // Widget? something;
  // Widget? notSomething;

  // @override
  // void initState() {
  //   super.initState();
  //   // val = widget.value;
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle light when tapped.
          clicked = true;
        });
      },
      child: Container(
        padding: EdgeInsets.zero,
        height: 60,
        width: 60,
        color: const Color.fromARGB(100, 255, 255, 255),
        // Change button text when light changes state.
        child: clicked ? notSomething : something,
      ),
    );
  }
}
