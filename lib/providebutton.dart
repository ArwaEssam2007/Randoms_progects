import 'package:flutter/cupertino.dart';
class buttonchange extends ChangeNotifier
{
  bool isOn = false;

  void toggle() {
    isOn = !isOn;
    notifyListeners();
  }

}