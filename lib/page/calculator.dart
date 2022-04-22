import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:wake_me_refresh/page/setsleep.dart';
import 'package:wake_me_refresh/page/setwakeup.dart';

class CalculatorPage extends StatefulWidget {
  static const routeName = '/calculator';

  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CalculatorPageState();
  }
}

class _CalculatorPageState extends State<CalculatorPage> {

  String radioButtonItem = 'Bear';
  int id = 1;

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
              Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text('Your Chronotype : ' + radioButtonItem,
                      style: TextStyle(fontSize: 21))
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: 1,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Bear';
                        id = 1;
                      });
                    },
                  ),
                  Text(
                    'Bear',
                    style: new TextStyle(fontSize: 17.0),
                  ),

                  Radio(
                    value: 2,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Lion';
                        id = 2;
                      });
                    },
                  ),
                  Text(
                    'Lion',
                    style: new TextStyle(
                      fontSize: 17.0,
                    ),
                  ),

                  Radio(
                    value: 3,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Wolf';
                        id = 3;
                      });
                    },
                  ),
                  Text(
                    'Wolf',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                  Radio(
                    value: 4,
                    groupValue: id,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem = 'Dolphin';
                        id = 4;
                      });
                    },
                  ),
                  Text(
                    'Dolphin',
                    style: new TextStyle(fontSize: 17.0),
                  ),
                ],
              ),

              Image.asset(
                'images/navbar_icon/wakeup.png',
                width: 120,
                height: 120,
              ),
              Container(
                height: 52.0,
                margin: EdgeInsets.all(15),
                child: RaisedButton(
                  onPressed: () =>  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Builder(
                        builder: (context) {
                          //return const SetWakePage();
                          return SetWakePage(getType: id,);
                        }),
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xffffee58), Color(0xfffff176)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(28.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 220.0, minHeight: 52.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Set Your Sleep Time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'images/navbar_icon/sleep.png',
                width: 120,
                height: 120,
              ),
              Container(
                height: 52.0,
                margin: EdgeInsets.all(15),
                child: RaisedButton(
                  onPressed: () =>  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Builder(
                      builder: (context) {
                        return SetSleepPage(getType: id,);
                      })
                    ),
                  ),
                  padding: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xffffee58), Color(0xfffff176)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(28.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 220.0, minHeight: 52.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Set Your Wake-up Time",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}