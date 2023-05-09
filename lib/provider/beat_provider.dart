import 'dart:core';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_beat/screens/select_favorite/beat_favorite.dart';
import 'package:music_beat/screens/select_home/beat_home.dart';
import 'package:music_beat/screens/select_playlist/beat_playlist.dart';
import 'package:music_beat/screens/select_setting/beat_setting.dart';

import '../model/Beat_Model.dart';

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

  List<BeatModel> musicitems = [
    BeatModel(liked: false,songname: "Zingaat",songbg: "https://i.ytimg.com/vi/2gcsgfzqN8k/maxresdefault.jpg",songpath: Audio("assets/audio/zingaat.mp3")),
    BeatModel(liked: false,songname: "Zindagi Aa Raha Hu Main",songbg: "https://i.ytimg.com/vi/82eM7QRtoRo/maxresdefault.jpg",songpath: Audio("assets/audio/zindagi.mp3")),
    BeatModel(liked: false,songname: "Naacho Naacho",songbg: "https://m.timesofindia.com/photo/90780265/size-184745/90780265.jpg",songpath: Audio("assets/audio/naacho.mp3")),
  ];

  void openmusictab()
  {

  }

}