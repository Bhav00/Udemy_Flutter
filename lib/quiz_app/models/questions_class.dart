class Question {
  const Question(this.txt, this.answers);

  final String txt;
  final List<String> answers;

  List<String> shuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
