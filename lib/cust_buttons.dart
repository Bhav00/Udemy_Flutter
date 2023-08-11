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
  Widget? something;

  @override
  void initState() {
    super.initState();
    val = widget.value;
    something = Text(
      val.toString(),
      style: const TextStyle(fontSize: 25),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        fixedSize: const Size(55, 55),
        foregroundColor: Colors.blue,
        disabledForegroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      onPressed: _clicked
          ? null
          : () {
              setState(() {
                _clicked = true;
                something = Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Text(
                      val.toString(),
                      textAlign: TextAlign.right,
                      style: const TextStyle(fontSize: 25),
                    ),
                    const Positioned(
                      child: Icon(
                        Icons.close,
                        size: 48,
                        color: Color.fromRGBO(218, 32, 32, 0.338),
                      ),
                    )
                  ],
                );
              }); // set it to true now
            },
      child: something,
    );
  }
}
