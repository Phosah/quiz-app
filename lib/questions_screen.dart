import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  // final String questionText;

  const QuestionsScreen(
      // this.questionText,
      {super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      // child: Text(
      //   widget.questionText,
      //   style: const TextStyle(fontSize: 28),
      //   textAlign: TextAlign.center,
      // ),
      child: const Text('Questions'),
    );
  }
}
