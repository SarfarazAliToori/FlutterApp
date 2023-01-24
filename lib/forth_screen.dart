import 'dart:ffi';

import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  static const forthScreenRout = "forthScreenRout";
  const ForthScreen({super.key});

  @override
  State<ForthScreen> createState() => _ForthScreenState();
}

class _ForthScreenState extends State<ForthScreen> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forth Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  numberOfItems++;
                });
              },
              color: Colors.green,
              child: Text("Click Add Items"),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  numberOfItems == 0 ? numberOfItems = 1 : numberOfItems--;
                });
              },
              color: Colors.red,
              child: const Text("Click to Delete Items"),
            ),
            ListView.builder(
              physics: const ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemCount: numberOfItems,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // color: index % 2 == 0 ? Colors.lightBlue : Colors.lightGreen,
                  // OR
                  color: index.isEven ? Colors.lightBlue : Colors.lightGreen,
                  child: const ListTile(
                    title: Text("Hello Title"),
                    leading: Icon(Icons.abc),
                    trailing: Icon(Icons.disabled_by_default),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
