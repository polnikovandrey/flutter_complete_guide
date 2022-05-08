import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String _questionText;

  const Question(this._questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(_questionText);
  }
}
