import 'package:flutter/material.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({super.key});

  @override
  State<QuestScreen> createState() {
    return _QuestScreen();
  }
}

class _QuestScreen extends State<QuestScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      children: [
        Text(
          "data",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
