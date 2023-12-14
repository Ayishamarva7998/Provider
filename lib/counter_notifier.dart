import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier{
   int _counter = 0;
   int get counter => _counter;
   void _increment(){
    _counter++;
    notifyListeners();
   }

}