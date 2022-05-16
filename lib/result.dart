import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final VoidCallback _resetQuiz;

  const Result(this._resultScore, this._resetQuiz, {Key? key})
      : super(key: key);

  String get resultPhrase {
    final String resultText;
    if (_resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (_resultScore <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: _resetQuiz,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
