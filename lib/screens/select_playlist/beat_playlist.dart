import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Beat_Playlist extends StatefulWidget {
  const Beat_Playlist({Key? key}) : super(key: key);

  @override
  State<Beat_Playlist> createState() => _Beat_PlaylistState();
}

class _Beat_PlaylistState extends State<Beat_Playlist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Playlist"),
        ),
      ),
    );
  }
}
