import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  static const myExpansionTileRoute = "myExpansionTileRoute";
  const MyExpansionTile({super.key});

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile"),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Column(
          children: [
            ExpansionTile(
              title: Text("See more"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.leaderboard),
              textColor: Colors.blue,
              backgroundColor: Colors.lightGreenAccent,
              children: [
                ListTile(
                  title: Text("List tile Title"),
                ),
                ListTile(
                  title: Text("List tile Title"),
                ),
                ListTile(
                  title: Text("List tile Title"),
                ),
                ListBody(
                  children: [
                    Text("First"),
                    Text("Second"),
                    Text("Third"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
