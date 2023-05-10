import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
