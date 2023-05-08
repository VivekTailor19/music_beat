import 'package:flutter/cupertino.dart';
import 'package:music_beat/screens/select_favorite/beat_favorite.dart';
import 'package:music_beat/screens/select_home/beat_home.dart';
import 'package:music_beat/screens/select_playlist/beat_playlist.dart';
import 'package:music_beat/screens/select_setting/beat_setting.dart';

class BeatProvider extends ChangeNotifier
{
  int selectedbottom = 0;

  void selectbottomitem(int selected)
  {
    selectedbottom = selected;
    notifyListeners();
  }

  List<Widget> screens = [
    Beat_Home(),
    Beat_Favorite(),
    Beat_Playlist(),
    Beat_Setting(),
  ];

}