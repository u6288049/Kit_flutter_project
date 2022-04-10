import 'package:flutter/material.dart';

class QuestionModel{
  static List<Question> questionlist = [
    Question(
      1,
      'What time do you naturally wake up?',
      [
        '8 or 9 A.M',
        'About 6 A.M or even earlier',
        'Somewhere around 11 A.M.',
        'I barely sleep through the night, so the time I wake up varies.',
      ],
    ),
    Question(
      2,
      'How do you feel about parties?',
      [
        'They’re ok.',
        'Not really my cup of tea.',
        'I love them!',
        'I can’t stand them.',
      ],
    ),
    Question(
      3,
      'What time do you usually go to bed?',
      [
        'As early as I possibly can!',
        'About 9-10 P.M.',
        'No later than 12 A.M.',
        'Very late',
      ],
    ),
    Question(
      4,
      'What do you do on the weekends?',
      [
        'Try to recoup my sleep.',
        'Clean up the house and prepare my schedule for the next week.',
        'Meet up with my friends or family.',
        'Relax at home.',
      ],
    ),
    Question(
      5,
      'Do you get enough sleep at night?',
      [
        'No, I always want more!',
        'Not really.',
        'Yes, but mornings are still hard for me.',
        'Definitely not!',
      ],
    ),
    Question(
      6,
      'What part of the day does your mind feel at its sharpest?',
      [
        'Afternoon',
        'Morning',
        'Evening',
        'Midday',
      ],
    ),
    Question(
      7,
      'How often do you take naps?',
      [
        'Very frequency',
        'Quite rarely',
        'Almost never',
        'Often enough',
      ],
    ),
  ];
}


class Question {
  int qid;
  String question;
  List<String> choice;

  Question(
      this.qid,
      this.question,
      this.choice,
      );
}

/*
* A: Bear
* B: Lion
* C: Wolf
* D: Dolphin
*/