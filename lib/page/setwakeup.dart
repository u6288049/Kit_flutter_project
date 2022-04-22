import 'package:flutter/material.dart';
import 'package:wake_me_refresh/page/calculator.dart';

class SetWakePage extends StatefulWidget {
  static const routeName = '/setwake';

  //const SetWakePage({Key? key}) : super(key: key);
  final int getType;
  const SetWakePage({Key? key, required this.getType}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SetWakePageState();
  }
}

class _SetWakePageState extends State<SetWakePage> {
  String? _selectedTime;
  int _hr = 0;
  int _min = 0;
  int temp = 0;

  Future<void> _show() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  alwaysUse24HourFormat: true),
              child: child!);
        });

    if (result != null && widget.getType != 0) {
      setState(() {
        if(widget.getType == 1) {
          temp = 470;
        } else if(widget.getType == 2) {
          temp = 470;
        } else if(widget.getType == 3) {
          temp = 400;
        } else if(widget.getType == 4) {
          temp = 400;
        }

        //print(widget.getType);

        _min = result.minute.toInt() + temp;
        _hr = (result.hour.toInt()) + _min ~/ 60;
        if(_hr > 23) {
          _hr = _hr % 24;
        }
        _min = _min % 60;

        _selectedTime = TimeOfDay(hour: _hr, minute: _min).format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set your Sleep time'),
      ),
      body: Center(
        child: Text(
          _selectedTime != null ? _selectedTime! : 'No time selected!',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: _show, child: const Text('Show Time Picker')),
    );
  }
}