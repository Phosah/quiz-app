import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
import 'start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 15},
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Tortoise', 'score': 8},
        {'text': 'Lamb', 'score': 11},
      ],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answers': [
        {'text': 'Max', 'score': 3},
        {'text': 'Brad', 'score': 5},
        {'text': 'Jonas', 'score': 15},
        {'text': 'Scott', 'score': 9},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _init() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Quiz();
  }
}
