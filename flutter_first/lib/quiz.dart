import 'package:flutter/cupertino.dart';

import 'Question.dart';
import 'answer.dart';

class Quitz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final void Function() answerQuestions;
  final int questionIndex;

  const Quitz(
      {required this.questions,
      required this.answerQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        (questions[questionIndex]['questionText'] as String),
      ),
      ...(questions[questionIndex]['answers'] as List<String>)
          .map((a) => Answer(a, answerQuestions))
          .toList()
    ]);
  }
}
