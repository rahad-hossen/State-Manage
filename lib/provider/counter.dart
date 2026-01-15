
import 'package:flutter/cupertino.dart';

class BalanceCalc extends ChangeNotifier{

  var _Total_Balance = 0;
  int get Total_Balance => _Total_Balance;

  void AddAmount({required int ADD_Blance}){
    _Total_Balance += ADD_Blance;
    notifyListeners();
  }
  void RemoveAmount({required int RemoveAmount}){
    _Total_Balance -= RemoveAmount;
    notifyListeners();
  }

}

