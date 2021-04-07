import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answerText;
  final Function buttonPressed;

  Answer(this.buttonPressed, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25.0, color: Colors.white),
        ),
        onPressed: buttonPressed,
      ),
    );
  }
}
