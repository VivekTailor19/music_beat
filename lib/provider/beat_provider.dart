import 'dart:core';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:music_beat/screens/select_favorite/beat_favorite.dart';
import 'package:music_beat/screens/select_home/beat_home.dart';
import 'package:music_beat/screens/select_playlist/beat_playlist.dart';
import 'package:music_beat/screens/select_setting/beat_setting.dart';

import '../model/Beat_Model.dart';

class BeatProvider extends ChangeNotifier {

  int selectedbottom = 0;

  void selectbottomitem(int selected) {
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
    BeatModel(
        liked: false,
        songname: "Zingaat",
        songbg:"https://1.bp.blogspot.com/-eGV7ztBjiKM/XB4rheA0BcI/AAAAAAAAQwk/Q9jdvivvYjI9Ql7hsIox3y2eimttGevogCLcBGAs/s1600/Zingaat%2B%2528Sairat%2529.jpg",
        songpath: Audio("assets/audio/zingaat.mp3")),
    BeatModel(
        liked: false,
        songname: "Zindagi Aa Raha Hu Main",
        songbg: "https://4.bp.blogspot.com/-PwG9tHMSJZs/VUydzlPyGzI/AAAAAAAAFdE/zlPqn4g-TWU/w680/Zindagi%2Baa%2Brha%2Bhoon%2Bmain.jpg",
        songpath: Audio("assets/audio/zindagi.mp3")),
    BeatModel(
        liked: false,
        songname: "Naacho Naacho",
        songbg:
            "https://images.hindustantimes.com/img/2021/11/10/1600x900/RRR_1636548612389_1636548617309.PNG",
        songpath: Audio("assets/audio/naacho.mp3")),
  ];
  List<BeatModel> likeitems = [];

  void openmusictab() {}

  AssetsAudioPlayer beatobject = AssetsAudioPlayer();

  int clickedmusic = 0;
  void initmus() {
    beatobject.open(
        Playlist(
         // audios: [Audio("assets/audio/zingaat.mp3"),Audio("assets/audio/zindagi.mp3"),Audio("assets/audio/naacho.mp3")],
          audios: musicitems.asMap().entries.map((e) => musicitems[e.key].songpath!).toList(),
          startIndex: clickedmusic
        ),
        showNotification: true,
        loopMode: LoopMode.playlist,
        autoStart: false
    );
  }

  bool isplay = false;

  void beatplay()
  {
    isplay = true;
    beatobject.play();
    notifyListeners();
  }

  void beatpause()
  {
    isplay = false;
    beatobject.pause();
    notifyListeners();
  }

  void beatnext()
  {
    beatobject.next();
  }
  void beatprevious()
  {
    beatobject.previous();
  }

  void beatclickwork()
  {
    if(beatobject.isPlaying.value)
      {
        beatpause();
      }
    else
      {
        beatplay();
      }
  }


  Duration musiclength = Duration(seconds: 0);

  void musictiming()
  {
    beatobject.current.listen((event)
    {
      musiclength = event!.audio.duration;
      notifyListeners();
    });

    print(musiclength);

  }

}
