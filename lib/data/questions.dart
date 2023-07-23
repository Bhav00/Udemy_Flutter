import 'package:evalaton/models/questions_blueprint.dart';

const questions = [
  Question(
    "1 + 3",
    [
      "4",
      "99",
      "Inf",
      "Null",
    ],
  ),
  Question(
    "55 + 44",
    [
      "99",
      "4",
      "Inf",
      "Null",
    ],
  ),
  Question(
    "Inf + Inf",
    [
      "Inf",
      "4",
      "99",
      "Null",
    ],
  ),
];
