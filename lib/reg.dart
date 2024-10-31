import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff272aff),
          leading: Icon(Icons.account_circle_sharp),
          title: Text("Registration"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.network(
                height: 200,
                "https://1.bp.blogspot.com/-DF9A5h5T7Kk/WBZnsxbVfDI/AAAAAAAACY8/jay1nGe9u-oerwq2agxadA975u739yLTACLcB/s1600/41.png"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.email),
                  labelText: ("Username"),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.lock),
                  labelText: ("Password"),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.lock),
                  labelText: ("Confirm Password"),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.phone),
                  labelText: ("Phone number"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
              child: Text("Sign Up"),
              color: Color(0xff1b83f9),
              height: 50,
              minWidth: 150,
            )
          ]),
        ));
  }
}
