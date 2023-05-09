import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_beat/provider/beat_provider.dart';
import 'package:music_beat/screens/openmusic.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'first_screen/first_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,systemNavigationBarColor: Colors.black87));
  runApp(
    
    Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => BeatProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //initialRoute: "openmusic",
          routes: {
            "/": (context) => First_Screen(),
            "openmusic":(context) => Open_Music()
          },
          theme: ThemeData(
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.black87,
                elevation: 0
              )
          ),
        ),
      ),
    ),
  );
}
