import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function buttonPressed;

  Result(this.buttonPressed);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Done !',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: buttonPressed,
              child: Text('Reset quiz', style: TextStyle(fontSize: 20.0)))
        ],
      ),
    );
  }
}
