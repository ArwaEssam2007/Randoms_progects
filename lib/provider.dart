import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  String _inputText = "";

  String  inputText (){
    return _inputText;
  }

  void updateInputText(String text) {
    _inputText = text;
    notifyListeners();
  }
}