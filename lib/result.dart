import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 14) {
      resultText = "You did well. Keep it going";
    } else if (resultScore > 14 && resultScore <= 24) {
      resultText = "Now you're getting better";
    } else {
      resultText = "You're a superstar";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPhrase,
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
        ElevatedButton(
            onPressed: resetHandler, child: const Text('Start Again'))
      ],
    );
  }
}
