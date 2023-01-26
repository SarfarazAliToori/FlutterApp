import 'package:flutter/material.dart';

class MyWrapWidget extends StatefulWidget {
  static const myWrapWidgetRoute = "myWrapWidgetRoute";
  const MyWrapWidget({super.key});

  @override
  State<MyWrapWidget> createState() => _MyWrapWidgetState();
}

class _MyWrapWidgetState extends State<MyWrapWidget> {
  @override
  Widget build(BuildContext context) {
    // first we define or set image custom widget
    Widget _image = Padding(
      padding: EdgeInsets.all(20),
      child: Image.asset(
        "images/imp_PTE.PNG",
        height: 100,
        width: 100,
        fit: BoxFit.fill,
      ),
    );

    // the bellow list is a list of widget of custom _image widget.
    List<Widget> _listOfImages = [
      _image,
      _image,
      _image,
      _image,
      _image,
      _image,
      _image
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Center(
        child: Wrap(
          direction: Axis.horizontal,
          // children: [],
          children: _listOfImages,
        ),
      ),
    );
  }
}
