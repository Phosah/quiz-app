import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(questionsLength) {
    setState(() {
      _questionIndex = _questionIndex + 1;

      print(_questionIndex);

      if (_questionIndex == questionsLength) {
        _questionIndex = 0;
      }
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What's your favorite color?",
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': ['Lion', 'Dog', 'Cat', 'Tortoise'],
      },
      {
        'questionText': "Who's your favorite instructor?",
        'answers': ['Max', 'Brad', 'Jonas', 'Scott'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(_questionIndex.toString()),
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>).map(
              (answerText) {
                return Answer(
                  answerText: answerText,
                  selectHandler: () => _answerQuestion(questions.length),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
