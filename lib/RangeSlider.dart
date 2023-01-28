import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  static const myRangeSliderRoute = "myRangeSliderRoute";
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues _rangeValues = RangeValues(0.4, 0.9);
  // RangeLabels _rangeLabels = RangeLabels(_rangeValues.start.toString(), _rangeValues.end.toString());
  @override
  Widget build(BuildContext context) {
    RangeLabels _rangeLabels =
        RangeLabels(_rangeValues.start.toString(), _rangeValues.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
      ),
      body: Center(
        child: Column(
          children: [
            RangeSlider(
              values: _rangeValues,
              divisions: 5,
              labels: _rangeLabels,
              onChanged: (newValue) {
                setState(() {
                  _rangeValues = newValue;
                });
              },
            ),
            Text(
              "Range: $_rangeValues",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
