import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xfffff176),
        textColor: Colors.black87,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
