import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_beat/provider/beat_provider.dart';
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
          routes: {
            "/": (context) => First_Screen(),
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
