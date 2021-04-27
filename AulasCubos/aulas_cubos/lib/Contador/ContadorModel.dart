import 'dart:convert';

import 'package:flutter/material.dart';

class ContadorModel {
  int _counter = 0;

  int get counter {
    return _counter;
  }

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

  // ignore: missing_return
  int incrementCounter2(int index) {
    switch (index) {
      case 0:
        _counter = 0;
        break;
      case 1:
        _counter = executor(add, counter, 1);
        break;
      case 2:
        _counter = executor(sub, counter, 1);
        break;
    }
    return _counter;
  }

  calculate(base) {
    // Counter store
    var count = 1;
    // Inner function - closure
    return () => print("Value is ${base + count++}");
  }

  int executor(operation, int i, int j) {
    return operation(i, j);
  }

  add(a, b) {
    return a + b;
  }

  sub(a, b) {
    return a - b;
  }
}
