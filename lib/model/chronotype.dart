import 'package:flutter/material.dart';

class ChronotypeModel {
  static List<Chronotype> chronotype = [
    Chronotype(
      'Bear',
      'images/chronotype/bear.png',
      470,
      'Happy-go-lucky / Continuous flow of mellow energy / Extroverted',
      'Schedule meetings in the morning and try to finish up before late afternoon.',
    ),
    Chronotype(
      'Lion',
      'images/chronotype/lion.png',
      470,
      'Natural leaders / Charismatic / Early risers',
      'Know when it is quitting time and take time for yourself at the end of the day.',
    ),
    Chronotype(
      'Wolf',
      'images/chronotype/wolf.png',
      400,
      'Introspective / Highly creative / Introverted',
      'Get ahead on work at home while you are feeling most awake.',
    ),
    Chronotype(
      'Dolphin',
      'images/chronotype/dolphin.png',
      400,
      'Highly intelligent / Scatterbrained / Bursts of creative energy',
      'If needed, take breaks throughout the day to mentally reset and recharge.',
    ),
  ];
}

class Chronotype {
  String name;
  String image;
  int time;
  String trait;
  String productivity;

  Chronotype(
      this.name,
      this.image,
      this.time,
      this.trait,
      this.productivity,
      );
}