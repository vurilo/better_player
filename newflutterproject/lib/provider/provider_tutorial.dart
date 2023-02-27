import 'package:flutter/material.dart';
abstract class CounterInterface{
  //method for increment value
  void increment();
  //method for decrement value
  void decrement();
  // get counter value
  int get getCounterValue;
}
class Counter extends ChangeNotifier implements CounterInterface{
  int _counter=0;

  @override
  void decrement() {
    // TODO: implement decrement
    _counter++;
    notifyListeners();
  }

  @override
  void increment() {
    // TODO: implement increment
    _counter--;
    notifyListeners();
  }
  @override
  int get getCounterValue=> _counter;
}