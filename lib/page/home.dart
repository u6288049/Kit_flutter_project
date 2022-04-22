import 'package:flutter/material.dart';

import 'package:wake_me_refresh/page/test.dart';
import 'package:wake_me_refresh/page/calculator.dart';
import 'package:wake_me_refresh/page/chronotype.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pageWidget = <Widget>[
    const TestPage(),
    const CalculatorPage(),
    const ChronotypePage(),
  ];
  final List<BottomNavigationBarItem> _menuBar
  =  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/navbar_icon/exam.png',
        width: 50,
        height: 50,
        fit:BoxFit.fill,
      ),
      label: 'Test',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/navbar_icon/clock.png',
        width: 50,
        height: 50,
        fit:BoxFit.fill,
      ),
      label: 'Calculator',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'images/navbar_icon/book.png',
        width: 50,
        height: 50,
        fit:BoxFit.fill,
      ),
      label: 'Information',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}