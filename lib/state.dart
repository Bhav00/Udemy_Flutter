import 'package:flutter/material.dart';

import 'package:evalaton/home.dart';
import 'package:evalaton/questions_screen.dart';

class StateHandler extends StatefulWidget {
  const StateHandler({super.key});

  @override
  State<StateHandler> createState() {
    return _AppState();
  }
}

class _AppState extends State<StateHandler> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 57, 220, 179),
                Color.fromARGB(255, 57, 84, 220),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
