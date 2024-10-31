import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class bmipro extends ChangeNotifier{

  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  double height = 195.0;
  int weight = 70;
  int age = 20;

  void toggleGender(bool isMale){
    isMaleSelected = isMale;
    isFemaleSelected = !isMale;
    notifyListeners();

  }
  void updateHeight(double newHeight)
  {
   height = newHeight;
   notifyListeners();
  }
  void incrementWeight( )
  {
    weight ++;
    notifyListeners();
  }
  void decrementWeight()
  {
    weight --;
    notifyListeners();
  }
  void incrementAge(){
    age ++;
    notifyListeners();
  }
  void decrementAge(){
    age --;
    notifyListeners();
  }
  double calculateBMI() {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }
  String getBMICAtegoty(double bmi){
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }
}
