import 'package:flutter/material.dart';

class MyTimePickerWidget extends StatefulWidget {
  static const timePickerRoute = "TimePickerRoute";
  const MyTimePickerWidget({super.key});

  @override
  State<MyTimePickerWidget> createState() => _MyTimePickerWidgetState();
}

class _MyTimePickerWidgetState extends State<MyTimePickerWidget> {
  TimeOfDay _time = TimeOfDay(hour: 12, minute: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${_time.hour.toString()} : ${_time.minute.toString()} ${_time.period.name}",
              style: TextStyle(fontSize: 60),
            ),
            FloatingActionButton(
              onPressed: () async {
                TimeOfDay? newTime =
                    await showTimePicker(context: context, initialTime: _time);
                if (newTime != null) {
                  setState(() {
                    _time = newTime;
                  });
                }
              },
              child: Icon(Icons.timer),
            ),
            Text(
              "Date :",
              style: TextStyle(fontSize: 50),
            ),
            FloatingActionButton(
              onPressed: () async {
                DateTime.now();
                Text(
                  "Date : ${DateTime.now()}",
                  style: TextStyle(fontSize: 50),
                );
              },
              child: Icon(Icons.date_range_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
