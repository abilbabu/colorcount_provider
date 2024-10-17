import 'package:flutter/material.dart';

class HomescreenController with ChangeNotifier {
  Color currentcolor = Colors.black;
  static List colors = [
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.yellow,
    Colors.blue
  ];
  updateColor(Color newColor) {
    currentcolor = newColor;
    notifyListeners();
  }
}
