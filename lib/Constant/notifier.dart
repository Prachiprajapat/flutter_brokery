import 'package:flutter/material.dart';

import 'Data.dart';

class SingleNotifier extends ChangeNotifier{
  String _currenthistory = fev[0];

  SingleNotifier();
  String get currentHistory => _currenthistory;

  updateCountry(String value){
    if(value!= _currenthistory){
      _currenthistory = value;
      notifyListeners();
    }
  }
}