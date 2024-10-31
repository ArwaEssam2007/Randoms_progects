
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/loginn.dart';

import 'login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _loginnState();
}

class _loginnState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assite/banana.jpg" , height: 200,),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(

                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: ("User Name"),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: ("Password"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: ("Confairm Password"),
                ),
              ),
            ),
            SizedBox(height: 40,),
            MaterialButton(
              onPressed: () {
              },
              child: Text("Sign up"),
              color: Colors.blue,
              height: 50,
              minWidth: 150,
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("you allready have account"),
                TextButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginn()),
                      );
                    },
                    child: Text("Log in")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
