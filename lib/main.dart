import 'package:flutter/material.dart';

import 'package:wake_me_refresh/common/theme.dart';
import 'package:wake_me_refresh/page/calculator.dart';
import 'package:wake_me_refresh/page/chronotype.dart';
import 'package:wake_me_refresh/page/home.dart';
import 'package:wake_me_refresh/page/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'First Flutter App',
      initialRoute: '/',
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        TestPage.routeName: (context) => const TestPage(),
        CalculatorPage.routeName: (context) => const CalculatorPage(),
        ChronotypePage.routeName: (context) => const ChronotypePage(),
      },
    );
  }
}
