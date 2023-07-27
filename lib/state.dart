import 'package:flutter/material.dart';

import 'package:evalaton/home.dart';
import 'package:evalaton/questions_screen.dart';
import 'package:evalaton/data/questions.dart';
import 'package:evalaton/result.dart';

class StateHandler extends StatefulWidget {
  const StateHandler({super.key});

  @override
  State<StateHandler> createState() {
    return _AppState();
  }
}

class _AppState extends State<StateHandler> {
  Widget? activeScreen;
  List<String> selectedAns = [];

  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestScreen(selectAnswer: chooseAnswer);
    });
  }

  void chooseAnswer(String ans) {
    selectedAns.add(ans);
    if (selectedAns.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(homeSwitch, selectedAns);
        // activeScreen = HomeScreen(switchScreen);
      });
    }
  }

  void homeSwitch() {
    setState(() {
      selectedAns = [];
      activeScreen = HomeScreen(switchScreen);
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
