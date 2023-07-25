import 'package:flutter/material.dart';

import 'package:evalaton/ui/customs.dart';
import 'package:evalaton/data/questions.dart';
import 'package:evalaton/models/questions_blueprint.dart';

const List<Question> qns = questions;
var i = 0;

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
    return QuestionsUI(qns[i]);
  }
}
