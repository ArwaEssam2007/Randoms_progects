import 'package:flutter/material.dart';

class ChangeColorExample extends StatefulWidget {
  @override
  _ChangeColorExampleState createState() => _ChangeColorExampleState();
}

class _ChangeColorExampleState extends State<ChangeColorExample> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("change color"),
      ),
      body: GestureDetector(
          onTap: () {

          if (backgroundColor == Colors.white) {
            setState(() {
              backgroundColor = Colors.blue;
            });
          } else {
            setState(() {
              backgroundColor = Colors.white;
            });
          }
        },
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text(
              "tap here",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}