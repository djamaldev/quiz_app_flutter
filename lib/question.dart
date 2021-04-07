import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
