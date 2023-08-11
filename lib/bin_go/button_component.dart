import 'package:evalaton/_static_ui_generators/active_button.dart';
import 'package:evalaton/_static_ui_generators/in_active_button.dart';
import 'package:flutter/material.dart';

class CustButt extends StatefulWidget {
  const CustButt({super.key, required this.value});

  final int value;

  @override
  State<CustButt> createState() {
    return _CustButt();
  }
}

class _CustButt extends State<CustButt> {
  bool _clicked = false;
  int? val;
  Image? cross;

  @override
  void initState() {
    val = widget.value;
    cross = Image.asset(
      'assets/images/close2.png',
      color: const Color.fromARGB(255, 255, 76, 76),
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(cross!.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle light when tapped.
          _clicked = true;
        });
      },
      child: Container(
        padding: EdgeInsets.zero,
        height: 60,
        width: 60,
        color: const Color.fromARGB(255, 255, 255, 255),
        // Change button text when light changes state.
        child: _clicked
            ? InActiveButton(
                val: val!,
                img: cross!,
              )
            : ActiveButton(val: val!),
      ),
    );
  }
}
