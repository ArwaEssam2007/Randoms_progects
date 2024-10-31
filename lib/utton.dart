import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/providebutton.dart';
import 'package:provider/provider.dart';


class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myprov = Provider.of<buttonchange>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toggle Button",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: SizedBox(
          width: 200,
          child: Consumer<Provider>(
            builder: (context, buttonState, child) {
              return MaterialButton(
                onPressed: () {
                  myprov.toggle();
                },
                child: Text(
                  myprov.isOn ? "ON" : "OFF",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                color: myprov.isOn ? Colors.green : Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}