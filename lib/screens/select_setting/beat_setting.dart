import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Beat_Setting extends StatefulWidget {
  const Beat_Setting({Key? key}) : super(key: key);

  @override
  State<Beat_Setting> createState() => _Beat_SettingState();
}

class _Beat_SettingState extends State<Beat_Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Setting"),
        ),
      ),
    );
  }
}
