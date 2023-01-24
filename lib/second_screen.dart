import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  static const secondScreenRout = "secondScreen";
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // static const secondScreenRout = "secondScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Screen"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
