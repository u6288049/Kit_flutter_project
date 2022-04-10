import 'package:flutter/material.dart';

class SetTimePage extends StatefulWidget {
  static const routeName = '/settime';

  const SetTimePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SetTimePageState();
  }
}

class _SetTimePageState extends State<SetTimePage> {
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
    if (result != null) {
      setState(() {
        _hr = result.hour;
        _min = result.minute;
        int temp = 0;
        print(_hr);
        print(_min);


        // +
        /*
        _min = result.minute + temp;
        _hr = result.hour + _min / 60;
        if(_hr > 23) {
          _hr = _hr % 24;
        }
        _min = _min % 60;
         */


        // -
        /*
        _hr = result.hour - temp / 60;
        if(_hr < 1) {
          _hr = (result.hour - temp / 60) + 24;
          if(_hr == 24) {
            _hr = 0;
          }
        }

        if(_min < temp % 60) {
          temp = _hr - 1;
          if(temp < 1) {
            _hr = ((result.hour - temp / 60) + 24) - 1;
            if(_hr == 24) {
              _hr = 0;
            }
          } else {
            _hr = _hr - 1;
          }
          _min = (_min.result.minute + 60) - (temp % 60);
        } else {
          _min = _min.result.minute - (temp % 60);
        }
         */

        _selectedTime = TimeOfDay(hour: _hr, minute: _min).format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Wake-up Time'),
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