
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/signup.dart';

class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.white),),
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
                  labelText: ("Email"),
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
            TextButton(
                onPressed: () {
                },
                child: Text("Forget password")),
            MaterialButton(
              onPressed: () {
              },
              child: Text("Login"),
              color: Colors.blue,
              height: 50,
              minWidth: 150,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New user"),
                TextButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: Text("Create Account")),
              ],
            )
              ],
        ),
      ),
    );
  }
}
