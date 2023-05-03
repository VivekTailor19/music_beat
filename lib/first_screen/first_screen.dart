import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
          ),
          child: BottomNavigationBar(

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded),label: "Favorites"),
              BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded),label: "Playlists"),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
            ],
          ),
        ),
      ),
    );
  }
}
