import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Beat_Favorite extends StatefulWidget {
  const Beat_Favorite({Key? key}) : super(key: key);

  @override
  State<Beat_Favorite> createState() => _Beat_FavoriteState();
}

class _Beat_FavoriteState extends State<Beat_Favorite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Favorite"),
        ),
      ),
    );
  }
}
