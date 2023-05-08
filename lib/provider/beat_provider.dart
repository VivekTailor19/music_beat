import 'package:flutter/cupertino.dart';

class BeatProvider extends ChangeNotifier
{
  int selectedbottom = 0;

  void selectbottomitem(int selected)
  {
    selectedbottom = selected;
    notifyListeners();
  }

}