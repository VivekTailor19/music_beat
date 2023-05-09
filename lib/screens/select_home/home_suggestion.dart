import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Suggestion extends StatefulWidget {
  const Home_Suggestion({Key? key}) : super(key: key);

  @override
  State<Home_Suggestion> createState() => _Home_SuggestionState();
}

class _Home_SuggestionState extends State<Home_Suggestion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Text("Suggestion",style: TextStyle(fontSize: 15),)),),);
  }
}
