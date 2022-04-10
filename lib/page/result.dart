import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    double d = resultScore / 1000;
    double w = (resultScore % 1000) / 100;
    double l = (resultScore % 100) / 10;
    double b = (resultScore % 10) / 1;

    double max = b;
    if (l > max) {
      max = l;
    }
    if (w > max) {
      max = w;
    }
    if (d > max) {
      max = d;
    }

    if (max == b) {
      resultText = 'Bear';
    } else if (max == l) {
      resultText = 'Lion';
    } else if (max == w) {
      resultText = 'Wolf';
    } else {
      resultText = 'Dolphin';
    }

    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
