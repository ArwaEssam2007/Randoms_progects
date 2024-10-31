import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Game()));
}
class Game extends StatelessWidget {
  Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe Game"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:3,
            childAspectRatio:1,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
          ),
          itemCount:9,
          itemBuilder: (context, index) {
            return MaterialButton(
              onPressed: () {

              },
              color: Colors.blue,
              child: Text(
                '',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}