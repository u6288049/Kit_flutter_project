import 'package:flutter/material.dart';

class SetSleepPage extends StatefulWidget {
  static const routeName = '/setsleep';

  const SetSleepPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SetSleepPageState();
  }
}

class _SetSleepPageState extends State<SetSleepPage> {
  String? _selectedTime;
  int _hr = 0;
  int _min = 0;
  int temp = 0;
  int temp2 = 0;

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
    if (result != null) {
      setState(() {
        temp = 400;
        _hr = result.hour.toInt() - (temp ~/ 60);
        _min = result.minute.toInt();
        if(_hr < 1) {
          _hr = result.hour.toInt() - (temp ~/ 60) + 24;
          if(_hr == 24) {
            _hr = 0;
          }
        }
        temp = temp % 60;
        if(_min < temp) {
          temp2 = _hr - 1;
          print(temp2);
          if(temp2 < 1) {
            _hr = _hr + 24 - 1;
          } else {
            _hr = _hr - 1;
          }
          if(_hr == 24) {
            _hr = 0;
          }
          _min = (_min + 60) - temp;
        } else {
          _min = _min - temp;
        }

        _selectedTime = TimeOfDay(hour: _hr, minute: _min).format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Sleep Time'),
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