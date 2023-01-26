import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyChoicChip extends StatefulWidget {
  static const choiceChipRoute = "ChoiceChipRoute";
  const MyChoicChip({super.key});

  @override
  State<MyChoicChip> createState() => _MyChoicChipState();
}

class _MyChoicChipState extends State<MyChoicChip> {
  bool _mChoiceSelected = false;
  bool _mChoiceSelected1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choice Chip"),
      ),
      body: Center(
        child: Column(
          children: [
            ChoiceChip(
              // avatar: Image.asset("images/PTE.PNG"),
              avatar: FlutterLogo(),
              label: Text("My Choice chip"),
              selected: _mChoiceSelected,
              onSelected: (value) {
                setState(() {
                  _mChoiceSelected = value;
                });
              },
              selectedColor: Colors.green,
            ),
            ChoiceChip(
              // avatar: Image.asset("images/PTE.PNG"),
              avatar: FlutterLogo(),
              label: Text("My Choice chip 2"),
              selected: _mChoiceSelected1,
              onSelected: (value) {
                setState(() {
                  _mChoiceSelected1 = value;
                });
              },
              selectedColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
