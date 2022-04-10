import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  static const routeName = '/calsleep';

  const TestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TestPageState();
  }
}

class _TestPageState extends State<TestPage> {

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
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Wake up calculation Page'),
            ],
          )
      ),

    );
  }
}