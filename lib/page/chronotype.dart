import 'package:flutter/material.dart';

import 'package:wake_me_refresh/model/chronotype.dart';

class ChronotypePage extends StatefulWidget {
  static const routeName = '/information';

  const ChronotypePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChronotypePageState();
  }
}

class _ChronotypePageState extends State<ChronotypePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/navbar_icon/book.png',
              width: 50,
              height: 50,),
            const SizedBox(width: 10,),
            const Text('Chronotype Information'),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          child: getInformationBody(context)
      ),
    );
  }

  getInformationBody(BuildContext context) {
    return ListView.builder(
      itemCount: ChronotypeModel.chronotype.length.compareTo(0),
      itemBuilder: _getItemUI,
      padding: const EdgeInsets.all(0.0),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                ChronotypeModel.chronotype[index].image,
                fit: BoxFit.cover,
                width: 100.0,
              ),
              title: Text(
                ChronotypeModel.chronotype[index].name,
                style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(ChronotypeModel.chronotype[index].information[index].trait,
                        style: const TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal),
                    ),
                  ]
              ),
            ),
          ],
        )
    );
  }
}