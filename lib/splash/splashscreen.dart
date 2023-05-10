import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:music_beat/splash/splashprovider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // SplashProvider? spT;
  // SplashProvider? spF;

  @override
  Widget build(BuildContext context) {

    // spT = Provider.of<SplashProvider>(context);
    // spF = Provider.of<SplashProvider>(context,listen: false);

    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, "page");
    } );

    return SafeArea(
      child: Scaffold(backgroundColor: Color(0xff181A20),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(height:70,width:70,
                    alignment:Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange
                    ),
                    child: Icon(Icons.music_note_rounded,color: Colors.white,size: 50,)),
                SizedBox(width: 10),
                Text("Music",style: TextStyle(fontSize: 40,color: Colors.orange.shade600),),
                Text("Beat",style: TextStyle(fontSize: 40,color: Colors.orange.shade400),),
              ],),
              SizedBox(height: 55,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase,

                  colors: [Colors.orange],
                  strokeWidth: 2,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
