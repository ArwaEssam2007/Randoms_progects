import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/reg.dart';

class login extends StatefulWidget {
  final String title;
  login({super.key, required this.title});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff1b83f9),
          leading: Icon(Icons.account_circle_sharp),
          title: Text("Log in"),
        ),
        body: Container(
            width: double.infinity,
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.network(
                  height: 200,
                  "https://1.bp.blogspot.com/-DF9A5h5T7Kk/WBZnsxbVfDI/AAAAAAAACY8/jay1nGe9u-oerwq2agxadA975u739yLTACLcB/s1600/41.png"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.email),
                    labelText: ("Email"),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.lock),
                    labelText: ("Password"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () {
                  if (email.text == "Arwa" && pass.text == "123") {
                    print("login Success");
                  } else {
                    print("not user found please try again");
                  }
                },
                child: Text("Login"),
                color: Color(0xff1b83f9),
                height: 50,
                minWidth: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text("Sign Up")),
                ],
              )
            ])));
  }
}
