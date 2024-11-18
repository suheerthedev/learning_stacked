import 'package:flutter/material.dart';

class CounterService extends ChangeNotifier {
  int counter = 0;

  updateCounter() {
    counter++;
    print(counter);
    notifyListeners();
  }
}
