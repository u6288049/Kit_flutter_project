import 'package:flutter/material.dart';

class CalsleepPage extends StatefulWidget {
  static const routeName = '/calsleep';

  const CalsleepPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CalsleepPageState();
  }
}

class _CalsleepPageState extends State<CalsleepPage> {

  @override
  Widget build(BuildContext context) {
    var id;
    var radioButtonItem;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/navbar_icon/wakeup.png',
              width: 50,
              height: 50,),
            const SizedBox(width: 10,),
            const Text('Set Your Wake-up Time'),
          ],
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/navbar_icon/wakeup.png',
                width: 60,
                height: 60,
              ),
              const Text(
                'Input your Wake up Time :',
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 3,
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                ),
              ),

              Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    new BoxShadow(color: Colors.yellow.shade400, offset: new Offset(6.0, 6.0),),
                  ],
                ),
              ),
              Container(
                height: 30.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () => tempFunction(),
                  padding: EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xfff57f17), Color(0xfffdd835)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(28.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 80.0, minHeight: 30.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Calculate",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                'Your Bed time is :',
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 3,
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    new BoxShadow(color: Colors.yellow.shade400, offset: new Offset(6.0, 6.0),),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

  tempFunction() {}
}