import 'package:flutter/material.dart';
import 'package:flutter_application_1/BottomNavigationBar.dart';
import 'package:flutter_application_1/ExpansionTile.dart';
import 'package:flutter_application_1/PageView.dart';
import 'package:flutter_application_1/PopupMenuButton.dart';
import 'package:flutter_application_1/RangeSlider.dart';
import 'package:flutter_application_1/SliverAppBar.dart';
import 'package:flutter_application_1/TimePickerWiget.dart';
import 'package:flutter_application_1/WrapWidget.dart';
import 'package:flutter_application_1/choice_chip.dart';
import 'package:flutter_application_1/forth_screen.dart';
import 'package:flutter_application_1/third_screen.dart';
import 'dart:ffi';
import 'second_screen.dart';
import 'form.dart';
import "about_dialog.dart";

void main(List<String> args) {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScaffoldApp(),
      routes: {
        SecondScreen.secondScreenRout: (_) => SecondScreen(),
        ThirdScreen.thirdScreenRout: (context) => ThirdScreen(),
        ForthScreen.forthScreenRout: (context) => ForthScreen(),
        FormScreen.formScreenRout: (context) => FormScreen(),
        MyAboutDialog.myAboutDialogRout: (context) => MyAboutDialog(),
        MyChoicChip.choiceChipRoute: (context) => MyChoicChip(),
        MySliverAppBar.mySliverAppBarRoute: (context) => MySliverAppBar(),
        MyExpansionTile.myExpansionTileRoute: (context) => MyExpansionTile(),
        MyWrapWidget.myWrapWidgetRoute: (context) => MyWrapWidget(),
        MyTimePickerWidget.timePickerRoute: (context) => MyTimePickerWidget(),
        MyRangeSlider.myRangeSliderRoute: (context) => MyRangeSlider(),
        MyPopUpMenu.myPopupMenuRoute: (context) => MyPopUpMenu(),
        MyPageView.myPageViewRoute: (context) => MyPageView(),
        MyBottomNavigationBar.myBottomNavigationBarRoute: (context) =>
            MyBottomNavigationBar(),
      },
    );
  }
}

//////////////////////////////////////////////////
/////////////////////////////////////////////////

class MyScaffoldApp extends StatefulWidget {
  const MyScaffoldApp({super.key});

  @override
  State<MyScaffoldApp> createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {
  bool isTrue = false;
  String updatedText = "Hello Flutter";
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: number == 0
              ? MainAxisAlignment.start
              : number == 1
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: number == 0
                  ? MainAxisAlignment.start
                  : number == 1
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      // if (number == 2) {
                      //   number = 0;
                      // } else {
                      //   number = number + 1;
                      // }
                      // OR you can use shortcut of if.
                      number == 2 ? number = 0 : number = number + 1;
                    });
                  },
                  child: Text("Press"),
                )
              ],
            ),
            Container(
              height: 200,
              width: 200,
              // color: Colors.blueGrey,
              //child: Text("this is container"),
              padding: EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(
                  width: 1.5,
                  color: Colors.red,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  Text("this is container"),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid),
                    ),
                    child: Text("this is another container"),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(SecondScreen.secondScreenRout);
                    },
                    child: Text("Navigate to Second Screen"),
                    color: Colors.green,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(ThirdScreen.thirdScreenRout);
                    },
                    child: Text("Navigate to Third Screen"),
                    color: Colors.red,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(ForthScreen.forthScreenRout);
                    },
                    child: Text("Navigate to Forth1 Screen"),
                    color: Colors.cyan,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyAboutDialog.myAboutDialogRout);
                    },
                    child: Text("About Dialog"),
                    color: Colors.brown,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyChoicChip.choiceChipRoute);
                    },
                    child: Text("Choice Chip"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MySliverAppBar.mySliverAppBarRoute);
                    },
                    child: Text("Sliver app Bar"),
                  ),
                  MaterialButton(
                    color: Colors.indigo,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyExpansionTile.myExpansionTileRoute);
                    },
                    child: Text("Expansion Tile"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyWrapWidget.myWrapWidgetRoute);
                    },
                    child: Text("Wrap Widget"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyTimePickerWidget.timePickerRoute);
                    },
                    child: Text("Time Piker"),
                  ),
                  MaterialButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyRangeSlider.myRangeSliderRoute);
                    },
                    child: Text("Range Slider"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyPopUpMenu.myPopupMenuRoute);
                    },
                    child: Text("PopUp Menu"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(MyPageView.myPageViewRoute);
                    },
                    child: Text("Page View"),
                  ),
                  MaterialButton(
                    color: Colors.indigo,
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                          MyBottomNavigationBar.myBottomNavigationBarRoute);
                    },
                    child: Text("BottomNavigationBar"),
                  ),
                ],
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   height: 300,
            //   width: 300,
            //   margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            //   padding: EdgeInsets.all(10),
            //   child: Image.network(
            //       "https://www.thewowstyle.com/wp-content/uploads/2015/07/autunm-desktop-natural-hd-wallpapers.jpg"),
            // ),
            Container(
              alignment: Alignment.center,
              height: 300,
              width: 300,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              padding: EdgeInsets.all(20),
              child: Image.asset("images/imp_PTE.PNG"),
            ),
            Image.asset("images/imp_PTE.PNG"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SecondScreen.secondScreenRout);
              },
              icon: Icon(Icons.home),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdScreen.thirdScreenRout);
              },
              icon: Icon(Icons.book),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ForthScreen.forthScreenRout);
              },
              icon: Icon(Icons.share),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(FormScreen.formScreenRout);
              },
              icon: Icon(Icons.format_align_center),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
