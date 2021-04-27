import 'package:flutter/material.dart';

class ContadorModel {
  //int counter = 0;

  int incrementCounter(int index, int counter) {
    switch (index) {
      case 0:
        counter = 0;
        break;
      case 1:
        counter++;
        break;
      case 2:
        counter--;
        break;
    }
    return counter;
  }
}
