

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/screens/select_playlist/beat_playlist.dart';
import 'package:music_beat/screens/select_setting/beat_setting.dart';

class Beat_Home extends StatefulWidget {
  const Beat_Home({Key? key}) : super(key: key);

  @override
  State<Beat_Home> createState() => _Beat_HomeState();
}

class _Beat_HomeState extends State<Beat_Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text("Beat Box",style: TextStyle(fontSize: 25),),
            actions: [
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.search_rounded,size: 30,),
                ),
            ],

            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white70,
              unselectedLabelStyle: TextStyle(fontSize: 15),
              labelStyle: TextStyle(fontSize: 18),
              labelColor: Colors.orange,
              tabs: [
              Tab(text: "Suggested",),
              Tab(text: "Songs",),
              Tab(text: "Artists",),
              Tab(text: "Albums",),
              Tab(text: "Folders",),
            ],),
          ),

          body: TabBarView(
            children: [
              Beat_Playlist(),
              Beat_Playlist(),
              Beat_Setting(),
              Beat_Playlist(),
              Beat_Setting()

            ],
          ),
        ),
      ),
    );
  }
}
