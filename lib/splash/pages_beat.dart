import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/splash/splashprovider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Pages_Beat extends StatefulWidget {
  const Pages_Beat({Key? key}) : super(key: key);

  @override
  State<Pages_Beat> createState() => _Pages_BeatState();
}

class _Pages_BeatState extends State<Pages_Beat> {

  // SplashProvider? spT;
  // SplashProvider? spF;

  @override
  Widget build(BuildContext context) {

    // spT = Provider.of<SplashProvider>(context);
    // spF = Provider.of<SplashProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/setting/setting_offer.png",
              height: 100.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xff181A20),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Hello World",
                      style: TextStyle(fontSize: 35,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    AnimatedSmoothIndicator(

                      activeIndex: 0,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        spacing: 5,
                        activeDotColor: Colors.orange,
                        dotColor: Colors.white54,
                        dotHeight: 10,
                        dotWidth: 10,
                        radius: 5,
                      ),
                    ),

                    SizedBox(height: 20,),

                    Container(height: 60,width: 275,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          boxShadow: [BoxShadow(color: Colors.orange.shade200,blurRadius: 15)],
                          color: Colors.orange

                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
