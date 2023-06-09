import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_beat/provider/beat_provider.dart';
import 'package:music_beat/screens/openmusic.dart';
import 'package:music_beat/screens/select_setting/beat_setting.dart';
import 'package:music_beat/splash/Pages/pages_beat.dart';
import 'package:music_beat/splash/Pages/pages_beat1.dart';
import 'package:music_beat/splash/Pages/pages_beat2.dart';
import 'package:music_beat/splash/Pages/pages_beat3.dart';
import 'package:music_beat/splash/splashprovider.dart';
import 'package:music_beat/splash/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'first_screen/first_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,systemNavigationBarColor: Colors.black87));
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>
          Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => BeatProvider(),),
          ChangeNotifierProvider(create: (context) => SplashProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
           initialRoute: "splash",
          routes: {
            "splash":(context) => SplashScreen(),
            "/": (context) => First_Screen(),
            "first": (context) => First_Screen(),
            "openmusic":(context) => Open_Music(),
            "setting":(context) => Beat_Setting(),
            "page":(context) => Pages_Beat(),
            "page1":(context) => Pages_Beat1(),
            "page2":(context) => Pages_Beat2(),
            "page3":(context) => Pages_Beat3(),

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
     ),
  );
}
