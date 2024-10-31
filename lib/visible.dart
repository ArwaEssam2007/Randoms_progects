import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class vis extends StatefulWidget {
  const vis({super.key});

  @override
  State<vis> createState() => _ButtonState();
}

class _ButtonState extends State<vis> {
  bool IsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toggle Button",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Visibility(
         visible: IsOn,
          child: Text(
             "I am visible",)),
            SizedBox(
              width: 200,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    IsOn = !IsOn; // Toggle the state
                  });

                },

                child: Text(
                  IsOn ? "Hide" : "Show",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
