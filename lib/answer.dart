import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback _selectHandler;
  final String _answerText;

  const Answer(this._selectHandler, this._answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(_answerText),
        onPressed: _selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
    );
  }
}
