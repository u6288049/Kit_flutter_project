import 'package:flutter/material.dart';

class SetWakePage extends StatefulWidget {
  static const routeName = '/setwake';

  const SetWakePage({Key? key}) : super(key: key);
  //final String getType;
  //const SetWakePage({Key? key, required this.getType}) : super(key: key);

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
    if (result != null) {
      setState(() {
        temp = 400;

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