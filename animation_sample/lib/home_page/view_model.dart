import 'dart:math';

import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  double angle = 0.0;
  void rotate45degree() {
    angle += pi/8;
    notifyListeners();
  }
}