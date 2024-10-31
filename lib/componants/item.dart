import 'package:flutter/material.dart';
import 'package:untitled2/frutes.dart';

class item extends StatelessWidget {
   item({required this.fruit ,super.key});
   Fruits fruit;

  @override
  Widget build(BuildContext context) {

    return Container
      (

      child: Row (

        children: [
          CircleAvatar(
            radius: 31,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(fruit.image!),
            ),
          ),
          SizedBox(height: 10),
          Column (
            children: [
              Text(fruit.name!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Text(fruit.details!)
            ],
          )
        ],
      ),

    );
  }
}