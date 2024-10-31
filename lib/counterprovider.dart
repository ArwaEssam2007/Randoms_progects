import 'package:flutter/cupertino.dart';

class Counter_provider extends ChangeNotifier {
  int num =0;
  void increment(){
    num ++;
    notifyListeners();

  }
  void decrement(){
    num --;
    notifyListeners();
  }

}

