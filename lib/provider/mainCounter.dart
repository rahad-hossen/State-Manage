
import 'package:flutter/cupertino.dart';

class Counterprocess extends ChangeNotifier{

  var _Count = 0;
  int get Count_Total => _Count;

  void Increment(){
    _Count++;
    notifyListeners();
  }

  void Decrement(){
    _Count--;
    notifyListeners();
  }

}
