import 'package:flutter/material.dart';

import 'package:evalaton/bin_go/button_component.dart';
import 'package:evalaton/bin_go/random_matrix.dart';

var obj = RandMat();

//  This is basically to try new things in UI changes
class Thing extends StatelessWidget {
  const Thing({super.key});

  @override
  Widget build(BuildContext context) {
    var score = "MEH";
    var mat = obj.getMat();
    debugPrint(obj.listprinter());
    return Scaffold(
      // body: some Function that returns all that is below,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 119, 255),
            Color.fromARGB(255, 115, 0, 255),
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Score: $score",
                style: const TextStyle(fontSize: 20),
              ),
              const CustButt(value: 0),
            ],
          ),
        ),
      ),
    );
  }
}

// ...ques.shuffledAnswers().map((ans) {
//               return AnswerButton(
//                 ans,
//                 () {
//                   answerQuestion(ans);
//                 },
//               );