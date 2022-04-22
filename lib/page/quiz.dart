import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:wake_me_refresh/page/answer.dart';
import 'package:wake_me_refresh/page/firsthome.dart';
import 'package:wake_me_refresh/page/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
  final auth = FirebaseAuth.instance;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
        ElevatedButton(
          child: Text("Sign out"),
          onPressed: (){
            auth.signOut().then((value){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context){
                    return FirstHomePage();
                  }));
            });
          },
        )
      ],
    );
  }
}
