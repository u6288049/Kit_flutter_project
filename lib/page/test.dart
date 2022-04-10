import 'package:flutter/material.dart';

import 'package:wake_me_refresh/page/quiz.dart';
import 'package:wake_me_refresh/page/result.dart';

class TestPage extends StatefulWidget {
  static const routeName = '/test';

  const TestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TestPageState();
  }
}

class _TestPageState extends State<TestPage> {

  final _questions = const [
    {
      'questionText': 'Q1. What time do you naturally wake up?',
      'answers': [
        {'text': '8 or 9 A.M', 'score': 1},
        {'text': 'About 6 A.M or even earlier', 'score': 10},
        {'text': 'Somewhere around 11 A.M.', 'score': 100},
        {'text': 'I barely sleep through the night, so the time I wake up varies.', 'score': 1000},
      ],
    },
    {
      'questionText': 'Q2. How do you feel about parties?',
      'answers': [
        {'text': 'They’re ok.', 'score': 1},
        {'text': 'Not really my cup of tea.', 'score': 10},
        {'text': 'I love them!', 'score': 100},
        {'text': 'I can’t stand them.', 'score': 1000},
      ],
    },
    {
      'questionText': ' Q3. What time do you usually go to bed?',
      'answers': [
        {'text': 'As early as I possibly can!', 'score': 1},
        {'text': 'About 9-10 P.M.', 'score': 10},
        {'text': 'No later than 12 A.M.', 'score': 100},
        {'text': 'Very late', 'score': 1000},
      ],
    },
    {
      'questionText': 'Q4. What do you do on the weekends?',
      'answers': [
        {'text': 'Try to recoup my sleep.', 'score': 1},
        {'text': 'Clean up the house and prepare my schedule for the next week.', 'score': 10},
        {'text': 'Meet up with my friends or family.', 'score': 100},
        {'text': 'Relax at home.', 'score': 1000},
      ],
    },
    {
      'questionText': 'Q5. Do you get enough sleep at night?',
      'answers': [
        {'text': 'No, I always want more!','score': 1},
        {'text': 'Not really.', 'score': 10},
        {'text': 'Yes, but mornings are still hard for me.', 'score': 100},
        {'text': 'Definitely not!', 'score': 1000},
      ],
    },
    {
      'questionText': 'Q6. What part of the day does your mind feel at its sharpest?',
      'answers': [
        {'text': 'Afternoon','score': 1},
        {'text': 'Morning.', 'score': 10},
        {'text': 'Evening', 'score': 100},
        {'text': 'Midday', 'score': 1000},
      ],
    },
    {
      'questionText': 'Q7. How often do you take naps?',
      'answers': [
        {'text': 'Very frequency','score': 1,},
        {'text': 'Quite rarely', 'score': 10},
        {'text': 'Almost never', 'score': 100},
        {'text': 'Often enough', 'score': 1000},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/navbar_icon/exam.png',
              width: 50,
              height: 50,),
            const SizedBox(width: 10,),
            const Text('Chronotype Test'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}