import 'package:flutter/material.dart';
import 'package:flutter_application_1/PageView.dart';
import 'package:flutter_application_1/SliverAppBar.dart';
import 'package:flutter_application_1/choice_chip.dart';

class MyBottomNavigationBar extends StatefulWidget {
  static const myBottomNavigationBarRoute = "BottomNavigationBarRoute";
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        body: Center(
          child: _currentIndex == 0
              ? Text("Home")
              : _currentIndex == 1
                  ? Text("Abc")
                  : Text("Dangerous"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Abc",
              icon: Icon(Icons.abc_outlined),
            ),
            BottomNavigationBarItem(
              label: "Dangerous",
              icon: Icon(Icons.dangerous),
            ),
          ],
          onTap: (value) {
            setState(() {
              _currentIndex = value;
              mNavigateToChoiceChip(context, _currentIndex);
            });
          },
        ),
      ),
      routes: {
        MyChoicChip.choiceChipRoute: (context) => MyChoicChip(),
      },
    );
  }
}

void mNavigateToChoiceChip(BuildContext context, int currentIndex) {
  // Navigator.pushNamed(context, MyChoicChip.choiceChipRoute);
  // if (currentIndex == 0) {
  //   Navigator.of(context).pushNamed(MyChoicChip.choiceChipRoute);
  // }
  currentIndex == 0
      ? Navigator.of(context).pushNamed(MyChoicChip.choiceChipRoute)
      : currentIndex == 1
          ? Navigator.of(context).pushNamed(MyPageView.myPageViewRoute)
          : Navigator.of(context).pushNamed(MySliverAppBar.mySliverAppBarRoute);
}
