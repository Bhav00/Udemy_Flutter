import 'package:flutter/material.dart';
import 'package:evalaton/models/questions_blueprint.dart';

// Text used throughout the app to be generated using this
// Maybe more parameters according to the text editing will be added in the future
// all the settings being in a nested json ish format clutter it all
// so instead of all these styles inside styles I decided this

//  make the dart file into various files to make it all the more useable in the future if needed
class CustomText extends StatelessWidget {
  const CustomText(this.txt, {super.key});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.txt, this.func, {super.key});

  final String txt;
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 57, 0, 212),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Text(txt),
    );
  }
}

class QuestionsUI extends StatelessWidget {
  const QuestionsUI(this.ques, {super.key});

  final Question ques;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(ques.txt),
          const SizedBox(height: 18),
          AnswerButton(ques.answers[0], () {}),
          const SizedBox(height: 18),
          AnswerButton(ques.answers[1], () {}),
          const SizedBox(height: 18),
          AnswerButton(ques.answers[2], () {}),
          const SizedBox(height: 18),
          AnswerButton(ques.answers[3], () {}),
        ],
      ),
    );
  }
}
