import 'package:flutter/material.dart';

class MyPopUpMenu extends StatefulWidget {
  static const myPopupMenuRoute = "MyPopUpMenuRoute";
  const MyPopUpMenu({super.key});

  @override
  State<MyPopUpMenu> createState() => _MyPopUpMenuState();
}

class _MyPopUpMenuState extends State<MyPopUpMenu> {
  String first = "First";
  String second = "Second";
  String third = "Third";
  String selectedValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(first),
                value: first,
              ),
              PopupMenuItem(
                child: Text(second),
                value: second,
              ),
              PopupMenuItem(
                child: Text(third),
                value: third,
              ),
            ],
            onSelected: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "$selectedValue is Selected Value",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
