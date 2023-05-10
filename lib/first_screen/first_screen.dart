import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/provider/beat_provider.dart';
import 'package:provider/provider.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {



  BeatProvider? beatT;
  BeatProvider? beatF;
  @override
  Widget build(BuildContext context) {

    beatT = Provider.of<BeatProvider>(context,listen: true);
    beatF = Provider.of<BeatProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(

         bottomNavigationBar:  BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.white,
            selectedFontSize: 12,
            unselectedFontSize: 10,
            selectedIconTheme: IconThemeData(size: 25),
            unselectedIconTheme: IconThemeData(size: 18),
            showUnselectedLabels: true,
            showSelectedLabels: true,

            currentIndex: beatT!.selectedbottom,
            onTap: (value) {
              int selected = value;
              beatF!.selectbottomitem(selected);

                },

                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),label: "Favorites"),
                  BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "Playlists"),
                  BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
                ],
              ),

        body: beatF!.screens[beatT!.selectedbottom],

            ),

    );
  }
}
// Container(
//   height: 60,
//   decoration: BoxDecoration(
//     color: Color(0xff181A20)54,
//     borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
//   ),
//   child: