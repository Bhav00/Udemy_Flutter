import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:evalaton/models/questions_blueprint.dart';

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
      textAlign: TextAlign.center,
      style: GoogleFonts.sourceSansPro(
        fontSize: 20,
        color: const Color.fromARGB(234, 255, 255, 255),
        fontWeight: FontWeight.bold,
      ),
      // style: const TextStyle(
      //   fontSize: 20,
      //   color: Colors.white,
      // ),
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
          horizontal: 50,
          vertical: 12,
        ),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Text(
        txt,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class QuestSummary extends StatelessWidget {
  const QuestSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: SingleChildScrollView(
          child: Column(
            children: summary.map((data) {
              return SizedBox(
                height: 85,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ((data['idx'] as int) + 1).toString(),
                      style: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        color: const Color.fromARGB(234, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: 36),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ((data['ques']).toString()),
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 15,
                              color: const Color.fromARGB(234, 255, 255, 255),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text((data['correct']).toString()),
                          Text((data['chosen']).toString()),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 50),
                  ],
                ),
              );
            }).toList(),
          ),
        ));
  }
}

// class QuestionsUI extends StatelessWidget {
//   const QuestionsUI(this.ques, {super.key});

//   final Question ques;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
