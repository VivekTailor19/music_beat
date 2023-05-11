import 'package:flutter/cupertino.dart';
import 'package:music_beat/splash/splashmodel.dart';

class SplashProvider extends ChangeNotifier
{
  List<String> pagestext = [
    "User friendly mp3 music player for your device",
    "We provide a better audio experience than others",
    "Listen to the best audio & music with MusicBeat now!"
  ];

  // List<SplashModel> pageitems = [
  //   SplashModel(pagebutton: "Next",pagestext: "User friendly mp3\nmusic player for\nyour device",pagesimg: "https://img.freepik.com/free-photo/attractive-smiling-happy-woman-dancing-listening-music-headphones-hipster-stylish-outfit-isolated-blue-studio-background-wearing-shorts-yellow-sweater_285396-7055.jpg?size=626&ext=jpg&ga=GA1.1.1819743535.1683709784&semt=ais"),
  //   SplashModel(pagebutton: "Next",pagestext: "We provide a better\naudio experience\nthan others",pagesimg:  "https://img.freepik.com/free-photo/attractive-smiling-happy-woman-dancing-listening-music-headphones-hipster-stylish-outfit-isolated-blue-studio-background-wearing-shorts-yellow-sweater_285396-7043.jpg?w=740&t=st=1683712103~exp=1683712703~hmac=9e12ea8712bd128d824b643dd649b42954477c604197ab8311fe92d0725036e9"),
  //   SplashModel(pagebutton: "Get Started",pagestext: "Listen to the best\naudio & music with\nMusicBeat now!",pagesimg: "https://img.freepik.com/free-photo/attractive-smiling-happy-woman-dancing-listening-music-headphones-hipster-stylish-outfit-isolated-blue-studio-background-wearing-shorts-yellow-sweater_285396-7042.jpg?size=626&ext=jpg" ),
  // ];

  List<SplashModel> pageitems = [
    SplashModel(pagebutton: "Next",pagestext: "User friendly mp3\nmusic player for\nyour device",pagesimg: "assets/images/splash/slides(1).png"),
    SplashModel(pagebutton: "Next",pagestext: "We provide a better\naudio experience\nthan others",pagesimg: "assets/images/splash/slides(2).png"),
    SplashModel(pagebutton: "Get Started",pagestext: "Listen to the best\naudio & music with\nMusicBeat now!",pagesimg: "assets/images/splash/slides(3).png" ),
  ];

  int pageno = 2;

  void changepage(int newpage)
  {
    pageno = newpage;
    notifyListeners();
  }
  List<String> nextroute = ["page1","page2","page3","first"];



}