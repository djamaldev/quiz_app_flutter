import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<String>)
            .map(
              (answer) => Answer(answerQuestion, answer),
        )
            .toList(),
      ],
    );
  }
}
