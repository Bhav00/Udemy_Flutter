import 'package:flutter/material.dart';

import 'package:evalaton/quiz_app/ui/customs.dart';
import 'package:evalaton/quiz_app/data/questions.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({super.key, required this.selectAnswer});

  final void Function(String answer) selectAnswer;

  @override
  State<QuestScreen> createState() {
    return _QuestScreen();
  }
}

class _QuestScreen extends State<QuestScreen> {
  var idx = 0;

  void answerQuestion(String ans) {
    setState(() {
      idx += 1;
      widget.selectAnswer(ans);
    });
  }

  @override
  Widget build(BuildContext context) {
    final ques = questions[idx];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(ques.txt),
            const SizedBox(height: 24),
            ...ques.shuffledAnswers().map((ans) {
              return AnswerButton(
                ans,
                () {
                  answerQuestion(ans);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
