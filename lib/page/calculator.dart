import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  static const routeName = '/calculator';

  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CalculatorPageState();
  }
}

class _CalculatorPageState extends State<CalculatorPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/navbar_icon/clock.png',
              width: 50,
              height: 50,),
            const SizedBox(width: 10,),
            const Text('Sleep Calculator'),
          ],
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/chronotype/bear.png',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'images/chronotype/lion.png',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'images/chronotype/wolf.png',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'images/chronotype/dolphin.png',
                width: 100,
                height: 100,
              ),
            ],
          )
      ),
    );
  }
}