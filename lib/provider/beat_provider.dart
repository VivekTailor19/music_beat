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
    BeatModel(liked: false, songname: "Zingaat",songpath: Audio("assets/audio/zingaat.mp3"),songbg:"https://1.bp.blogspot.com/-eGV7ztBjiKM/XB4rheA0BcI/AAAAAAAAQwk/Q9jdvivvYjI9Ql7hsIox3y2eimttGevogCLcBGAs/s1600/Zingaat%2B%2528Sairat%2529.jpg",),
    BeatModel(liked: false, songname: "Zindagi Aa Raha Hu Main",songpath: Audio("assets/audio/zindagi.mp3"),songbg: "https://4.bp.blogspot.com/-PwG9tHMSJZs/VUydzlPyGzI/AAAAAAAAFdE/zlPqn4g-TWU/w680/Zindagi%2Baa%2Brha%2Bhoon%2Bmain.jpg",),
    BeatModel(liked: false, songname: "Naacho Naacho",songpath: Audio("assets/audio/naacho.mp3"), songbg:"https://images.hindustantimes.com/img/2021/11/10/1600x900/RRR_1636548612389_1636548617309.PNG",),
    BeatModel(liked: false,songname: "Le Kachuko Le",songpath: Audio("assets/audio/le_kachuko.mp3"),songbg:"https://i.ytimg.com/vi/oDAMs9MJWJM/maxresdefault.jpg" ),
    BeatModel(liked: false,songname: "Machayenge",songpath: Audio("assets/audio/machayege.mp3"),songbg:"https://i.ytimg.com/vi/0SWeQzO78KE/maxresdefault.jpg" ),
    BeatModel(liked: false,songname: "Kalu Re Kundaru",songpath: Audio("assets/audio/kalu_re_kundaru.mp3"),songbg:"https://i.ytimg.com/vi/7eHzP2Q7y3s/maxresdefault.jpg" ),
    BeatModel(liked: false,songname: "Ekaj Chale... ",songpath: Audio("assets/audio/ekaj_chale_aadivasi.mp3"),songbg:"https://i.ytimg.com/vi/SWrTUmrGEqI/maxresdefault.jpg" ),
    BeatModel(liked: false,songname: "Aarambh He Prachand",songpath: Audio("assets/audio/aarambh_he_prachand.mp3"),songbg:"https://i.ytimg.com/vi/5xiN1AGEVSQ/hqdefault.jpg" ),
    BeatModel(liked: false,songname: "Aasma Ko Chhukar",songpath: Audio("assets/audio/aasma_ko_chhukar.mp3"),songbg:"https://i.ytimg.com/vi/uHz2ng84hFE/maxresdefault.jpg" ),
  ];
  List<BeatModel> likeitems = [];

  void openmusictab() {}

  AssetsAudioPlayer beatobject = AssetsAudioPlayer();

  int clickedmusic = 0;
  void initmus()
  {
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

    musictiming();
  }

  bool isplay = false;

  void beatplay()
  {
    isplay = false;
    beatobject.pause();
    notifyListeners();
  }

  void beatpause()
  {
    isplay = true;
    beatobject.play();
    notifyListeners();
  }

  void beatnext()
  {
    beatobject.next();

    if(clickedmusic<musicitems.length-1)
      {
        clickedmusic++;
      }
    notifyListeners();
  }

  void beatprevious()
  {
    beatobject.previous();
    if(clickedmusic>0)
    {
      clickedmusic--;
    }
    notifyListeners();
  }

  void beatclickwork()
  {
    if(beatobject.isPlaying.value == false)
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
