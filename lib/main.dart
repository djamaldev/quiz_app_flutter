import 'package:app03/quiz.dart';
import 'package:app03/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': ['Black', 'White', 'Blue', 'Red']
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': ['Tiger', 'Lion', 'Rabbit', 'Cut', 'Dog']
    },
    {
      'questionText': 'What\'s your favorite sport ?',
      'answers': ['Football', 'Tennis', 'Bascketball', 'Swiming']
    },
  ];

  void _resetQuestion(){
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print('answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Container(
        child: _questionIndex < _question.length ?
        Quiz(_question, _questionIndex, _answerQuestion)
        : Result((){setState(() {
          _questionIndex = 0;
        });})
      )
    );
  }
}
