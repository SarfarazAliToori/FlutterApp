import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const formScreenRout = "formScreenRount";
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _nameCon = TextEditingController();
  TextEditingController _emailCon = TextEditingController();
  String name = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                cursorColor: Colors.red,
                controller: _nameCon,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: _emailCon,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                "Name : $name and email: $email",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                setState(() {
                  //  name = _nameCon.text;
                  //  email = _emailCon.text;
                  _nameCon == null
                      ? name = "Plz type your name"
                      : name = _nameCon.text.toString().trim();
                  _emailCon == null
                      ? email = "Plz type your email"
                      : email = _emailCon.text.toString().trim();
                  _nameCon.clear();
                  _emailCon.clear();
                });
              },
              child: Text("Press"),
            ),
          ],
        ),
      ),
    );
  }
}
