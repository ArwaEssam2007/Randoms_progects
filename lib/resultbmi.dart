import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
   double bmi;
   String category;

   ResultPage({Key? key, required this.bmi, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Result",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Result" , style: TextStyle(fontSize: 50 , color: Colors.white),),
              SizedBox(height: 50,),
              Container(
                color: Colors.grey[900],
                child: Column(
                  children: [
                    Text(
                      "Your BMI: ${bmi.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Category: $category",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),

                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton (
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(fontSize: 25),
                        ),
                        color: Colors.pink,
                        height: 70,
                        minWidth: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
