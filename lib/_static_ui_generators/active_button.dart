import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  const ActiveButton({super.key, required this.val});

  final int val;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.center, children: [
      Text(
        val.toString(),
        style: const TextStyle(
          fontSize: 42.5,
          color: Color.fromARGB(255, 25, 0, 255),
        ),
      )
    ]);
  }
}
