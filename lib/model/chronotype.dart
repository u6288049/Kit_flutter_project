import 'package:flutter/material.dart';

class ChronotypeModel {
  static List<Chronotype> chronotype = [
    Chronotype(
      'Bear',
      'images/chronotype/bear.png',
      [
        Information(
          470,
          'Happy-go-lucky/ Continuous flow of mellow energy/ Extroverted',
          'Schedule meetings in the morning and try to finish up before late afternoon.',
        ),
      ],
    ),
    Chronotype(
      'Lion',
      'images/chronotype/lion.png',
      [
        Information(
          470,
          'Natural leaders/ Charismatic/ Early risers',
          'Know when it is quitting time and take time for yourself at the end of the day.',
        ),
      ],
    ),
    Chronotype(
      'Wolf',
      'images/chronotype/wolf.png',
      [
        Information(
          400,
          'Introspective/ Highly creative/ Introverted',
          'Get ahead on work at home while you are feeling most awake.',
        ),
      ],
    ),
    Chronotype(
      'Dolphin',
      'images/chronotype/dolphin.png',
      [
        Information(
          400,
          'Highly intelligent/ Scatterbrained/ Bursts of creative energy',
          'If needed, take breaks throughout the day to mentally reset and recharge.',
        ),
      ],
    ),
  ];
}

class Chronotype {
  String name;
  String image;
  List<Information> information;

  Chronotype(
      this.name,
      this.image,
      this.information
      );
}

class Information {
  int time;
  String trait;
  String productivity;

  Information(
      this.time,
      this.trait,
      this.productivity,
      );
}