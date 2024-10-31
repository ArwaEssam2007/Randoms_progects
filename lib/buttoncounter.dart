import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/counterprovider.dart';

class counter extends StatelessWidget {
   counter({super.key});

  @override
  int num =0;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
              builder:(BuildContext context ,Counter_provider value , Widget? child){
               return  Text("${value.num}" ,style: TextStyle(fontSize: 50 , color: Colors.blue),);
              },
              ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer(
               builder:(BuildContext context ,Counter_provider value , Widget? child){
                return FloatingActionButton(onPressed: (){
                  value.increment();
                } ,
                  child: Icon(Icons.add),
                );
               },
              ),
            ],
          ),
        ],
      ),
    );
  }
}