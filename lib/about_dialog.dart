import 'package:flutter/material.dart';

class MyAboutDialog extends StatefulWidget {
  static const myAboutDialogRout = "MyAboutDialogRout";
  const MyAboutDialog({super.key});

  @override
  State<MyAboutDialog> createState() => _MyAboutDialogState();
}

class _MyAboutDialogState extends State<MyAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Dialog"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (context) => AboutDialog(
              //     applicationIcon: FlutterLogo(),
              //     applicationName: "flutter learning",
              //     applicationLegalese: "Not yet relearsed",
              //     applicationVersion: "0.1",
              //   ),
              // );
              myAoutDialogfun();
            },
            child: Text("Show About Dialog"),
          ),
          AboutListTile(
            applicationIcon: FlutterLogo(),
            applicationLegalese: "Legal app",
            applicationVersion: "0.9",
            applicationName: "Testing App",
            icon: Icon(Icons.flutter_dash),
            aboutBoxChildren: [
              Text("Hello World"),
              Text("Hello flutter"),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("data"))
        ],
      )),
    );
  }

  void myAoutDialogfun() {
    showDialog(
      context: context,
      builder: (context) => AboutDialog(
        applicationIcon: FlutterLogo(),
        applicationName: "flutter learning",
        applicationLegalese: "Not yet relearsed",
        applicationVersion: "0.1",
      ),
    );
  }
}
