import 'package:flutter/material.dart';
import 'questions_screen.dart';
import 'answer_button.dart';
import 'start_screen.dart';

class Quiz extends StatefulWidget {
  // final List<Map<String, Object>> questions;
  // final Function answerQuestion;
  // final int questionIndex;
  const Quiz(
      {
      //   required this.questions,
      // required this.answerQuestion,
      // required this.questionIndex,
      super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   // activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     QuestionsScreen(widget.questions[widget.questionIndex]['questionText'] as String),
    //     ...(widget.questions[widget.questionIndex]['answers'] as List<Map<String, Object>>)
    //         .map(
    //       (answerText) {
    //         return Answer(
    //           answerText: answerText['text'] as String,
    //           selectHandler: () => widget.answerQuestion(answerText['score']),
    //         );
    //       },
    //     ),
    //   ],
    // );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 79, 19, 182),
                Color.fromARGB(255, 66, 48, 99),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
