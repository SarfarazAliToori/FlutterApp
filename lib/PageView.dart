import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  static const myPageViewRoute = "MyPageViewRoute";
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "Page no 1",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                "Page no Two",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "Page no three",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
