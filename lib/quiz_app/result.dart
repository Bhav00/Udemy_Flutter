import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:evalaton/quiz_app/data/questions.dart';
import 'package:evalaton/quiz_app/ui/customs.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.home, this.answers, {super.key});

  final Function() home;
  final List<String> answers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summ = [];

    for (var i = 0; i < answers.length; i++) {
      summ.add({
        'idx': i,
        'ques': questions[i].txt,
        'correct': questions[i].answers[0],
        'chosen': answers[i],
      });
    }
    return summ;
  }

  @override
  Widget build(BuildContext context) {
    final numTotal = questions.length;
    final summ = getSummary();
    final corrTotal = summ.where((data) {
      return data['correct'] == data['chosen'];
    }).length;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You answered $corrTotal out of $numTotal answers correctly",
              textAlign: TextAlign.center,
              style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                color: const Color.fromARGB(234, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            QuestSummary(summ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: home,
              child: const Text(
                "Restart",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
