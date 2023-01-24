import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const thirdScreenRout = "thirdScreenRout";
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.blueGrey,
            child: ListTile(
              leading: Icon(Icons.abc),
              title: Text("Main Title"),
              subtitle: Text("Sub Title"),
              trailing: Icon(Icons.display_settings),
            ),
          ),
          Container(
            color: Colors.lightBlue,
            child: ListTile(
              leading: Icon(Icons.abc),
              title: Text("Main Title"),
              subtitle: Text("Sub Title"),
              trailing: Icon(Icons.display_settings),
            ),
          ),
          Text("one"),
          Text("Two"),
          Text("Three"),
          Text("Four"),
        ],
      ),
    );
  }
}
