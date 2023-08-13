import 'package:flutter/material.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    super.key,
    required this.val,
    required this.img,
  });

  final int val;
  final Image img;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.zero,
            child: img,
          ),
        ),
        Text(
          val.toString(),
          // textAlign: TextAlign.right,
          style: const TextStyle(
            fontSize: 42.5,
            color: Color.fromARGB(255, 25, 0, 255),
          ),
        ),
      ],
    );
  }
}
