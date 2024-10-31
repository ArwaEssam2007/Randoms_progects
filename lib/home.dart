import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.home),
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcom Cindrella"),
              Image.network(
                "https://4.bp.blogspot.com/-jVpf4yRv6dI/WBZnsL51NRI/AAAAAAAACYs/fCxDsCSmvigi6mb9rQIez5rESRm29anXwCLcB/s1600/3.png",
                height: 500,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => login(
                            title: "hello",
                          )),
                    );
                  },
                  child: Text("Back to login")),
            ],
          )),
    );
  }
}
