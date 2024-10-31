import 'package:untitled2/componants/item.dart';
import 'package:untitled2/frutes.dart';
import 'package:flutter/material.dart';

class homee extends StatelessWidget {
  List<Fruits> fruitlist = [
    Fruits(image: "assite/blue.jpg", name: "Blue Barry", details: "its fresh Barry"),
    Fruits(image: "assite/graps.jpg", name: "Graps", details: "its fresh Graps"),
    Fruits(image: "assite/kiwi.jpg", name: "Kiwi", details: "its fresh Kiwi"),
    Fruits(image: "assite/banana.jpg", name: "Banana", details: "its fresh Banana"),
    Fruits(image: "assite/mango.jpg", name: "Mango", details: "its fresh Mango"),
    Fruits(image: "assite/roman.jpg", name: "Pomegranate", details: "its fresh Pomegranate"),
    Fruits(image: "assite/blue.jpg", name: "Blue Barry", details: "its fresh Barry"),
    Fruits(image: "site/graps.jpg", name: "Graps", details: "its fresh Graps"),
    Fruits(image: "assite/kiwi.jpg", name: "Kiwi", details: "its fresh Kiwi"),
    Fruits(image: "assite/banana.jpg", name: "Banana", details: "its fresh Banana"),
    Fruits(image: "assite/mango.jpg", name: "Mango", details: "its fresh Mango"),
    Fruits(image: "assite/roman.jpg", name: "Pomegranate", details: "its fresh Pomegranate"),
  ];

  homee({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fruits",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.separated(
          itemCount: fruitlist.length,
          itemBuilder: (context, index) {
            return item(fruit: fruitlist[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 40),
        ),
      ),
    );
  }
}
