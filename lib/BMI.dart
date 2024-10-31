import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/providerbmi.dart';
import 'resultbmi.dart';

class BMI extends StatelessWidget {
  BMI({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<bmipro>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      pro.toggleGender(true);
                    },
                    child: Consumer<bmipro>(
                      builder: (context, provider, child) {
                        return Container(
                          color: provider.isMaleSelected ? Colors.blue : Colors.grey[800],
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 150, color: Colors.white),
                              Text("Male", style: TextStyle(fontSize: 30, color: Colors.white)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      pro.toggleGender(false);
                    },
                    child: Consumer<bmipro>(
                      builder: (context, provider, child) {
                        return Container(
                          color: provider.isFemaleSelected ? Colors.pink : Colors.grey[800],
                          child: Column(
                            children: [
                              Icon(Icons.female, size: 150, color: Colors.white),
                              Text("Female", style: TextStyle(fontSize: 30, color: Colors.white)),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Consumer<bmipro>(
              builder: (context, provider, child) {
                return Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Text("Height", style: TextStyle(fontSize: 24, color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${provider.height.toStringAsFixed(0)} cm", style: TextStyle(fontSize: 50, color: Colors.white)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Slider(
                          value: provider.height,
                          min: 100,
                          max: 220,
                          divisions: 120,
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.grey,
                          onChanged: (newValue) {
                            provider.updateHeight(newValue);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<bmipro>(
                  builder: (context, provider, child) {
                    return Container(
                      color: Colors.grey[800],
                      child: Column(
                        children: [
                          Text("Weight", style: TextStyle(fontSize: 20, color: Colors.white)),
                          Text("${provider.weight}", style: TextStyle(fontSize: 50, color: Colors.white)),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      provider.incrementWeight();
                                    },
                                    backgroundColor: Colors.yellow,
                                    child: Text("+", style: TextStyle(fontSize: 40)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      provider.decrementWeight();
                                    },
                                    backgroundColor: Colors.yellow,
                                    child: Text("-", style: TextStyle(fontSize: 40)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(width: 50),
                Consumer<bmipro>(
                  builder: (context, provider, child) {
                    return Container(
                      color: Colors.grey[800],
                      child: Column(
                        children: [
                          Text("Age", style: TextStyle(fontSize: 20, color: Colors.white)),
                          Text("${provider.age}", style: TextStyle(fontSize: 50, color: Colors.white)),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      provider.incrementAge();
                                    },
                                    backgroundColor: Colors.yellow,
                                    child: Text("+", style: TextStyle(fontSize: 40)),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      provider.decrementAge();
                                    },
                                    backgroundColor: Colors.yellow,
                                    child: Text("-", style: TextStyle(fontSize: 40)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            Consumer<bmipro>(
              builder: (context, provider, child) {
                return MaterialButton(
                  onPressed: () {
                    double bmi = provider.calculateBMI();
                    String category = provider.getBMICAtegoty(bmi);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(bmi: bmi, category: category),
                      ),
                    );
                  },
                  child: Text("Calculate", style: TextStyle(fontSize: 25)),
                  color: Colors.pink,
                  height: 70,
                  minWidth: 200,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}